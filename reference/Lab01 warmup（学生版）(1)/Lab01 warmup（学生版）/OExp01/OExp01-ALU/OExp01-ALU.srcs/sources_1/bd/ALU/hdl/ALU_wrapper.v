//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue May 18 20:32:49 2021
//Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
//Command     : generate_target ALU_wrapper.bd
//Design      : ALU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU_wrapper
   (A,
    ALU_operation,
    B,
    o_0,
    res);
  input [31:0]A;
  input [2:0]ALU_operation;
  input [31:0]B;
  output o_0;
  output [31:0]res;

  wire [31:0]A;
  wire [2:0]ALU_operation;
  wire [31:0]B;
  wire o_0;
  wire [31:0]res;

  ALU ALU_i
       (.A(A),
        .ALU_operation(ALU_operation),
        .B(B),
        .o_0(o_0),
        .res(res));
endmodule
