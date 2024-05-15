// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 15 15:59:43 2024
// Host        : DESKTOP-FKIQQDJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ljh/Desktop/mnist_lstm/mnist_lstm/mnist_lstm.gen/sources_1/bd/design_1/ip/design_1_LSTM_Top_0_5/design_1_LSTM_Top_0_5_stub.v
// Design      : design_1_LSTM_Top_0_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LSTM_Top,Vivado 2023.1" *)
module design_1_LSTM_Top_0_5(ap_clk, ap_rst_n, in_r_TVALID, in_r_TREADY, 
  in_r_TDATA, in_r_TDEST, in_r_TKEEP, in_r_TSTRB, in_r_TUSER, in_r_TLAST, in_r_TID, out_r_TVALID, 
  out_r_TREADY, out_r_TDATA, out_r_TDEST, out_r_TKEEP, out_r_TSTRB, out_r_TUSER, out_r_TLAST, 
  out_r_TID)
/* synthesis syn_black_box black_box_pad_pin="ap_rst_n,in_r_TVALID,in_r_TREADY,in_r_TDATA[31:0],in_r_TDEST[0:0],in_r_TKEEP[3:0],in_r_TSTRB[3:0],in_r_TUSER[0:0],in_r_TLAST[0:0],in_r_TID[0:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[31:0],out_r_TDEST[0:0],out_r_TKEEP[3:0],out_r_TSTRB[3:0],out_r_TUSER[0:0],out_r_TLAST[0:0],out_r_TID[0:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  input in_r_TVALID;
  output in_r_TREADY;
  input [31:0]in_r_TDATA;
  input [0:0]in_r_TDEST;
  input [3:0]in_r_TKEEP;
  input [3:0]in_r_TSTRB;
  input [0:0]in_r_TUSER;
  input [0:0]in_r_TLAST;
  input [0:0]in_r_TID;
  output out_r_TVALID;
  input out_r_TREADY;
  output [31:0]out_r_TDATA;
  output [0:0]out_r_TDEST;
  output [3:0]out_r_TKEEP;
  output [3:0]out_r_TSTRB;
  output [0:0]out_r_TUSER;
  output [0:0]out_r_TLAST;
  output [0:0]out_r_TID;
endmodule
