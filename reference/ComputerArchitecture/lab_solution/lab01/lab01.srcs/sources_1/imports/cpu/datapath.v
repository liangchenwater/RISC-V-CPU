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
	output wire [31:0] inst_data_ctrl,  // instruction
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
	// memory signals
	output reg inst_ren,  // instruction read enable signal
	output reg [31:0] inst_addr,  // address of instruction needed
	input wire [31:0] inst_data,  // instruction fetched
	output wire mem_ren,  // memory read enable signal
	output wire mem_wen,  // memory write enable signal
	output wire [31:0] mem_addr,  // address of memory
	output wire [31:0] mem_dout,  // data writing to memory
	input wire [31:0] mem_din,  // data read from memory
	// debug control
	input wire cpu_rst,  // cpu reset signal
	input wire cpu_en  // cpu enable signal
	);
	
	`include "mips_define.vh"
	
	// data signals
	wire [31:0] inst_addr_next;
	wire [4:0] addr_rs, addr_rt, addr_rd;
	wire [31:0] data_rs, data_rt, data_imm;
	reg [31:0] opa, opb;
	wire [31:0] alu_out;
	wire rs_rt_equal;
	reg [4:0] regw_addr;
	reg [31:0] regw_data;
	
	// debug
	`ifdef DEBUG
	wire [31:0] debug_data_reg;
	reg [31:0] debug_data_signal;
	
	always @(posedge clk) begin
		case (debug_addr[4:0])
			0: debug_data_signal <= inst_addr;
			1: debug_data_signal <= inst_data;
			2: debug_data_signal <= 0;
			3: debug_data_signal <= 0;
			4: debug_data_signal <= 0;
			5: debug_data_signal <= 0;
			6: debug_data_signal <= 0;
			7: debug_data_signal <= 0;
			8: debug_data_signal <= {27'b0, addr_rs};
			9: debug_data_signal <= data_rs;
			10: debug_data_signal <= {27'b0, addr_rt};
			11: debug_data_signal <= data_rt;
			12: debug_data_signal <= data_imm;
			13: debug_data_signal <= opa;
			14: debug_data_signal <= opb;
			15: debug_data_signal <= alu_out;
			16: debug_data_signal <= 0;
			17: debug_data_signal <= 0;
			18: debug_data_signal <= {19'b0, inst_ren, 7'b0, mem_ren, 3'b0, mem_wen};
			19: debug_data_signal <= mem_addr;
			20: debug_data_signal <= mem_din;
			21: debug_data_signal <= mem_dout;
			22: debug_data_signal <= {27'b0, regw_addr};
			23: debug_data_signal <= regw_data;
			default: debug_data_signal <= 32'hFFFF_FFFF;
		endcase
	end
	
	assign
		debug_data = debug_addr[5] ? debug_data_signal : debug_data_reg;
	`endif
	
	assign
		inst_addr_next = inst_addr + 4;
	
	always @(posedge clk) begin
		if (cpu_rst) begin
			inst_addr <= 0;
		end
		else if (cpu_en) begin
			case (pc_src_ctrl)
				PC_JUMP: inst_addr <= {inst_addr[31:28], inst_data[25:0], 2'b0};
				PC_JR: inst_addr <= data_rs;
				PC_BEQ: inst_addr <= rs_rt_equal ? alu_out : inst_addr_next;
				PC_BNE: inst_addr <= rs_rt_equal ? inst_addr_next : alu_out;
				default: inst_addr <= inst_addr_next;
			endcase
		end
	end
	
	assign
		inst_data_ctrl = inst_data,
		addr_rs = inst_data[25:21],
		addr_rt = inst_data[20:16],
		addr_rd = inst_data[15:11],
		data_imm = imm_ext_ctrl ? {{16{inst_data[15]}}, inst_data[15:0]} : {16'b0, inst_data[15:0]};
	
	always @(*) begin
		regw_addr = inst_data[15:11];
		case (wb_addr_src_ctrl)
			WB_ADDR_RD: regw_addr = addr_rd;
			WB_ADDR_RT: regw_addr = addr_rt;
			WB_ADDR_LINK: regw_addr = GPR_RA;
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
		.en_w(wb_wen_ctrl & cpu_en & ~cpu_rst),
		.addr_w(regw_addr),
		.data_w(regw_data)
		);
	
	assign
		rs_rt_equal = (data_rs == data_rt);
	
	always @(*) begin
		opa = data_rs;
		opb = data_rt;
		case (exe_a_src_ctrl)
			EXE_A_RS: opa = data_rs;
			EXE_A_LINK: opa = inst_addr_next;
			EXE_A_BRANCH: opa = inst_addr_next;
		endcase
		case (exe_b_src_ctrl)
			EXE_B_RT: opb = data_rt;
			EXE_B_IMM: opb = data_imm;
			EXE_B_LINK: opb = 32'h0;  // linked address is the next one of current instruction
			EXE_B_BRANCH: opb = {data_imm[29:0], 2'b0};
		endcase
	end
	
	alu ALU (
		.a(opa),
		.b(opb),
		.oper(exe_alu_oper_ctrl),
		.result(alu_out)
		);
	
	assign
		mem_ren = mem_ren_ctrl & cpu_en & ~cpu_rst,
		mem_wen = mem_wen_ctrl & cpu_en & ~cpu_rst,
		mem_addr = alu_out,
		mem_dout = data_rt;
	
	always @(*) begin
		regw_data = alu_out;
		case (wb_data_src_ctrl)
			WB_DATA_ALU: regw_data = alu_out;
			WB_DATA_MEM: regw_data = mem_din;
		endcase
	end
	
endmodule
