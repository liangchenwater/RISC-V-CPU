vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/dist_mem_gen_v8_0_13
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/blk_mem_gen_v8_4_4

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap dist_mem_gen_v8_0_13 questa_lib/msim/dist_mem_gen_v8_0_13
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4

vlog -work xpm  -sv \
"D:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  \
"../../../bd/CSSTE/ipshared/67de/HexTo8SEG.v" \
"../../../bd/CSSTE/ipshared/67de/MC14495_ZJU.v" \
"../../../bd/CSSTE/ipshared/67de/MUX2T1_64.v" \
"../../../bd/CSSTE/ipshared/67de/P2S.v" \
"../../../bd/CSSTE/ipshared/67de/SSeg_map.v" \
"../../../bd/CSSTE/ipshared/67de/SSeg7_Dev.v" \
"../../../bd/CSSTE/ip/CSSTE_SSeg7_Dev_0_0/sim/CSSTE_SSeg7_Dev_0_0.v" \
"../../../bd/CSSTE/ipshared/0ee6/sources_1/new/clk_div.v" \
"../../../bd/CSSTE/ip/CSSTE_clk_div_0_0/sim/CSSTE_clk_div_0_0.v" \

vlog -work dist_mem_gen_v8_0_13  \
"../../../../SOC.gen/sources_1/bd/CSSTE/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  \
"../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_0/sim/CSSTE_dist_mem_gen_0_0.v" \

vlog -work xlslice_v1_0_2  \
"../../../../SOC.gen/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  \
"../../../bd/CSSTE/ip/CSSTE_div11_0/sim/CSSTE_div11_0.v" \
"../../../bd/CSSTE/ip/CSSTE_div11_1/sim/CSSTE_div11_1.v" \
"../../../bd/CSSTE/ip/CSSTE_div20_0/sim/CSSTE_div20_0.v" \
"../../../bd/CSSTE/ip/CSSTE_div20_1/sim/CSSTE_div20_1.v" \
"../../../bd/CSSTE/ip/CSSTE_sw0_0/sim/CSSTE_sw0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_sw2_0/sim/CSSTE_sw2_0.v" \

vlog -work util_vector_logic_v2_0_1  \
"../../../../SOC.gen/sources_1/bd/CSSTE/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  \
"../../../bd/CSSTE/ip/CSSTE_util_vector_logic_0_0/sim/CSSTE_util_vector_logic_0_0.v" \

vlog -work xlconcat_v2_1_4  \
"../../../../SOC.gen/sources_1/bd/CSSTE/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  \
"../../../bd/CSSTE/ip/CSSTE_xlconcat_0_0/sim/CSSTE_xlconcat_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlconcat_0_1/sim/CSSTE_xlconcat_0_1.v" \

vlog -work xlconstant_v1_1_7  \
"../../../../SOC.gen/sources_1/bd/CSSTE/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  \
"../../../bd/CSSTE/ip/CSSTE_xlconstant_0_0/sim/CSSTE_xlconstant_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlconstant_0_1/sim/CSSTE_xlconstant_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_0/sim/CSSTE_xlslice_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_2/sim/CSSTE_xlslice_0_2.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_3/sim/CSSTE_xlslice_0_3.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_4/sim/CSSTE_xlslice_0_4.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_5/sim/CSSTE_xlslice_0_5.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_6/sim/CSSTE_xlslice_0_6.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_7/sim/CSSTE_xlslice_0_7.v" \
"../../../bd/CSSTE/ipshared/4dad/VgaController.v" \
"../../../bd/CSSTE/ipshared/4dad/VgaDebugger.v" \
"../../../bd/CSSTE/ipshared/4dad/VgaDisplay.v" \
"../../../bd/CSSTE/ipshared/4dad/VGA.v" \
"../../../bd/CSSTE/ip/CSSTE_VGA_0_1/sim/CSSTE_VGA_0_1.v" \

vlog -work blk_mem_gen_v8_4_4  \
"../../../../SOC.gen/sources_1/bd/CSSTE/ip/CSSTE_RAM_B_0_2/RAM_B.srcs/sources_1/ip/RAM/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  \
"../../../bd/CSSTE/ip/CSSTE_RAM_B_0_2/RAM_B.srcs/sources_1/ip/RAM/sim/RAM.v" \
"../../../bd/CSSTE/ipshared/cc35/RAM_B.srcs/sources_1/new/RAM_B.v" \
"../../../bd/CSSTE/ip/CSSTE_RAM_B_0_2/sim/CSSTE_RAM_B_0_2.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_8/sim/CSSTE_xlslice_0_8.v" \
"../../../bd/CSSTE/ipshared/84ef/ImmGen.v" \
"../../../bd/CSSTE/ipshared/84ef/Regs.v" \
"../../../bd/CSSTE/ipshared/84ef/alu.v" \
"../../../bd/CSSTE/ipshared/84ef/controller.v" \
"../../../bd/CSSTE/ipshared/84ef/datapath.v" \
"../../../bd/CSSTE/ipshared/84ef/pCPU.v" \
"../../../bd/CSSTE/ip/CSSTE_pCPU_0_0/sim/CSSTE_pCPU_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_util_vector_logic_1_0/sim/CSSTE_util_vector_logic_1_0.v" \
"../../../bd/CSSTE/sim/CSSTE.v" \

vlog -work xil_defaultlib \
"glbl.v"

