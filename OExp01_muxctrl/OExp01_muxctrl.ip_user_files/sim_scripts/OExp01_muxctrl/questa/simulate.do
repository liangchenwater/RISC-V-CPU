onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib OExp01_muxctrl_opt

do {wave.do}

view wave
view structure
view signals

do {OExp01_muxctrl.udo}

run -all

quit -force
