// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May 16 18:20:55 2021
// Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/IF_reg_ID.v
// Design      : IF_reg_ID
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module IF_reg_ID(clk_IFID, rst_IFID, en_IFID, PC_in_IFID, 
  inst_in_IFID, PC_out_IFID, inst_out_IFID)
/* synthesis syn_black_box black_box_pad_pin="clk_IFID,rst_IFID,en_IFID,PC_in_IFID[31:0],inst_in_IFID[31:0],PC_out_IFID[31:0],inst_out_IFID[31:0]" */;
  input clk_IFID;
  input rst_IFID;
  input en_IFID;
  input [31:0]PC_in_IFID;
  input [31:0]inst_in_IFID;
  output [31:0]PC_out_IFID;
  output [31:0]inst_out_IFID;
endmodule
