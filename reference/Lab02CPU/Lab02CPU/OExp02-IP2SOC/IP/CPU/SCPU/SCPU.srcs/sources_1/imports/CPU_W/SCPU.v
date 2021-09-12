// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Mar  8 21:39:47 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/SCPU.v
// Design      : SCPU_wrapper
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module SCPU_wrapper(Addr_out, CPU_MIO, Data_in, Data_out, MIO_ready, 
  MemRW, PC_out, clk, inst_in, rst)
/* synthesis syn_black_box black_box_pad_pin="Addr_out[31:0],CPU_MIO,Data_in[31:0],Data_out[31:0],MIO_ready,MemRW,PC_out[31:0],clk,inst_in[31:0],rst" */;
  output [31:0]Addr_out;
  output CPU_MIO;
  input [31:0]Data_in;
  output [31:0]Data_out;
  input MIO_ready;
  output MemRW;
  output [31:0]PC_out;
  input clk;
  input [31:0]inst_in;
  input rst;
endmodule
