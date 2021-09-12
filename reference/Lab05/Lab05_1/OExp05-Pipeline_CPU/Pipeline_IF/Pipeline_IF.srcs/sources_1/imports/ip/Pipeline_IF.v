// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May 16 18:05:04 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/Pipeline_IF.v
// Design      : Pipeline_IF
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Pipeline_IF(clk_IF, rst_IF, en_IF, PC_in_IF, PCSrc, PC_out_IF)
/* synthesis syn_black_box black_box_pad_pin="clk_IF,rst_IF,en_IF,PC_in_IF[31:0],PCSrc,PC_out_IF[31:0]" */;
  input clk_IF;
  input rst_IF;
  input en_IF;
  input [31:0]PC_in_IF;
  input PCSrc;
  output [31:0]PC_out_IF;
endmodule
