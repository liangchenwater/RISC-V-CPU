//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Jun 28 14:03:20 2021
//Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
//Command     : generate_target simCPU_wrapper.bd
//Design      : simCPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module simCPU_wrapper
   (INT0,
    clk,
    rst);
  input INT0;
  input clk;
  input rst;

  wire INT0;
  wire clk;
  wire rst;

  simCPU simCPU_i
       (.INT0(INT0),
        .clk(clk),
        .rst(rst));
endmodule
