############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project lstm_hls
set_top LSTM_Top
add_files lstm_hls/rnn.cpp
add_files lstm_hls/rnn.h
add_files lstm_hls/rnn_top.cpp
add_files lstm_hls/utils.h
add_files lstm_hls/weight.h
add_files -tb lstm_hls/main.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu5eg-sfvc784-1-e}
create_clock -period 10 -name default
config_cosim -tool xsim -trace_level port -wave_debug
config_export -format ip_catalog -rtl verilog
source "./lstm_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level port -tool xsim
export_design -rtl verilog -format ip_catalog
