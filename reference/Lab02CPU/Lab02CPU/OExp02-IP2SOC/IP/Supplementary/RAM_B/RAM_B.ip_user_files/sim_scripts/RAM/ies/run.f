-makelib ies_lib/xil_defaultlib -sv \
  "D:/VIVADO/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/VIVADO/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../RAM_B.srcs/sources_1/ip/RAM/sim/RAM.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

