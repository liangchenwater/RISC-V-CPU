// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 18 15:08:39 2021
// Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simCPU_MCPU_0_0_stub.v
// Design      : simCPU_MCPU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MCPU,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CPU_MIO, MIO_ready, MemRW, clk, rst, ALU_out, 
  Data_in, Data_out, PC_out, inst_in)
/* synthesis syn_black_box black_box_pad_pin="CPU_MIO,MIO_ready,MemRW,clk,rst,ALU_out[31:0],Data_in[31:0],Data_out[31:0],PC_out[31:0],inst_in[31:0]" */;
  output CPU_MIO;
  input MIO_ready;
  output MemRW;
  input clk;
  input rst;
  output [31:0]ALU_out;
  input [31:0]Data_in;
  output [31:0]Data_out;
  output [31:0]PC_out;
  input [31:0]inst_in;
endmodule
