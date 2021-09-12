// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb 26 18:55:28 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/srl32.v
// Design      : srl32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module srl32(A, B, res)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],res[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;
endmodule
