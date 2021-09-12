// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Feb 22 13:09:25 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/MUX2T1_5.v
// Design      : MUX2T1_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MUX2T1_5(I0, I1, s, o)
/* synthesis syn_black_box black_box_pad_pin="I0[4:0],I1[4:0],s,o[4:0]" */;
  input [4:0]I0;
  input [4:0]I1;
  input s;
  output [4:0]o;
endmodule
