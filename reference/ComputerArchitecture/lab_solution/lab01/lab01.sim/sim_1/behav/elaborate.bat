@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto ed6ebc5363cf409c97defde2e157b260 -m64 --debug typical --relax --include "../../../lab01.srcs/sources_1/imports/cpu" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot sim_mips_behav xil_defaultlib.sim_mips xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
