#include "rnn.h"


template <typename T, int U, int TI, int TD>
void mnist_lstm(hls::stream<stream_t> &in, hls::stream<stream_t> &out)
{
	float buf_in[IMG_SIZE], res[CLASS_NUM];


	for (int i = 0; i < IMG_SIZE; i++)
	{
#pragma HLS PIPELINE II=1
		buf_in[i] = pop_stream <T, U, TI, TD> (in.read());
	}

#if CSIM_ON == 0

	infer(buf_in, res);
#endif


	for (int i = 0; i < CLASS_NUM; i++)
	{
#pragma HLS PIPELINE II=1
		out.write(push_stream <T, U, TI, TD> (res[i], (i == CLASS_NUM - 1)));
	}

	return;
}

// THIS IS THE TOP LEVEL DESIGN THAT WILL BE SYNTHESIZED
void LSTM_Top(hls::stream<stream_t> &in, hls::stream<stream_t> &out)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=in
#pragma HLS INTERFACE axis port=out

	mnist_lstm <float, 1, 1, 1> (in, out);

	return;
}
