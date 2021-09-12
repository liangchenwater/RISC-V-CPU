onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib simCPU_opt

do {wave.do}

view wave
view structure
view signals

do {simCPU.udo}

run -all

quit -force
