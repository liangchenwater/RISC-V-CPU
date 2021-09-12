`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:20 09/25/2017 
// Design Name: 
// Module Name:    vga_debug 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module vga_debug(
	input clk,
	input [31:0] debug_data,
	input [9:0] h_count,
	input [9:0] v_count,
	
	output [6:0] debug_addr,
	output [11:0] dout
	
    );
	 
	function [7:0] num2str;
		input [3:0] number;
		begin
			if (number < 10)
				num2str = "0" + number;
			else
				num2str = "A" - 10 + number;
		end
	endfunction
	
reg [31:0] data_buf [0:3];
reg [7:0] ascii_code;
reg [8*7:0] strdata;

wire pixel;
wire should_latch_debug_data = (h_count < 10'd143) && (h_count[2:0] == 3'b111) && (row_addr[3:0] == 4'b0000);
wire  [9:0] row_addr =  v_count - 10'd35;     // pixel ram row addr 
wire  [9:0] col_addr =  h_count - 10'd143;    // pixel ram col addr 

wire [4:0] char_index_row = row_addr[8:4] - 2;
wire [6:0] char_index_col = (h_count < 10'd143) ? 0 : (col_addr / 8 + 1); 
wire [1:0] char_page = char_index_col / 20;
wire [4:0] char_index_in_page = char_index_col % 20;
wire [2:0] char_index_in_reg_buf = 7 - (char_index_in_page - 9);

assign dout = pixel ? 12'b111111111111 : 12'b111100000000;
assign debug_addr = {char_index_row , h_count[4:3]};
wire[7:0] current_display_reg_addr = {0, char_index_row, char_page};

always @(posedge clk) begin
	if (should_latch_debug_data) begin
		data_buf[debug_addr[1:0]] <= debug_data; 
	end
end

always @(posedge clk) begin
	if (col_addr[2:0] == 3'b111) begin
		ascii_code <= " ";
		if ((char_index_in_page >= 10) && (char_index_in_page <= 10 + 7)) begin
			ascii_code <=  num2str(data_buf[char_page][(7 - (char_index_in_page - 10)) * 4  +: 4]);
		end
		if ((char_index_in_page >= 2) && (char_index_in_page <= 8)) begin
			ascii_code <= strdata[(6 - (char_index_in_page - 2)) * 8 +:8];
		end
		if ((row_addr < 2 * 16) || (row_addr >= 480 - 2 * 16)) begin
			ascii_code <= " ";
		end
	end
end

always @(posedge clk) begin
	
		case (current_display_reg_addr[7:5])
			3'b000: strdata = {"REGS-", num2str(current_display_reg_addr[5:4]), num2str(current_display_reg_addr[3:0])};
			3'b001: case (current_display_reg_addr[4:0])
				// datapath debug signals, MUST be compatible with 'debug_data_signal' in 'datapath.v'
				0: strdata = "IF-ADDR";
				1: strdata = "IF-INST";
				2: strdata = "ID-ADDR";
				3: strdata = "ID-INST";
				4: strdata = "EX-ADDR";
				5: strdata = "EX-INST";
				6: strdata = "MM-ADDR";
				7: strdata = "MM-INST";
				8: strdata = "RS-ADDR";
				9: strdata = "RS-DATA";
				10: strdata = "RT-ADDR";
				11: strdata = "RT-DATA";
				12: strdata = "IMMEDAT";
				13: strdata = "ALU-AIN";
				14: strdata = "ALU-BIN";
				15: strdata = "ALU-OUT";
				16: strdata = "-------";
				17: strdata = "FORWARD";
				18: strdata = "MEMOPER";
				19: strdata = "MEMADDR";
				20: strdata = "MEMDATR";
				21: strdata = "MEMDATW";
				22: strdata = "WB-ADDR";
				23: strdata = "WB-DATA";
				default: strdata = "RESERVE";
			endcase
			3'b010: strdata = {"CP0S-", num2str(current_display_reg_addr[5:4]), num2str(current_display_reg_addr[3:0])};
			default: strdata = "RESERVE";
		endcase
end


pc_vga_8x16_00_7F FONT_8X16 (
	.clk(clk),
	.ascii_code(ascii_code[6:0]),
	.row(row_addr[3:0]),
	.col(col_addr[2:0]),
	.row_of_pixels(pixel)
);


endmodule
