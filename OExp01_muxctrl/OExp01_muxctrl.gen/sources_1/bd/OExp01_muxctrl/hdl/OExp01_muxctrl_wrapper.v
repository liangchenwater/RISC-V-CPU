//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Mar  8 14:16:06 2021
//Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
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
