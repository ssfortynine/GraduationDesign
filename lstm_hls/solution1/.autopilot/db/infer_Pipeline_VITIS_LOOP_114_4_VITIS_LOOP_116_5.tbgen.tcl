set moduleName infer_Pipeline_VITIS_LOOP_114_4_VITIS_LOOP_116_5
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {infer_Pipeline_VITIS_LOOP_114_4_VITIS_LOOP_116_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ vec_i float 32 regular {array 133 { 1 3 } 1 1 }  }
	{ vec_tmp float 32 regular {array 128 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "vec_i", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vec_tmp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vec_i_address0 sc_out sc_lv 8 signal 0 } 
	{ vec_i_ce0 sc_out sc_logic 1 signal 0 } 
	{ vec_i_q0 sc_in sc_lv 32 signal 0 } 
	{ vec_tmp_address0 sc_out sc_lv 7 signal 1 } 
	{ vec_tmp_ce0 sc_out sc_logic 1 signal 1 } 
	{ vec_tmp_we0 sc_out sc_logic 1 signal 1 } 
	{ vec_tmp_d0 sc_out sc_lv 32 signal 1 } 
	{ grp_fu_298_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_298_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_298_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_298_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_298_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_371_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_371_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_371_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_371_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vec_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vec_i", "role": "address0" }} , 
 	{ "name": "vec_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_i", "role": "ce0" }} , 
 	{ "name": "vec_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec_i", "role": "q0" }} , 
 	{ "name": "vec_tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vec_tmp", "role": "address0" }} , 
 	{ "name": "vec_tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_tmp", "role": "ce0" }} , 
 	{ "name": "vec_tmp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_tmp", "role": "we0" }} , 
 	{ "name": "vec_tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec_tmp", "role": "d0" }} , 
 	{ "name": "grp_fu_298_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_298_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_298_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_371_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_371_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_371_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_371_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_371_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_371_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_371_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_371_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_114_4_VITIS_LOOP_116_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68112", "EstimateLatencyMax" : "68112",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Weight0_f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_f", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_114_4_VITIS_LOOP_116_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_f_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_8ns_15_4_1_U23", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	infer_Pipeline_VITIS_LOOP_114_4_VITIS_LOOP_116_5 {
		vec_i {Type I LastRead 0 FirstWrite -1}
		vec_tmp {Type O LastRead -1 FirstWrite 18}
		Weight0_f {Type I LastRead -1 FirstWrite -1}
		Bias0_f {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "68112", "Max" : "68112"}
	, {"Name" : "Interval", "Min" : "68112", "Max" : "68112"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vec_i { ap_memory {  { vec_i_address0 mem_address 1 8 }  { vec_i_ce0 mem_ce 1 1 }  { vec_i_q0 mem_dout 0 32 } } }
	vec_tmp { ap_memory {  { vec_tmp_address0 mem_address 1 7 }  { vec_tmp_ce0 mem_ce 1 1 }  { vec_tmp_we0 mem_we 1 1 }  { vec_tmp_d0 mem_din 1 32 } } }
}
