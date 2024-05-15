#ifndef RNN_H
#define RNN_H

#define INPUT_DIM	5		// 输入维度
#define INPUT_LEN	20		// 输入维度
#define IMG_SIZE	INPUT_LEN * INPUT_DIM
#define LAYER_NUM   1       // 隐藏层数量/LSTM cell数量
#define HIDDEN_DIM	128		// 隐藏层节点数, 又称num_units
#define CLASS_NUM	1		// 输出节点数

#include <hls_stream.h>
#include <ap_int.h>
#include "utils.h"

// C仿真开关
#define CSIM_ON 0		// 仿真时设为1, 综合时设为0


#if CSIM_ON == 1
// 仅供C仿真使用的前向推导函数定义
int infer(float input[IMG_SIZE]);
#else
// RNN前向推导(输入层->LSTM0->线性分类器)
void infer(float input[IMG_SIZE], float res[CLASS_NUM]);
#endif


#endif
