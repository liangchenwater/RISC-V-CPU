-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May 18 15:08:39 2021
-- Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simCPU_MCPU_0_0_stub.vhdl
-- Design      : simCPU_MCPU_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CPU_MIO : out STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    MemRW : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CPU_MIO,MIO_ready,MemRW,clk,rst,ALU_out[31:0],Data_in[31:0],Data_out[31:0],PC_out[31:0],inst_in[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MCPU,Vivado 2020.2";
begin
end;
