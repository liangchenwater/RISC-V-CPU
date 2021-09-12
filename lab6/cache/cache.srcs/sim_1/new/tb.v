`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 22:15:59
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();

reg clk;
reg rst;
reg wt_cpu;
reg rd_cpu;
reg mem_ready;
wire wt_mem;
wire rd_mem;
wire[127:0] data_mem_wt;
wire[31:0] data_cpu_rd;
reg[31:0] cpu_addr;
reg[31:0] cpu_data_wt;
reg[127:0] data_mem_rd;

cache cache(
.clk(clk),
.rst(rst),
.data_cpu_wt(cpu_data_wt),
.data_mem_rd(data_mem_rd),
.addr_cpu(cpu_addr),
.wt_cpu(wt_cpu),
.rd_cpu(rd_cpu),
.mem_ready(mem_ready),
.wt_mem(wt_mem),
.rd_mem(rd_mem),
.data_mem_wt(data_mem_wt),
.data_cpu_rd(data_cpu_rd)
);

always #5 clk=~clk;
initial begin
clk=0;
rst=1;
mem_ready=1;
#1;
rst=0;
//read miss
#14;
cpu_addr=32'hA0000000;
wt_cpu=0;
rd_cpu=1;
data_mem_rd=128'h11111111222222223333333344444444;
//read miss
#50;
cpu_addr=32'hB0000000;
wt_cpu=0;
rd_cpu=1;
data_mem_rd=128'h22222222333333334444444455555555;
//write hit
#50;
cpu_addr=32'hA0000002;
wt_cpu=1;
rd_cpu=0;
cpu_data_wt=32'hBBBBBBBB;
//read hit
#50;
cpu_addr=32'hB0000003;
wt_cpu=0;
rd_cpu=1;
//write miss+write back
#50;
cpu_addr=32'hF0000000;
cpu_data_wt=32'hEEEEEEEE;
wt_cpu=1;
rd_cpu=0;
data_mem_rd=128'h55555555666666667777777788888888;
end
endmodule
