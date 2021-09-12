onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+CSSTE -L xpm -L xil_defaultlib -L dist_mem_gen_v8_0_13 -L xlslice_v1_0_2 -L util_vector_logic_v2_0_1 -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L blk_mem_gen_v8_4_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.CSSTE xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {CSSTE.udo}

run -all

endsim

quit -force
