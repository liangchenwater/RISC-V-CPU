// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar 23 14:07:24 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/SCPU_ctrl.v
// Design      : SCPU_ctrl
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module SCPU_ctrl(OPcode, Fun3, Fun7, MIO_ready, ImmSel, ALUSrc_B, 
  MemtoReg, Jump, Branch, RegWrite, MemRW, ALU_Control, CPU_MIO)
/* synthesis syn_black_box black_box_pad_pin="OPcode[4:0],Fun3[2:0],Fun7,MIO_ready,ImmSel[1:0],ALUSrc_B,MemtoReg[1:0],Jump,Branch,RegWrite,MemRW,ALU_Control[2:0],CPU_MIO" */;
  input [4:0]OPcode;
  input [2:0]Fun3;
  input Fun7;
  input MIO_ready;
  output [1:0]ImmSel;
  output ALUSrc_B;
  output [1:0]MemtoReg;
  output Jump;
  output Branch;
  output RegWrite;
  output MemRW;
  output [2:0]ALU_Control;
  output CPU_MIO;
endmodule
