onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RAM_opt

do {wave.do}

view wave
view structure
view signals

do {RAM.udo}

run -all

quit -force
