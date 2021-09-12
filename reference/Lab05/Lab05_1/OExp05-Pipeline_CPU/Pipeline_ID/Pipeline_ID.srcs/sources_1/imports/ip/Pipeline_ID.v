// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May 16 18:18:34 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/Pipeline_ID.v
// Design      : Pipeline_ID
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Pipeline_ID(clk_ID, rst_ID, RegWrite_in_ID, Rd_addr_ID, 
  Wt_data_ID, Inst_in_ID, Rd_addr_out_ID, Rs1_out_ID, Rs2_out_ID, Imm_out_ID, ALUSrc_B_ID, 
  ALU_control_ID, Branch_ID, BranchN_ID, MemRW_ID, Jump_ID, MemtoReg_ID, RegWrite_out_ID)
/* synthesis syn_black_box black_box_pad_pin="clk_ID,rst_ID,RegWrite_in_ID,Rd_addr_ID[4:0],Wt_data_ID[31:0],Inst_in_ID[31:0],Rd_addr_out_ID[31:0],Rs1_out_ID[31:0],Rs2_out_ID[31:0],Imm_out_ID[31:0],ALUSrc_B_ID,ALU_control_ID[2:0],Branch_ID,BranchN_ID,MemRW_ID,Jump_ID,MemtoReg_ID[1:0],RegWrite_out_ID" */;
  input clk_ID;
  input rst_ID;
  input RegWrite_in_ID;
  input [4:0]Rd_addr_ID;
  input [31:0]Wt_data_ID;
  input [31:0]Inst_in_ID;
  output [31:0]Rd_addr_out_ID;
  output [31:0]Rs1_out_ID;
  output [31:0]Rs2_out_ID;
  output [31:0]Imm_out_ID;
  output ALUSrc_B_ID;
  output [2:0]ALU_control_ID;
  output Branch_ID;
  output BranchN_ID;
  output MemRW_ID;
  output Jump_ID;
  output [1:0]MemtoReg_ID;
  output RegWrite_out_ID;
endmodule
