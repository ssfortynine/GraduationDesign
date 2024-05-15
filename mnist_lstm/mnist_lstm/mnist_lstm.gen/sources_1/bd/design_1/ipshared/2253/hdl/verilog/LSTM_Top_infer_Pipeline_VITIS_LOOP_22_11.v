// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module LSTM_Top_infer_Pipeline_VITIS_LOOP_22_11 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        vec_tmp_address0,
        vec_tmp_ce0,
        vec_tmp_q0,
        gate_i_address0,
        gate_i_ce0,
        gate_i_we0,
        gate_i_d0,
        grp_fu_298_p_din0,
        grp_fu_298_p_din1,
        grp_fu_298_p_opcode,
        grp_fu_298_p_dout0,
        grp_fu_298_p_ce,
        grp_fu_375_p_din0,
        grp_fu_375_p_din1,
        grp_fu_375_p_dout0,
        grp_fu_375_p_ce,
        grp_fu_379_p_din0,
        grp_fu_379_p_din1,
        grp_fu_379_p_dout0,
        grp_fu_379_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] vec_tmp_address0;
output   vec_tmp_ce0;
input  [31:0] vec_tmp_q0;
output  [6:0] gate_i_address0;
output   gate_i_ce0;
output   gate_i_we0;
output  [31:0] gate_i_d0;
output  [31:0] grp_fu_298_p_din0;
output  [31:0] grp_fu_298_p_din1;
output  [0:0] grp_fu_298_p_opcode;
input  [31:0] grp_fu_298_p_dout0;
output   grp_fu_298_p_ce;
output  [31:0] grp_fu_375_p_din0;
output  [31:0] grp_fu_375_p_din1;
input  [31:0] grp_fu_375_p_dout0;
output   grp_fu_375_p_ce;
output  [31:0] grp_fu_379_p_din0;
output  [31:0] grp_fu_379_p_din1;
input  [31:0] grp_fu_379_p_dout0;
output   grp_fu_379_p_ce;

reg ap_idle;
reg vec_tmp_ce0;
reg gate_i_ce0;
reg gate_i_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_state16_pp0_stage0_iter15;
wire    ap_block_state17_pp0_stage0_iter16;
wire    ap_block_state18_pp0_stage0_iter17;
wire    ap_block_state19_pp0_stage0_iter18;
wire    ap_block_state20_pp0_stage0_iter19;
wire    ap_block_state21_pp0_stage0_iter20;
wire    ap_block_state22_pp0_stage0_iter21;
wire    ap_block_state23_pp0_stage0_iter22;
wire    ap_block_state24_pp0_stage0_iter23;
wire    ap_block_state25_pp0_stage0_iter24;
wire    ap_block_state26_pp0_stage0_iter25;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln22_fu_89_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] i_4_cast_fu_101_p1;
reg   [63:0] i_4_cast_reg_136;
reg   [63:0] i_4_cast_reg_136_pp0_iter1_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter2_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter3_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter4_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter5_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter6_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter7_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter8_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter9_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter10_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter11_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter12_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter13_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter14_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter15_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter16_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter17_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter18_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter19_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter20_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter21_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter22_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter23_reg;
reg   [63:0] i_4_cast_reg_136_pp0_iter24_reg;
wire   [31:0] xor_ln23_fu_115_p2;
reg   [31:0] xor_ln23_reg_146;
wire   [31:0] bitcast_ln23_2_fu_121_p1;
reg   [31:0] tmp_1_reg_156;
reg   [31:0] add_i2_reg_161;
reg   [31:0] div_i1_reg_166;
wire    ap_block_pp0_stage0;
reg   [7:0] i_4_fu_36;
wire   [7:0] add_ln22_fu_95_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_i;
wire   [31:0] bitcast_ln23_fu_111_p1;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_done_reg = 1'b0;
end

LSTM_Top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter24_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln22_fu_89_p2 == 1'd0))) begin
            i_4_fu_36 <= add_ln22_fu_95_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_4_fu_36 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_i2_reg_161 <= grp_fu_298_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        div_i1_reg_166 <= grp_fu_375_p_dout0;
        i_4_cast_reg_136_pp0_iter10_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter9_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter11_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter10_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter12_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter11_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter13_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter12_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter14_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter13_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter15_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter14_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter16_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter15_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter17_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter16_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter18_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter17_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter19_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter18_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter20_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter19_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter21_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter20_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter22_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter21_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter23_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter22_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter24_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter23_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter2_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter1_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter3_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter2_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter4_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter3_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter5_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter4_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter6_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter5_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter7_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter6_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter8_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter7_reg[7 : 0];
        i_4_cast_reg_136_pp0_iter9_reg[7 : 0] <= i_4_cast_reg_136_pp0_iter8_reg[7 : 0];
        tmp_1_reg_156 <= grp_fu_379_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_4_cast_reg_136_pp0_iter1_reg[7 : 0] <= i_4_cast_reg_136[7 : 0];
        xor_ln23_reg_146 <= xor_ln23_fu_115_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln22_fu_89_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_4_cast_reg_136[7 : 0] <= i_4_cast_fu_101_p1[7 : 0];
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln22_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter24_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i = 8'd0;
    end else begin
        ap_sig_allocacmp_i = i_4_fu_36;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gate_i_ce0 = 1'b1;
    end else begin
        gate_i_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gate_i_we0 = 1'b1;
    end else begin
        gate_i_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        vec_tmp_ce0 = 1'b1;
    end else begin
        vec_tmp_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln22_fu_95_p2 = (ap_sig_allocacmp_i + 8'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter25 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bitcast_ln23_2_fu_121_p1 = xor_ln23_reg_146;

assign bitcast_ln23_fu_111_p1 = vec_tmp_q0;

assign gate_i_address0 = i_4_cast_reg_136_pp0_iter24_reg;

assign gate_i_d0 = div_i1_reg_166;

assign grp_fu_298_p_ce = 1'b1;

assign grp_fu_298_p_din0 = tmp_1_reg_156;

assign grp_fu_298_p_din1 = 32'd1065353216;

assign grp_fu_298_p_opcode = 2'd0;

assign grp_fu_375_p_ce = 1'b1;

assign grp_fu_375_p_din0 = 32'd1065353216;

assign grp_fu_375_p_din1 = add_i2_reg_161;

assign grp_fu_379_p_ce = 1'b1;

assign grp_fu_379_p_din0 = 32'd0;

assign grp_fu_379_p_din1 = bitcast_ln23_2_fu_121_p1;

assign i_4_cast_fu_101_p1 = ap_sig_allocacmp_i;

assign icmp_ln22_fu_89_p2 = ((ap_sig_allocacmp_i == 8'd128) ? 1'b1 : 1'b0);

assign vec_tmp_address0 = i_4_cast_fu_101_p1;

assign xor_ln23_fu_115_p2 = (bitcast_ln23_fu_111_p1 ^ 32'd2147483648);

always @ (posedge ap_clk) begin
    i_4_cast_reg_136[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter1_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter2_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter3_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter4_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter5_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter6_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter7_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter8_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter9_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter10_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter11_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter12_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter13_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter14_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter15_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter16_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter17_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter18_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter19_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter20_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter21_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter22_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter23_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    i_4_cast_reg_136_pp0_iter24_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //LSTM_Top_infer_Pipeline_VITIS_LOOP_22_11
