module data_ram (
	input wire clk,
	input wire we,
	input wire [31:0] addr,
	input wire [31:0] din,
	output reg [31:0] dout
	);
	
	parameter
		ADDR_WIDTH = 5;
	
	reg [31:0] data [0:(1<<ADDR_WIDTH)-1];
	
	initial	begin
		$readmemh("data_mem.hex", data);
	end
	
	always @(negedge clk) begin
		if (we && addr[31:ADDR_WIDTH]==0)
			data[addr[ADDR_WIDTH-1:0]] <= din;
	end
	
	reg [31:0] out;
	always @(negedge clk) begin
		out <= data[addr[ADDR_WIDTH-1:0]];
	end
	
	always @(*) begin
		if (addr[31:ADDR_WIDTH] != 0)
			dout = 32'h0;
		else
			dout = out;
	end
	
endmodule
