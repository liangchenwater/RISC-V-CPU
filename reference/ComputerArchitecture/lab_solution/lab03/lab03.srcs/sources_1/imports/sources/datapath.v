`include "define.vh"


/**
 * Data Path for MIPS 5-stage pipelined CPU.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module datapath (
	input wire clk,  // main clock
	// debug
	`ifdef DEBUG
	input wire [5:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data
	`endif
	// control signals
	output reg [31:0] inst_data_id,  // instruction
	output reg is_branch_exe,  // whether instruction in EXE stage is jump/branch instruction
	output reg is_load_exe,  // whether instruction in EXE stage is load instruction
	output reg [4:0] regw_addr_exe,  // register write address from EXE stage
	output reg wb_wen_exe,  // register write enable signal feedback from EXE stage
	output reg is_branch_mem,  // whether instruction in MEM stage is jump/branch instruction
	output reg is_load_mem,  // whether instruction in MEM stage is load instruction
	output reg [4:0] regw_addr_mem,  // register write address from MEM stage
	output reg wb_wen_mem,  // register write enable signal feedback from MEM stage
	input wire [2:0] pc_src_ctrl,  // how would PC change to next
	input wire imm_ext_ctrl,  // whether using sign extended to immediate data
	input wire [1:0] exe_a_src_ctrl,  // data source of operand A for ALU
	input wire [1:0] exe_b_src_ctrl,  // data source of operand B for ALU
	input wire [3:0] exe_alu_oper_ctrl,  // ALU operation type
	input wire mem_ren_ctrl,  // memory read enable signal
	input wire mem_wen_ctrl,  // memory write enable signal
	input wire [1:0] wb_addr_src_ctrl,  // address source to write data back to registers
	input wire wb_data_src_ctrl,  // data source of data being written back to registers
	input wire wb_wen_ctrl,  // register write enable signal
	input wire [1:0] fwd_a_ctrl,  // forwarding selection for channel A
	input wire [1:0] fwd_b_ctrl,  // forwarding selection for channel B
	input wire is_load_ctrl,  // whether current instruction is load instruction
	// IF signals
	input wire if_rst,  // stage reset signal
	input wire if_en,  // stage enable signal
	output reg if_valid,  // working flag
	output reg inst_ren,  // instruction read enable signal
	output reg [31:0] inst_addr,  // address of instruction needed
	input wire [31:0] inst_data,  // instruction fetched
	// ID signals
	input wire id_rst,
	input wire id_en,
	output reg id_valid,
	// EXE signals
	input wire exe_rst,
	input wire exe_en,
	output reg exe_valid,
	// MEM signals
	input wire mem_rst,
	input wire mem_en,
	output reg mem_valid,
	output wire mem_ren,  // memory read enable signal
	output wire mem_wen,  // memory write enable signal
	output wire [31:0] mem_addr,  // address of memory
	output wire [31:0] mem_dout,  // data writing to memory
	input wire [31:0] mem_din,  // data read from memory
	// WB signals
	input wire wb_rst,
	input wire wb_en,
	output reg wb_valid
	);
	
	`include "mips_define.vh"
	
	// control signals
	reg [2:0] pc_src_exe, pc_src_mem;
	reg [1:0] exe_a_src_exe, exe_b_src_exe;
	reg [3:0] exe_alu_oper_exe;
	reg mem_ren_exe, mem_ren_mem;
	reg mem_wen_exe, mem_wen_mem;
	reg wb_data_src_exe, wb_data_src_mem, wb_data_src_wb;
	reg [1:0] fwd_a_exe, fwd_b_exe;
	
	// IF signals
	wire [31:0] inst_addr_next;
	
	// ID signals
	reg [31:0] inst_addr_id;
	reg [31:0] inst_addr_next_id;
	reg [4:0] regw_addr_id;
	wire [4:0] addr_rs, addr_rt, addr_rd;
	wire [31:0] data_rs, data_rt, data_imm;
	
	// EXE signals
	reg [31:0] inst_addr_exe;
	reg [31:0] inst_addr_next_exe;
	reg [31:0] inst_data_exe;
	reg [31:0] data_rs_exe, data_rt_exe, data_imm_exe;
	reg [31:0] data_rs_fwd, data_rt_fwd;
	reg [31:0] opa_exe, opb_exe;
	wire [31:0] alu_out_exe;
	wire rs_rt_equal_exe;
	
	// MEM signals
	reg [31:0] inst_addr_mem;
	reg [31:0] inst_addr_next_mem;
	reg [31:0] inst_data_mem;
	reg [4:0] data_rs_mem;
	reg [31:0] data_rt_mem;
	reg [31:0] alu_out_mem;
	reg [31:0] branch_target_mem;
	reg rs_rt_equal_mem;
	
	// WB signals
	reg wb_wen_wb;
	reg [31:0] alu_out_wb;
	reg [31:0] mem_din_wb;
	reg [4:0] regw_addr_wb;
	reg [31:0] regw_data_wb;
	
	// debug
	`ifdef DEBUG
	wire [31:0] debug_data_reg;
	reg [31:0] debug_data_signal;
	
	always @(posedge clk) begin
		case (debug_addr[4:0])
			0: debug_data_signal <= inst_addr;
			1: debug_data_signal <= inst_data;
			2: debug_data_signal <= inst_addr_id;
			3: debug_data_signal <= inst_data_id;
			4: debug_data_signal <= inst_addr_exe;
			5: debug_data_signal <= inst_data_exe;
			6: debug_data_signal <= inst_addr_mem;
			7: debug_data_signal <= inst_data_mem;
			8: debug_data_signal <= {27'b0, addr_rs};
			9: debug_data_signal <= data_rs;
			10: debug_data_signal <= {27'b0, addr_rt};
			11: debug_data_signal <= data_rt;
			12: debug_data_signal <= data_imm;
			13: debug_data_signal <= opa_exe;
			14: debug_data_signal <= opb_exe;
			15: debug_data_signal <= alu_out_exe;
			16: debug_data_signal <= 0;
			17: debug_data_signal <= {16'b0, 2'b0, fwd_a_ctrl, 2'b0, fwd_b_ctrl, 8'b0};
			18: debug_data_signal <= {19'b0, inst_ren, 7'b0, mem_ren, 3'b0, mem_wen};
			19: debug_data_signal <= mem_addr;
			20: debug_data_signal <= mem_din;
			21: debug_data_signal <= mem_dout;
			22: debug_data_signal <= {27'b0, regw_addr_wb};
			23: debug_data_signal <= regw_data_wb;
			default: debug_data_signal <= 32'hFFFF_FFFF;
		endcase
	end
	
	assign
		debug_data = debug_addr[5] ? debug_data_signal : debug_data_reg;
	`endif
	
	// IF stage
	assign
		inst_addr_next = inst_addr + 4;
	
	always @(*) begin
		if_valid = ~if_rst & if_en;
		inst_ren = ~if_rst;
	end
	
	always @(posedge clk) begin
		if (if_rst) begin
			inst_addr <= 0;
		end
		else if (if_en) begin
			if (is_branch_mem)
				inst_addr <= branch_target_mem;
			else
				inst_addr <= inst_addr_next;
		end
	end
	
	// ID stage
	always @(posedge clk) begin
		if (id_rst) begin
			id_valid <= 0;
			inst_addr_id <= 0;
			inst_data_id <= 0;
			inst_addr_next_id <= 0;
		end
		else if (id_en) begin
			id_valid <= if_valid;
			inst_addr_id <= inst_addr;
			inst_data_id <= inst_data;
			inst_addr_next_id <= inst_addr_next;
		end
	end
	
	assign
		addr_rs = inst_data_id[25:21],
		addr_rt = inst_data_id[20:16],
		addr_rd = inst_data_id[15:11],
		data_imm = imm_ext_ctrl ? {{16{inst_data_id[15]}}, inst_data_id[15:0]} : {16'b0, inst_data_id[15:0]};
	
	always @(*) begin
		regw_addr_id = inst_data_id[15:11];
		case (wb_addr_src_ctrl)
			WB_ADDR_RD: regw_addr_id = addr_rd;
			WB_ADDR_RT: regw_addr_id = addr_rt;
			WB_ADDR_LINK: regw_addr_id = GPR_RA;
		endcase
	end
	
	regfile REGFILE (
		.clk(clk),
		`ifdef DEBUG
		.debug_addr(debug_addr[4:0]),
		.debug_data(debug_data_reg),
		`endif
		.addr_a(addr_rs),
		.data_a(data_rs),
		.addr_b(addr_rt),
		.data_b(data_rt),
		.en_w(wb_wen_wb),
		.addr_w(regw_addr_wb),
		.data_w(regw_data_wb)
		);
	
	// EXE stage
	always @(posedge clk) begin
		if (exe_rst) begin
			exe_valid <= 0;
			inst_addr_exe <= 0;
			inst_data_exe <= 0;
			inst_addr_next_exe <= 0;
			regw_addr_exe <= 0;
			pc_src_exe <= 0;
			exe_a_src_exe <= 0;
			exe_b_src_exe <= 0;
			data_rs_exe <= 0;
			data_rt_exe <= 0;
			data_imm_exe <= 0;
			exe_alu_oper_exe <= 0;
			mem_ren_exe <= 0;
			mem_wen_exe <= 0;
			wb_data_src_exe <= 0;
			wb_wen_exe <= 0;
			is_load_exe <= 0;
			fwd_a_exe <= 0;
			fwd_b_exe <= 0;
		end
		else if (exe_en) begin
			exe_valid <= id_valid;
			inst_addr_exe <= inst_addr_id;
			inst_data_exe <= inst_data_id;
			inst_addr_next_exe <= inst_addr_next_id;
			regw_addr_exe <= regw_addr_id;
			pc_src_exe <= pc_src_ctrl;
			exe_a_src_exe <= exe_a_src_ctrl;
			exe_b_src_exe <= exe_b_src_ctrl;
			data_rs_exe <= data_rs;
			data_rt_exe <= data_rt;
			data_imm_exe <= data_imm;
			exe_alu_oper_exe <= exe_alu_oper_ctrl;
			mem_ren_exe <= mem_ren_ctrl;
			mem_wen_exe <= mem_wen_ctrl;
			wb_data_src_exe <= wb_data_src_ctrl;
			wb_wen_exe <= wb_wen_ctrl;
			is_load_exe <= is_load_ctrl;
			fwd_a_exe <= fwd_a_ctrl;
			fwd_b_exe <= fwd_b_ctrl;
		end
	end
	
	always @(*) begin
		is_branch_exe <= (pc_src_exe != PC_NEXT);
	end
	
	always @(*) begin
		data_rs_fwd = data_rs_exe;
		data_rt_fwd = data_rt_exe;
		case (fwd_a_exe)
			0: data_rs_fwd = data_rs_exe;
			1: data_rs_fwd = mem_din;
			2: data_rs_fwd = alu_out_mem;
			3: data_rs_fwd = regw_data_wb;
		endcase
		case (fwd_b_exe)
			0: data_rt_fwd = data_rt_exe;
			1: data_rt_fwd = mem_din;
			2: data_rt_fwd = alu_out_mem;
			3: data_rt_fwd = regw_data_wb;
		endcase
	end
	
	assign
		rs_rt_equal_exe = (data_rs_fwd == data_rt_fwd);
	
	always @(*) begin
		opa_exe = data_rs_fwd;
		opb_exe = data_rt_fwd;
		case (exe_a_src_exe)
			EXE_A_RS: opa_exe = data_rs_fwd;
			EXE_A_LINK: opa_exe = inst_addr_next_exe;
			EXE_A_BRANCH: opa_exe = inst_addr_next_exe;
		endcase
		case (exe_b_src_exe)
			EXE_B_RT: opb_exe = data_rt_fwd;
			EXE_B_IMM: opb_exe = data_imm_exe;
			EXE_B_LINK: opb_exe = 32'h0;  // linked address is the next one of current instruction
			EXE_B_BRANCH: opb_exe = {data_imm_exe[29:0], 2'b0};
		endcase
	end
	
	alu ALU (
		.a(opa_exe),
		.b(opb_exe),
		.oper(exe_alu_oper_exe),
		.result(alu_out_exe)
		);
	
	// MEM stage
	always @(posedge clk) begin
		if (mem_rst) begin
			mem_valid <= 0;
			pc_src_mem <= 0;
			inst_addr_mem <= 0;
			inst_data_mem <= 0;
			inst_addr_next_mem <= 0;
			regw_addr_mem <= 0;
			data_rs_mem <= 0;
			data_rt_mem <= 0;
			alu_out_mem <= 0;
			mem_ren_mem <= 0;
			mem_wen_mem <= 0;
			wb_data_src_mem <= 0;
			wb_wen_mem <= 0;
			is_load_mem <= 0;
			rs_rt_equal_mem <= 0;
		end
		else if (mem_en) begin
			mem_valid <= exe_valid;
			pc_src_mem <= pc_src_exe;
			inst_addr_mem <= inst_addr_exe;
			inst_data_mem <= inst_data_exe;
			inst_addr_next_mem <= inst_addr_next_exe;
			regw_addr_mem <= regw_addr_exe;
			data_rs_mem <= data_rs_fwd;
			data_rt_mem <= data_rt_fwd;
			alu_out_mem <= alu_out_exe;
			mem_ren_mem <= mem_ren_exe;
			mem_wen_mem <= mem_wen_exe;
			wb_data_src_mem <= wb_data_src_exe;
			wb_wen_mem <= wb_wen_exe;
			is_load_mem <= is_load_exe;
			rs_rt_equal_mem <= rs_rt_equal_exe;
		end
	end
	
	always @(*) begin
		is_branch_mem <= (pc_src_mem != PC_NEXT);
	end
	
	always @(*) begin
		case (pc_src_mem)
			PC_JUMP: branch_target_mem <= {inst_addr_mem[31:28], inst_data_mem[25:0], 2'b0};
			PC_JR: branch_target_mem <= data_rs_mem;
			PC_BEQ: branch_target_mem <= rs_rt_equal_mem ? alu_out_mem : inst_addr_next_mem;
			PC_BNE: branch_target_mem <= rs_rt_equal_mem ? inst_addr_next_mem : alu_out_mem;
			default: branch_target_mem <= inst_addr_next_mem;  // will never used
		endcase
	end
	
	assign
		mem_ren = mem_ren_mem,
		mem_wen = mem_wen_mem,
		mem_addr = alu_out_mem,
		mem_dout = data_rt_mem;
	
	// WB stage
	always @(posedge clk) begin
		if (wb_rst) begin
			wb_valid <= 0;
			wb_wen_wb <= 0;
			wb_data_src_wb <= 0;
			regw_addr_wb <= 0;
			alu_out_wb <= 0;
			mem_din_wb <= 0;
		end
		else if (wb_en) begin
			wb_valid <= mem_valid;
			wb_wen_wb <= wb_wen_mem;
			wb_data_src_wb <= wb_data_src_mem;
			regw_addr_wb <= regw_addr_mem;
			alu_out_wb <= alu_out_mem;
			mem_din_wb <= mem_din;
		end
	end
	
	always @(*) begin
		regw_data_wb = alu_out_wb;
		case (wb_data_src_wb)
			WB_DATA_ALU: regw_data_wb = alu_out_wb;
			WB_DATA_MEM: regw_data_wb = mem_din_wb;
		endcase
	end
	
endmodule
