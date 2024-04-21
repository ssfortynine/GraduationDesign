#ifndef RNN_H
#define RNN_H

#define INPUT_DIM	28		// ����ά��
#define IMG_SIZE	INPUT_DIM * INPUT_DIM
#define LAYER_NUM   1       // ���ز�����/LSTM cell����
#define HIDDEN_DIM	128		// ���ز�ڵ���, �ֳ�num_units
#define CLASS_NUM	10		// ����ڵ���


// C���濪��
#define CSIM_ON 0		// ����ʱ��Ϊ1, �ۺ�ʱ��Ϊ0


#if CSIM_ON == 1
// ����C����ʹ�õ�ǰ���Ƶ���������
int infer(float input[IMG_SIZE]);
#else
// RNNǰ���Ƶ�(�����->LSTM0->���Է�����)
void infer(float input[IMG_SIZE], float res[CLASS_NUM]);
#endif

#endif
