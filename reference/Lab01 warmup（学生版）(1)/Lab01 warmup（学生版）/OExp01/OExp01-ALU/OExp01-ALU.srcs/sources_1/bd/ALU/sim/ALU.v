//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue May 18 20:32:49 2021
//Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
//Command     : generate_target ALU.bd
//Design      : ALU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ALU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ALU,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "ALU.hwdef" *) 
module ALU
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

  wire [31:0]A_0_1;
  wire [31:0]B_0_1;
  wire [2:0]Din_0_1;
  wire [31:0]MUX8T1_32_0_o;
  wire [31:0]SignalExt_32_0_So;
  wire [32:0]addc_32_0_S;
  wire [31:0]and32_0_res;
  wire [31:0]nor32_0_res;
  wire [31:0]or32_0_res;
  wire or_bit_32_0_o;
  wire [31:0]srl32_0_res;
  wire [31:0]xlconcat_0_dout;
  wire [30:0]xlconstant_0_dout;
  wire [31:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [31:0]xor32_0_res;
  wire [31:0]xor32_1_res;

  assign A_0_1 = A[31:0];
  assign B_0_1 = B[31:0];
  assign Din_0_1 = ALU_operation[2:0];
  assign o_0 = or_bit_32_0_o;
  assign res[31:0] = MUX8T1_32_0_o;
  ALU_MUX8T1_32_0_0 MUX8T1_32_0
       (.I0(and32_0_res),
        .I1(or32_0_res),
        .I2(xlslice_0_Dout),
        .I3(xor32_0_res),
        .I4(nor32_0_res),
        .I5(srl32_0_res),
        .I6(xlslice_0_Dout),
        .I7(xlconcat_0_dout),
        .o(MUX8T1_32_0_o),
        .s(Din_0_1));
  ALU_SignalExt_32_0_0 SignalExt_32_0
       (.S(xlslice_1_Dout),
        .So(SignalExt_32_0_So));
  ALU_addc_32_0_0 addc_32_0
       (.A(A_0_1),
        .B(xor32_1_res),
        .C0(xlslice_1_Dout),
        .S(addc_32_0_S));
  ALU_and32_0_0 and32_0
       (.A(A_0_1),
        .B(B_0_1),
        .res(and32_0_res));
  ALU_nor32_0_0 nor32_0
       (.A(A_0_1),
        .B(B_0_1),
        .res(nor32_0_res));
  ALU_or32_0_0 or32_0
       (.A(A_0_1),
        .B(B_0_1),
        .res(or32_0_res));
  ALU_or_bit_32_0_0 or_bit_32_0
       (.A(MUX8T1_32_0_o),
        .o(or_bit_32_0_o));
  ALU_srl32_0_0 srl32_0
       (.A(A_0_1),
        .B(B_0_1),
        .res(srl32_0_res));
  ALU_xlconcat_0_0 xlconcat_0
       (.In0(xlslice_2_Dout),
        .In1(xlconstant_0_dout),
        .dout(xlconcat_0_dout));
  ALU_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  ALU_xlslice_0_0 xlslice_0
       (.Din(addc_32_0_S),
        .Dout(xlslice_0_Dout));
  ALU_xlslice_1_0 xlslice_1
       (.Din(Din_0_1),
        .Dout(xlslice_1_Dout));
  ALU_xlslice_2_0 xlslice_2
       (.Din(addc_32_0_S),
        .Dout(xlslice_2_Dout));
  ALU_xor32_0_0 xor32_0
       (.A(A_0_1),
        .B(B_0_1),
        .res(xor32_0_res));
  ALU_xor32_1_0 xor32_1
       (.A(SignalExt_32_0_So),
        .B(B_0_1),
        .res(xor32_1_res));
endmodule
