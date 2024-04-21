#include <iostream>
#include <cmath>
#include <string.h>
#include "rnn.h"
#include "weight.h"

// �����������ĳ˷�
#define gemvm(res, a, b, row, col) \
{ \
	std::fill_n(res, row, 0.0); \
	for (int r = 0; r < row; r++) \
		for (int c = 0; c < col; c++) \
			res[r] += a[r][c] * b[c]; \
}

// ������sigmoid����
inline void sigmoid(float* res, float* a, int size)
{
	// ������������a��sigmoid����ֵ
	// �������洢������res��
	// TODO:
	for (int i = 0; i < size; ++i){
		res[i] = (1 / (1 + expf(-a[i])));
	}

}

// ������tanh����
inline void tanh(float* res, float* a, int size)
{
	// ������������a��˫�����к���ֵ
	// �������洢������res��
	// TODO:
	for (int i = 0; i < size; ++i){
		res[i] = (expf(a[i]) - expf(-a[i])) / (expf(a[i]) + expf(-a[i]));
	}
}

// �����ӷ�
inline void geva(float* res, float* a, int size)
{
	// ������res������a���
	// �������洢������res��
	// TODO:
	for (int i = 0; i < size; ++i){
		res[i] = res[i] + a[i];
	}
}

// ������Hadamard��
inline void hprod(float* res, float* a, float* b, int size)
{
	// ��������a������b��Hadamard��
	// �������洢������res��
	// TODO:
	for (int i = 0; i < size; ++i) {  
        res[i] = a[i] * b[i];  
    }  
}

// RNNǰ���Ƶ�(�����->LSTM->���Է�����)
#if CSIM_ON == 1
int infer(float input[IMG_SIZE])
#else
void infer(float input[IMG_SIZE], float res[CLASS_NUM])
#endif
{
	float gate_f[HIDDEN_DIM] = { 0.0 };		// LSTM cell�������ſ�������
	float gate_i[HIDDEN_DIM] = { 0.0 };		// LSTM cell�������ſ�������
	float stat_C[HIDDEN_DIM] = { 0.0 };		// LSTM cell����״̬
	float C_t[HIDDEN_DIM] = { 0.0 };		// LSTM cell��״̬
	float gate_o[HIDDEN_DIM] = { 0.0 };		// LSTM cell������ſ�������
	float h_t[HIDDEN_DIM] = { 0.0 };		// LSTM cell�����

	float vec_i[INPUT_DIM + HIDDEN_DIM];	// LSTM cell����������[x(t), h0(t-1)]
	float vec_tmp[HIDDEN_DIM];				// �м����
	float vec_tmp_s[HIDDEN_DIM];				// �м����

	// �����->���ز�(LSTM cell)
	for (int i = 0; i < INPUT_DIM; i++)
	{
		/*
		 * ͷ�ļ�weight.h�д洢��RNN�����Ȩֵ��ƫ��, �������¼���FP32����:
		 *
		 * 1. LSTM cell�����ŵ�Ȩֵ��ƫ��:
		 *   float Weight0_f[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_f[HIDDEN_DIM];
		 *
		 * 2. LSTM cell�����ŵ�Ȩֵ��ƫ��:
		 *   float Weight0_i[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_i[HIDDEN_DIM];
		 *
		 * 3. LSTM cell�����Ų����ĺ�ѡ״̬��Ȩֵ��ƫ��:
		 *   float Weight0_c[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_c[HIDDEN_DIM];
		 *
		 * 4. LSTM cell����ŵ�Ȩֵ��ƫ��:
		 *   float Weight0_o[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_o[HIDDEN_DIM];
		 *
		 * 5. ��������Է�������Ȩֵ��ƫ��:
		 *   float Weight_lc[CLASS_NUM][HIDDEN_DIM];
		 *   float Bias_lc[CLASS_NUM];
		 * */

		// ����LSTM cell0����������
		for (int j = 0; j < INPUT_DIM; j++)		vec_i[j] = input[i * INPUT_DIM + j];
		for (int j = 0; j < HIDDEN_DIM; j++)	vec_i[INPUT_DIM + j] = h_t[j];

		/*
		 * 1. ����LSTM cell�������ſ�������.
		 * */
		// TODO:
		for(int i = 0;i < HIDDEN_DIM;++i){
			vec_tmp[i] = 0;
			for(int j = 0; j < INPUT_DIM + HIDDEN_DIM; j++){
				vec_tmp[i] += Weight0_f[i][j] * vec_i[j];
			}
			vec_tmp[i] += Bias0_f[i];
		}
		
		sigmoid(gate_f,vec_tmp,HIDDEN_DIM);

		/*
		 * 2. ����LSTM cell�������ſ�������.
		 * */
		// TODO:
		for(int i = 0;i < HIDDEN_DIM;++i){
			vec_tmp[i] = 0;
			for(int j = 0; j < INPUT_DIM + HIDDEN_DIM; j++){
				vec_tmp[i] += Weight0_i[i][j] * vec_i[j];
			}
			vec_tmp[i] += Bias0_i[i];
		}
		
		sigmoid(gate_i,vec_tmp,HIDDEN_DIM);

		/*
		 * 3. ����LSTM cell�����Ų����ĺ�ѡ״̬����.
		 * */
		// TODO:
		for(int i = 0;i < HIDDEN_DIM;++i){
			vec_tmp[i] = 0;
			for(int j = 0; j < INPUT_DIM + HIDDEN_DIM; j++){
				vec_tmp[i] += Weight0_c[i][j] * vec_i[j];
			}
			vec_tmp[i] += Bias0_c[i];
		}

		tanh(stat_C, vec_tmp, HIDDEN_DIM);

		/*
		 * 4. ����LSTM cell������ſ�������.
		 * */
		// TODO:
		for(int i = 0;i < HIDDEN_DIM;++i){
			vec_tmp[i] = 0;
			for(int j = 0; j < INPUT_DIM + HIDDEN_DIM; j++){
				vec_tmp[i] += Weight0_o[i][j] * vec_i[j];
			}
			vec_tmp[i] += Bias0_o[i];
		}

		sigmoid(gate_o,vec_tmp,HIDDEN_DIM);

		/*
		 * 5. ����LSTM cell����״̬.
		 * */
		// TODO:
		for(int i = 0;i < HIDDEN_DIM;++i){
			vec_tmp[i] = 0;
		}
		hprod(vec_tmp, C_t, gate_f, HIDDEN_DIM);
		hprod(C_t, gate_i , stat_C, HIDDEN_DIM);
		geva(C_t, vec_tmp, HIDDEN_DIM);

		/*
		 * 6. ����LSTM cell�����.
		 * */
		// TODO:
		for(int i = 0;i < HIDDEN_DIM;++i){
			vec_tmp[i] = 0;
		}
		tanh(vec_tmp, C_t, HIDDEN_DIM);
		hprod(h_t, vec_tmp, gate_o, HIDDEN_DIM);
	}

#if CSIM_ON == 1
	float res[CLASS_NUM];
#endif

	// ���ز�(LSTM cell)->�����(���Է�����)
	gemvm(res, Weight_lc, h_t, CLASS_NUM, HIDDEN_DIM);
	geva(res, Bias_lc, CLASS_NUM);

#if CSIM_ON == 1
	int label = 0;
	for (int i = 1; i < CLASS_NUM; i++)
		if (res[i] > res[label]) label = i;

	return label;
#endif
}
