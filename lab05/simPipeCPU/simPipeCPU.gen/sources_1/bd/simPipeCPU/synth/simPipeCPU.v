//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Jun 27 14:54:22 2021
//Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
//Command     : generate_target simPipeCPU.bd
//Design      : simPipeCPU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "simPipeCPU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=simPipeCPU,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "simPipeCPU.hwdef" *) 
module simPipeCPU
   (clk,
    rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN simPipeCPU_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;

  wire [31:0]RAM_B_0_douta;
  wire [9:0]addr11_2_Dout;
  wire clk_1;
  wire [31:0]dist_mem_gen_0_spo;
  wire [31:0]pCPU_0_Addr_out;
  wire [31:0]pCPU_0_Data_out;
  wire pCPU_0_MemRW;
  wire [31:0]pCPU_0_PC;
  wire [9:0]pc11_2_Dout;
  wire rst_0_1;
  wire [0:0]util_vector_logic_0_Res;

  assign clk_1 = clk;
  assign rst_0_1 = rst;
  simPipeCPU_RAM_B_0_0 RAM_B_0
       (.addra(addr11_2_Dout),
        .clka(util_vector_logic_0_Res),
        .dina(pCPU_0_Data_out),
        .douta(RAM_B_0_douta),
        .wea(pCPU_0_MemRW));
  simPipeCPU_dist_mem_gen_0_0 ROM
       (.a(pc11_2_Dout),
        .spo(dist_mem_gen_0_spo));
  simPipeCPU_xlslice_0_1 addr11_2
       (.Din(pCPU_0_Addr_out),
        .Dout(addr11_2_Dout));
  simPipeCPU_pCPU_0_0 pCPU_0
       (.Addr_out(pCPU_0_Addr_out),
        .Data_in(RAM_B_0_douta),
        .Data_out(pCPU_0_Data_out),
        .MemRW(pCPU_0_MemRW),
        .PC_out(pCPU_0_PC),
        .clk(clk_1),
        .instr(dist_mem_gen_0_spo),
        .rst(rst_0_1));
  simPipeCPU_xlslice_0_0 pc11_2
       (.Din(pCPU_0_PC),
        .Dout(pc11_2_Dout));
  simPipeCPU_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(clk_1),
        .Res(util_vector_logic_0_Res));
endmodule
