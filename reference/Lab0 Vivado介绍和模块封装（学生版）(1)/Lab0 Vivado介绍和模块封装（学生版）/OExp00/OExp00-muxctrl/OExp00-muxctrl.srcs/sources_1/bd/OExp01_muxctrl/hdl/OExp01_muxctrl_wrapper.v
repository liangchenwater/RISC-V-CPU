//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Dec 28 19:52:32 2020
//Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
//Command     : generate_target OExp01_muxctrl_wrapper.bd
//Design      : OExp01_muxctrl_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module OExp01_muxctrl_wrapper
   (I0,
    I1,
    o_0,
    s,
    s1,
    s2);
  input [4:0]I0;
  input [4:0]I1;
  output [4:0]o_0;
  input [1:0]s;
  input s1;
  input [2:0]s2;

  wire [4:0]I0;
  wire [4:0]I1;
  wire [4:0]o_0;
  wire [1:0]s;
  wire s1;
  wire [2:0]s2;

  OExp01_muxctrl OExp01_muxctrl_i
       (.I0(I0),
        .I1(I1),
        .o_0(o_0),
        .s(s),
        .s1(s1),
        .s2(s2));
endmodule
