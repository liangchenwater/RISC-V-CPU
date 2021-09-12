onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L xlslice_v1_0_2 -L blk_mem_gen_v8_4_4 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.simPipeCPU xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {simPipeCPU.udo}

run -all

quit -force
