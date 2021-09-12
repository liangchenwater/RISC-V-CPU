onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+simCPU -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L xlslice_v1_0_2 -L blk_mem_gen_v8_4_4 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.simCPU xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {simCPU.udo}

run -all

endsim

quit -force
