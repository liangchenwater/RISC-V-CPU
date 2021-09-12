`timescale 10ns/1ns
module tb_seq();
     reg clk;
	 reg reset;
	 reg in;
	 reg[7:0] data;
	 
	 wire out;
	 reg i;
	 
 always #20 clk = ~clk;
 
 initial
     begin
	     clk = 0;
		 reset = 0;
		 #20 reset = 1;
	end
	
 //011100101
 initial
     begin
	     in = 0;
		 #30
		 in = 1;
		 #40
		 in = 1;
		 #40
		 in = 1;
		 #40
		 in = 0;
		 #40
		 in = 0;
		 #40
		 in = 1;
		 #40
		 in = 0;
		 #40
		 in = 1;
		 #40
		 $finish;
		 end
		
/*
 initial
      begin
	     $readmemh("data.txt",data);
		 for(i=0;i<8;i=i+1)
		     begin
			     #40
				 $display("data=%d",data[i]);
			 end
		 #200
		 $finish;
    end
*/
 seq seq_u1(
     .clk(clk),
	 .reset(reset),
	 .in(in),
	 .out(out)
	);
endmodule