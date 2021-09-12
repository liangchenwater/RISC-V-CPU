//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Jun 27 14:54:22 2021
//Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
//Command     : generate_target simPipeCPU_wrapper.bd
//Design      : simPipeCPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module simPipeCPU_wrapper
   (clk,
    rst);
  input clk;
  input rst;

  wire clk;
  wire rst;

  simPipeCPU simPipeCPU_i
       (.clk(clk),
        .rst(rst));
endmodule
