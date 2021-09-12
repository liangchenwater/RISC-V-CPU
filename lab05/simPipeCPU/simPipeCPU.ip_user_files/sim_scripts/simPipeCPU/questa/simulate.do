onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib simPipeCPU_opt

do {wave.do}

view wave
view structure
view signals

do {simPipeCPU.udo}

run -all

quit -force
