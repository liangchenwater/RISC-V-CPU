// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar 23 14:23:41 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/DataPath.v
// Design      : DataPath_wrapper
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module DataPath_wrapper(ALUSrc_B, ALU_Control, ALU_out, Branch, Data_in, 
  Data_out, ImmSel, Jump, MemtoReg, PC_out, RegWrite, clk, inst_field, rst)
/* synthesis syn_black_box black_box_pad_pin="ALUSrc_B,ALU_Control[2:0],ALU_out[31:0],Branch[0:0],Data_in[31:0],Data_out[31:0],ImmSel[1:0],Jump,MemtoReg[1:0],PC_out[31:0],RegWrite,clk,inst_field[31:0],rst" */;
  input ALUSrc_B;
  input [2:0]ALU_Control;
  output [31:0]ALU_out;
  input [0:0]Branch;
  input [31:0]Data_in;
  output [31:0]Data_out;
  input [1:0]ImmSel;
  input Jump;
  input [1:0]MemtoReg;
  output [31:0]PC_out;
  input RegWrite;
  input clk;
  input [31:0]inst_field;
  input rst;
endmodule
