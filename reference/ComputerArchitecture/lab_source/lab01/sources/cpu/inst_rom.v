module inst_rom (
	input wire clk,
	input wire [31:0] addr,
	output wire [31:0] dout
	);
	
	parameter
		ADDR_WIDTH = 6;
	
	reg [31:0] data [0:(1<<ADDR_WIDTH)-1];
	
	initial	begin
		$readmemh("inst_mem.hex", data);
	end
	
	assign dout = (addr[31:ADDR_WIDTH] != 0) ? 32'b0 : data[addr[ADDR_WIDTH-1:0]];

//	always @(*) begin
//		if (addr[31:ADDR_WIDTH] != 0)
//			dout = 32'h0;
//		else
//			dout = data[addr[ADDR_WIDTH-1:0]];
//	end
	
endmodule
