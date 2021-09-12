// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb 26 17:39:21 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/MUX4T1_32.v
// Design      : MUX4T1_32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MUX4T1_32(s, I0, I1, I2, I3, o)
/* synthesis syn_black_box black_box_pad_pin="s[1:0],I0[31:0],I1[31:0],I2[31:0],I3[31:0],o[31:0]" */;
  input [1:0]s;
  input [31:0]I0;
  input [31:0]I1;
  input [31:0]I2;
  input [31:0]I3;
  output [31:0]o;
endmodule
