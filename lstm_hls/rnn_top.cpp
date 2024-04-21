#include "utils.h"
#include "rnn.h"

template <typename T, int U, int TI, int TD>
void mnist_lstm(stream_t in[IMG_SIZE], stream_t out[CLASS_NUM])
{
	float buf_in[IMG_SIZE], img_dat[IMG_SIZE], res[CLASS_NUM];

	// �����������ݲ����й�һ��
	for (int i = 0; i < IMG_SIZE; i++)
	{
#pragma HLS PIPELINE II=1
		buf_in[i] = pop_stream <T, U, TI, TD> (in[i]);
		img_dat[i] = buf_in[i] / 255;
	}

#if CSIM_ON == 0
	// RNNǰ���Ƶ�
	infer(img_dat, res);
#endif

	// �������
	for (int i = 0; i < CLASS_NUM; i++)
	{
#pragma HLS PIPELINE II=1
		out[i] = push_stream <T, U, TI, TD> (res[i], (i == CLASS_NUM - 1));
	}

	return;
}

// THIS IS THE TOP LEVEL DESIGN THAT WILL BE SYNTHESIZED
void LSTM_Top(stream_t in[IMG_SIZE], stream_t out[CLASS_NUM])
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=in
#pragma HLS INTERFACE axis port=out

	mnist_lstm <float, 1, 1, 1> (in, out);

	return;
}
