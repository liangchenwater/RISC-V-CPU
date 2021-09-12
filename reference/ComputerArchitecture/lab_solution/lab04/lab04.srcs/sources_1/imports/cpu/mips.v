`include "define.vh"


/**
 * MIPS CPU wrapper.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module mips (
	`ifdef DEBUG
	input wire debug_en,  // debug enable
	input wire debug_step,  // debug step clock
	input wire [6:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data
	`endif
	input wire clk,  // main clock
	input wire rst,  // synchronous reset
	input wire interrupter  // interrupt source, for future use
	);
	
	// instruction signals
	wire inst_ren;
	wire [31:0] inst_addr;
	wire [31:0] inst_data;
	
	// memory signals
	wire mem_ren, mem_wen;
	wire [31:0] mem_addr;
	wire [31:0] mem_data_r;
	wire [31:0] mem_data_w;
	
	// mips core
	mips_core MIPS_CORE (
		.clk(clk),
		.rst(rst),
		`ifdef DEBUG
		.debug_en(debug_en),
		.debug_step(debug_step),
		.debug_addr(debug_addr),
		.debug_data(debug_data),
		`endif
		.inst_ren(inst_ren),
		.inst_addr(inst_addr),
		.inst_data(inst_data),
		.mem_ren(mem_ren),
		.mem_wen(mem_wen),
		.mem_addr(mem_addr),
		.mem_dout(mem_data_w),
		.mem_din(mem_data_r)
		);
	
	inst_rom INST_ROM (
		.clk(clk),
		.addr({2'b0, inst_addr[31:2]}),
		//.addr(inst_addr),
		.dout(inst_data)
		);
	
	data_ram DATA_RAM (
		.clk(clk),
		.we(mem_wen),
		.addr({2'b0, mem_addr[31:2]}),
		//.addr(mem_addr),
		.din(mem_data_w),
		.dout(mem_data_r)
		);
	
endmodule
