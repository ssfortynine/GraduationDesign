#include <cstdio>
#include <ctime>
#include <cmath>
#include <string.h>
#include "rnn.h"
#include "utils.h"

typedef unsigned char byte;

FILE* data_fp = nullptr;
FILE* label_fp = nullptr;

int img_row = -1;
int img_col = -1;
int img_num = -1;

float* buf = nullptr;		// ͼƬ����
byte* label = nullptr;		// ��ǩ����


int mnist_app_set(const char* data_path, const char* label_path);
float mnist_app_test_all();
void mnist_app_end();

int main()
{
    int t = mnist_app_set("D:/BaiduNetdiskDownload/GraduationDesign/lstm_hls/lstm/data/t10k-images.idx3-ubyte",
    						"D:/BaiduNetdiskDownload/GraduationDesign/lstm_hls/lstm/data/t10k-labels.idx1-ubyte");
    if (t == -1) return 0;

    printf("Testing all images...\n");
    clock_t p0 = clock();
    double acc = mnist_app_test_all();
    clock_t p1 = clock();
    printf("%.3lfs usded, acc = %lf\n", (double)(p1 - p0) / CLOCKS_PER_SEC, acc);
    printf("Test done.\n");

    mnist_app_end();
    
    return 0;
}

// С��ת���
inline int transform(int num)
{
	int a = num & 0x000000FF;
	int b = num & 0x0000FF00;
	int c = num & 0x00FF0000;
	int d = num & 0xFF000000;

	return (a << 24) + (b << 8) + (c >> 8) + (d >> 24);
}

int mnist_app_set(const char* data_path, const char* label_path)
{
	data_fp = fopen(data_path, "rb");
	if (data_fp == nullptr)
	{
		printf("Failed to open data file.\n");
		return -1;
	}

	label_fp = fopen(label_path, "rb");
	if (label_fp == nullptr)
	{
		printf("Failed to open label file.\n");
		return -1;
	}

	int num_img, num_label;
	// ��ͼƬ��
	fread(&num_img, 1, sizeof(int), data_fp);
	fread(&num_img, 1, sizeof(int), data_fp);
	num_img = transform(num_img);
	// ����ǩ��
	fseek(label_fp, 4, SEEK_SET);
	fread(&num_label, 1, sizeof(int), label_fp);
	num_label = transform(num_label);

	if (num_img != num_label) printf("Warning: num_img != num_label\n");
	img_num = num_img < num_label ? num_img : num_label;

	// ��ͼƬ��С
	fread(&img_row, 1, sizeof(int), data_fp);	img_row = transform(img_row);
	fread(&img_col, 1, sizeof(int), data_fp);	img_col = transform(img_col);

	// ����ռ�
	buf = new float[img_row * img_col];
	label = new byte[img_num];

	// ����ǩ����
	fread(label, img_num, sizeof(byte), label_fp);

	return 0;
}

inline void normalize(float* out, byte* in, int size, int max_val)
{
	for (int i = 0; i < size; i++)
		out[i] = (float)in[i] / max_val;
}

inline int mnist_app_get_label(int indx)
{
	return (int)label[indx];
}
float mnist_app_test_all()
{
	int match_num = 0;

	fseek(data_fp, 16, SEEK_SET);
	byte* tmp = new byte[img_row * img_col];
	float res_vec[10];
	hls::stream<stream_t> in("in");
	hls::stream<stream_t> out("out");
	for (int i = 0; i < img_num; i++)
	{

		// ��ȡһ��ͼƬ
		fread(tmp, sizeof(byte), img_row * img_col, data_fp);
//
//		// ��ͼƬ����ֵ���й�һ��
		normalize(buf, tmp, img_row * img_col, 255);
//
//
//		int net_output = infer(buf);
//#pragma HLS PIPELINE II=1
		in.write(push_stream <float, 1, 1, 1> (buf,true));
		LSTM_Top (in, out);
		while(!out.empty()){
//#pragma HLS PIPELINE II=1
			if ((pop_stream <int, 1, 1, 1> (out.read())) == mnist_app_get_label(i)) match_num++;
		}
	}
//	LSTM_Top (in, out);
//	for (int i = 0; i < img_num; i++)
//	{
//		while(!out.empty()){
//		if ((pop_stream <float, 1, 1, 1> (out.read())) == mnist_app_get_label(i)) match_num++;
//		}
//	}
	delete tmp;
	return (float)match_num / img_num;
}

void mnist_app_end()
{
	if (data_fp != nullptr)
		fclose(data_fp);

	if (label_fp != nullptr)
		fclose(label_fp);

	if (buf != nullptr)
		delete buf;

	if (label != nullptr)
		delete label;
}
