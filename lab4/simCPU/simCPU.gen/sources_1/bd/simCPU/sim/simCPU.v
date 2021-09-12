//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Jun 28 14:03:20 2021
//Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
//Command     : generate_target simCPU.bd
//Design      : simCPU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "simCPU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=simCPU,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "simCPU.hwdef" *) 
module simCPU
   (INT0,
    clk,
    rst);
  input INT0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN simCPU_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;

  wire INT0;
  wire [31:0]RAM_B_0_douta;
  wire [31:0]SCPUC_0_Addr_out;
  wire SCPUC_0_CPU_MIO;
  wire [31:0]SCPUC_0_Data_out;
  wire SCPUC_0_MemRW;
  wire [31:0]SCPUC_0_PC_out;
  wire [9:0]addr11_2_Dout;
  wire clk;
  wire [31:0]dist_mem_gen_0_spo;
  wire [9:0]pc11_2_Dout;
  wire rst_0_1;
  wire [0:0]util_vector_logic_0_Res;

  assign rst_0_1 = rst;
  simCPU_RAM_B_0_0 RAM_B_0
       (.addra(addr11_2_Dout),
        .clka(util_vector_logic_0_Res),
        .dina(SCPUC_0_Data_out),
        .douta(RAM_B_0_douta),
        .wea(SCPUC_0_MemRW));
  simCPU_dist_mem_gen_0_0 ROM
       (.a(pc11_2_Dout),
        .spo(dist_mem_gen_0_spo));
  simCPU_SCPUC_0_0 SCPUC_0
       (.Addr_out(SCPUC_0_Addr_out),
        .CPU_MIO(SCPUC_0_CPU_MIO),
        .Data_in(RAM_B_0_douta),
        .Data_out(SCPUC_0_Data_out),
        .INT0(INT0),
        .Inst_in(dist_mem_gen_0_spo),
        .MIO_ready(SCPUC_0_CPU_MIO),
        .MemRW(SCPUC_0_MemRW),
        .PC_out(SCPUC_0_PC_out),
        .clk(clk),
        .rst(rst_0_1));
  simCPU_xlslice_0_0 addr11_2
       (.Din(SCPUC_0_Addr_out),
        .Dout(addr11_2_Dout));
  simCPU_xlslice_0_1 pc11_2
       (.Din(SCPUC_0_PC_out),
        .Dout(pc11_2_Dout));
  simCPU_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(clk),
        .Res(util_vector_logic_0_Res));
endmodule
