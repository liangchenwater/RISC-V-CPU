`include "define.vh"


/**
 * MIPS 5-stage pipeline CPU Core, including data path and co-processors.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module mips_core (
	input wire clk,  // main clock
	input wire rst,  // synchronous reset
	// debug
	`ifdef DEBUG
	input wire debug_en,  // debug enable
	input wire debug_step,  // debug step clock
	input wire [6:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data
	`endif
	// instruction interfaces
	output wire inst_ren,  // instruction read enable signal
	output wire [31:0] inst_addr,  // address of instruction needed
	input wire [31:0] inst_data,  // instruction fetched
	// memory interfaces
	output wire mem_ren,  // memory read enable signal
	output wire mem_wen,  // memory write enable signal
	output wire [31:0] mem_addr,  // address of memory
	output wire [31:0] mem_dout,  // data writing to memory
	input wire [31:0] mem_din,  // data read from memory
	// interrupt
	input wire interrupt  // external interrupt signal
	);
	
	// debug
	`ifdef DEBUG
	wire [31:0] debug_data_path, debug_data_cp0;
	assign
		debug_data = debug_addr[6] ? debug_data_cp0 : debug_data_path;
	`endif
	
	// control signals
	wire [31:0] inst_data_ctrl;
	
	wire [1:0] pc_src_ctrl;
	wire imm_ext_ctrl;
	wire [1:0] exe_a_src_ctrl, exe_b_src_ctrl;
	wire [3:0] exe_alu_oper_ctrl;
	wire [1:0] exe_cp_oper_ctrl;
	wire exe_signed_ctrl;
	wire mem_ren_ctrl;
	wire mem_wen_ctrl;
	wire [1:0] wb_addr_src_ctrl;
	wire wb_data_src_ctrl;
	wire wb_wen_ctrl;
	wire [1:0] fwd_a_ctrl, fwd_b_ctrl;
	wire fwd_m_ctrl;
	wire is_load_ctrl;
	
	wire rs_rt_equal;
	wire is_load_exe, is_load_mem;
	wire [4:0] regw_addr_exe, regw_addr_mem;
	wire wb_wen_exe, wb_wen_mem;
	
	wire if_rst, if_en, if_valid;
	wire id_rst, id_en, id_valid;
	wire exe_rst, exe_en, exe_valid;
	wire mem_rst, mem_en, mem_valid;
	wire wb_rst, wb_en, wb_valid;
	
	wire [4:0] cp0_addr;
	wire [31:0] cp0_dout, cp0_din;
	wire [31:0] ret_addr;
	wire jump_en;
	wire [31:0] jump_addr;
	
	// controller
	controller CONTROLLER (
		.clk(clk),
		.rst(rst),
		`ifdef DEBUG
		.debug_en(debug_en),
		.debug_step(debug_step),
		`endif
		.inst(inst_data_ctrl),
		.cp0_jump_en(jump_en),
		.rs_rt_equal(rs_rt_equal),
		.is_load_exe(is_load_exe),
		.regw_addr_exe(regw_addr_exe),
		.wb_wen_exe(wb_wen_exe),
		.is_load_mem(is_load_mem),
		.regw_addr_mem(regw_addr_mem),
		.wb_wen_mem(wb_wen_mem),
		.pc_src(pc_src_ctrl),
		.imm_ext(imm_ext_ctrl),
		.exe_a_src(exe_a_src_ctrl),
		.exe_b_src(exe_b_src_ctrl),
		.exe_alu_oper(exe_alu_oper_ctrl),
		.exe_cp_oper(exe_cp_oper_ctrl),
		.exe_signed(exe_signed_ctrl),
		.mem_ren(mem_ren_ctrl),
		.mem_wen(mem_wen_ctrl),
		.wb_addr_src(wb_addr_src_ctrl),
		.wb_data_src(wb_data_src_ctrl),
		.wb_wen(wb_wen_ctrl),
		.fwd_a(fwd_a_ctrl),
		.fwd_b(fwd_b_ctrl),
		.fwd_m(fwd_m_ctrl),
		.is_load(is_load_ctrl),
		.unrecognized(),
		.if_rst(if_rst),
		.if_en(if_en),
		.if_valid(if_valid),
		.id_rst(id_rst),
		.id_en(id_en),
		.id_valid(id_valid),
		.exe_rst(exe_rst),
		.exe_en(exe_en),
		.exe_valid(exe_valid),
		.mem_rst(mem_rst),
		.mem_en(mem_en),
		.mem_valid(mem_valid),
		.wb_rst(wb_rst),
		.wb_en(wb_en),
		.wb_valid(wb_valid)
	);
	
	// data path
	datapath DATAPATH (
		.clk(clk),
		`ifdef DEBUG
		.debug_addr(debug_addr[5:0]),
		.debug_data(debug_data_path),
		`endif
		.inst_data_id(inst_data_ctrl),
		.rs_rt_equal(rs_rt_equal),
		.is_load_exe(is_load_exe),
		.regw_addr_exe(regw_addr_exe),
		.wb_wen_exe(wb_wen_exe),
		.is_load_mem(is_load_mem),
		.regw_addr_mem(regw_addr_mem),
		.wb_wen_mem(wb_wen_mem),
		.pc_src_ctrl(pc_src_ctrl),
		.imm_ext_ctrl(imm_ext_ctrl),
		.exe_a_src_ctrl(exe_a_src_ctrl),
		.exe_b_src_ctrl(exe_b_src_ctrl),
		.exe_alu_oper_ctrl(exe_alu_oper_ctrl),
		.exe_signed_ctrl(exe_signed_ctrl),
		.mem_ren_ctrl(mem_ren_ctrl),
		.mem_wen_ctrl(mem_wen_ctrl),
		.wb_addr_src_ctrl(wb_addr_src_ctrl),
		.wb_data_src_ctrl(wb_data_src_ctrl),
		.wb_wen_ctrl(wb_wen_ctrl),
		.fwd_a_ctrl(fwd_a_ctrl),
		.fwd_b_ctrl(fwd_b_ctrl),
		.fwd_m_ctrl(fwd_m_ctrl),
		.is_load_ctrl(is_load_ctrl),
		.if_rst(if_rst),
		.if_en(if_en),
		.if_valid(if_valid),
		.inst_ren(inst_ren),
		.inst_addr(inst_addr),
		.inst_data(inst_data),
		.id_rst(id_rst),
		.id_en(id_en),
		.id_valid(id_valid),
		.exe_rst(exe_rst),
		.exe_en(exe_en),
		.exe_valid(exe_valid),
		.mem_rst(mem_rst),
		.mem_en(mem_en),
		.mem_valid(mem_valid),
		.mem_ren(mem_ren),
		.mem_wen(mem_wen),
		.mem_addr(mem_addr),
		.mem_dout(mem_dout),
		.mem_din(mem_din),
		.wb_rst(wb_rst),
		.wb_en(wb_en),
		.wb_valid(wb_valid),
		.cp0_addr(cp0_addr),
		.cp0_dout(cp0_dout),
		.cp0_din(cp0_din),
		.ret_addr(ret_addr),
		.jump_en(jump_en),
		.jump_addr(jump_addr)
	);
	
	// CP0
	cp0 CP0 (
		.clk(clk),
		`ifdef DEBUG
		.debug_addr(debug_addr[4:0]),
		.debug_data(debug_data_cp0),
		`endif
		.oper(exe_cp_oper_ctrl),
		.addr_r(cp0_addr),
		.data_r(cp0_din),
		.addr_w(cp0_addr),
		.data_w(cp0_dout),
		.rst(rst),
		.ir_en(id_valid),  // interrupt can not be handled when current instruction in ID(where exception is checked) is invalid, as no PC is valid to write to EPC
		.ir_in(interrupt),
		.ret_addr(ret_addr),
		.jump_en(jump_en),
		.jump_addr(jump_addr)
		);
	
endmodule
