vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap xpm modelsim_lib/msim/xpm
vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vlog -work xpm  -incr -sv \
"D:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  -incr \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -incr \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ip/simPipeCPU_dist_mem_gen_0_0/sim/simPipeCPU_dist_mem_gen_0_0.v" \

vlog -work xlslice_v1_0_2  -incr \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ip/simPipeCPU_xlslice_0_0/sim/simPipeCPU_xlslice_0_0.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ip/simPipeCPU_xlslice_0_1/sim/simPipeCPU_xlslice_0_1.v" \

vlog -work blk_mem_gen_v8_4_4  -incr \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ip/simPipeCPU_RAM_B_0_0/RAM_B.srcs/sources_1/ip/RAM/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ip/simPipeCPU_RAM_B_0_0/RAM_B.srcs/sources_1/ip/RAM/sim/RAM.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/cc35/RAM_B.srcs/sources_1/new/RAM_B.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ip/simPipeCPU_RAM_B_0_0/sim/simPipeCPU_RAM_B_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -incr \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ip/simPipeCPU_util_vector_logic_0_0/sim/simPipeCPU_util_vector_logic_0_0.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/84ef/ImmGen.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/84ef/Regs.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/84ef/alu.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/84ef/controller.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/84ef/datapath.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ipshared/84ef/pCPU.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/ip/simPipeCPU_pCPU_0_0/sim/simPipeCPU_pCPU_0_0.v" \
"../../../../simPipeCPU.gen/sources_1/bd/simPipeCPU/sim/simPipeCPU.v" \

vlog -work xil_defaultlib \
"glbl.v"

