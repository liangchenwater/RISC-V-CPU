vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/dist_mem_gen_v8_0_13
vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_2
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/util_vector_logic_v2_0_1

vmap xpm riviera/xpm
vmap dist_mem_gen_v8_0_13 riviera/dist_mem_gen_v8_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1

vlog -work xpm  -sv2k12 \
"D:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../simCPU.gen/sources_1/bd/simCPU/ip/simCPU_dist_mem_gen_0_0/sim/simCPU_dist_mem_gen_0_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../simCPU.gen/sources_1/bd/simCPU/ip/simCPU_xlslice_0_0/sim/simCPU_xlslice_0_0.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 \
"../../../../simCPU.gen/sources_1/bd/simCPU/ip/simCPU_RAM_B_0_0/RAM_B.srcs/sources_1/ip/RAM/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../simCPU.gen/sources_1/bd/simCPU/ip/simCPU_RAM_B_0_0/RAM_B.srcs/sources_1/ip/RAM/sim/RAM.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/cc35/RAM_B.srcs/sources_1/new/RAM_B.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ip/simCPU_RAM_B_0_0/sim/simCPU_RAM_B_0_0.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ip/simCPU_xlslice_0_1/sim/simCPU_xlslice_0_1.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../simCPU.gen/sources_1/bd/simCPU/ip/simCPU_util_vector_logic_0_0/sim/simCPU_util_vector_logic_0_0.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/9775/ImmGen.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/9775/Regs.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/9775/alu.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/9775/controller.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/9775/datapath.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ipshared/9775/SCPUC.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/ip/simCPU_SCPUC_0_0/sim/simCPU_SCPUC_0_0.v" \
"../../../../simCPU.gen/sources_1/bd/simCPU/sim/simCPU.v" \

vlog -work xil_defaultlib \
"glbl.v"

