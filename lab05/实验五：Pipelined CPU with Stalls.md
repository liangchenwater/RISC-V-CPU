#### 实验五：Pipelined CPU with Stalls



- 1、实验目的
  - 理解流水线CPU的基本原理和组织结构
  - 掌握五级流水线的工作过程和设计方法
  - 理解流水线取指、译码、执行、存储器访问、写回的原理
  - 理解流水线CPU停机的原理与解决办法
  - 设计流水线测试程序



- 2、实验设备

  - Intel Core i7、32GRAM计算机，Windows10家庭版操作系统

  - Sword4.0开发板

  - VIVADO 2020开发工具

    

- 3、实验原理和实验内容

  

  **总览**

  - 我由于是自己设计的流水线，故没有严格按照ppt的步骤来做，而是在单周期的基础上，修改datapath和controller，先将执行单条指令的过程切成五段，再用插入NOP的方式来处理data hazards和control hazards。

  

  **五段流水**

  - 与单周期CPU相比，流水线CPU利用不同 阶段用不同时钟周期，功能部件可复用的特点，将不同指令的不同阶段重叠执行，提高了执行效率。

    <img src="C:\Users\liang\Desktop\5-1.PNG" alt="5-1" style="zoom:60%;" />

  - IF(Instruction Fetch)段：取指令，决定下一拍PC的位置。

  - ID(Instruction Decode)段：译码，从指令中读出立即数、寄存器地址，并读取寄存器数据。

  - EX(Execution)段：执行，也叫ALU段，计算写回目标寄存器的值、即将被读取的memory的地址或PC可能跳转到的位置。

  - MEM(Memory Access)段：访问Memory，此段只在当前指令是Load/Store时有具体操作，对于其余指令则为空操作。

  - WB(Write Back)段：将计算出或从memory取出的值写回寄存器。

  - 两段间值的保存：由于对于每个阶段，每一拍都有新的指令进来，于是我们在两段之间要添加寄存器保存当前指令对应的一些重要的值，比如PC、指令本身、ALU相关数据等等。即我们要添加IF/ID，ID/EX，EX/MEM，MEM/WB四组寄存器在datapath中。

  - 特别注意，对于不同类型的指令，每段执行的操作有所不同，如下表所示：

    ![5-2](C:\Users\liang\Desktop\5-2.PNG)

  

  **冒险处理**

  - 冒险可以分为以下三种：
    - 结构冒险（ Structural hazard ）：硬件不支持多条指令在同一时钟周期执行
    - 数据冒险（ Data hazard ）：当前指令的执行需要等待前一条指令的数据结果
    - 控制冒险（ Control hazard ）：指令非顺序执行而导致下一条执行的指令不是真实期望的

  - 我们还可以将数据冒险进一步细分：
    - RAW（Read After Write）：当指令i写回结果之前，指令j就已经对此结果发起读操作
    - WAW（Write After Write）：当指令i写回结果之前，指令j就已经将结果写回
    - WAR（Write After Read）：当指令i读取数据之前，指令j就已经将结果写回

  - 对于多种冒险，我们有统一的处理方法。即检测到冒险，便插入NOP（Stall），直至冒险不再存在，如下图所示：

    <img src="C:\Users\liang\Desktop\5-3.PNG" alt="5-3" style="zoom:60%;" />

  - 插入NOP明显会减慢效率，更高级的方法是将Data Hazards和Control Hazards分开处理：

    - 对于Data Hazards，我们使用Forwarding（旁路）的方法，将结果“向后”传给与当前指令有数据竞争的指令。这样做的代价是电路便得复杂。

      ![5-4](C:\Users\liang\Desktop\5-4.PNG)

    - 对于Control Hazards，我们使用Prediction（分支预测）的方法。分支预测分为静态预测（简单预测分 支指令的条件总是满足或不满足）和动态预测（根据实际执行情况动态调整预测位），预测准确则无时间损失，若预测不准确则对分支后不该执行的指令进行冲刷。

  - 在本实验中，我采取stall的策略，具体描述如下：

    | 冒险类型                    | 在下列段插入NOP | 先执行的指令到下列段时需插入NOP | Stall拍数 |
    | --------------------------- | :-------------: | ------------------------------- | --------- |
    | Data Hazards                |      EX段       | MEM段、WB段                     | 2拍       |
    | Control Hazards（SB type）  |      IF段       | ID段、EX段、MEM段               | 3拍       |
    | Control Hazards （UJ type） |      IF段       | ID段、EX段                      | 2拍       |

    



- 代码展示

  **datapath.v**

  - 模块定义：

  ```verilog
  //en==0 means stop，but not reset
  //The real IF is related with IMem, and the real Mem is related with DMem, which are implicit in datapath
  module datapath(
  	input clk,
  	input rst,
  	input[31:0] Data_in,
  	input if_en,
  	input id_en,
  	input ex_en,
  	input mem_en,
  	input if_rst,
  	input id_rst,
  	input ex_rst,
  	input mem_rst,    
  	input[1:0] ImmSel,
      input ALUSrc_B,
      input[1:0] MemtoReg,
      input[2:0] ALU_Control,
  	input MemRW,
  	input RegWrite,
  	input [1:0] pc_src_control,
  	input[31:0] instr,
  	input Rs1_used,
  	input Rs2_used,
  	output reg [31:0] inst_if,
  	output reg [31:0] inst_id,
  	output reg [31:0] PC_ex,
  	output reg [31:0] PC_id,
      output reg[31:0] PC_if,
  	output reg[31:0] Data_out,
  	output reg[31:0] Wt_data,
  	output reg[31:0] Addr_out,
  	output reg MemRW_mem,
  	output reg MemRW_ex,
  	output reg[31:0] PC_out,
  	output reg[1:0] pc_src_id,
  	output reg[4:0] Rd_addr_ex,
  	output reg[4:0] Rd_addr_mem,
  	output reg Rs1_used_id,
  	output reg Rs2_used_id
      );
  ```

  - IF+IF/ID：

    ```VERILOG
     //IF signals
        wire[31:0] PC_next;
        wire[31:0] PC_jump;
        wire[31:0] PC_branch;
        wire[31:0] Imm_id;
        wire rs1_rs2_eq;
        reg[31:0] Imm_ex;
        reg[1:0] pc_src_ex;
        //IF
        assign PC_next=PC_out+4;
        assign PC_jump=PC_id+Imm_id;
        assign PC_branch=PC_ex+Imm_ex;
        
          //IF/ID
        always @ (posedge clk or posedge rst) begin
             //initialization
            if(rst) begin PC_out<=0; end
            else if(if_rst) begin 
        	//PC should be fixed when if stage is reset
        	inst_if<=32'h00000013;
        	end
         //jal(done immediately in the same clock after jal is decoded)
        	else if(pc_src_id==2'b11) begin
        	PC_out<=PC_jump;
        	end
         //bne and beq(done immediately in the same clock after branch is executed)
          else if((pc_src_ex==2'b01&&rs1_rs2_eq)||(pc_src_ex==2'b10&&!rs1_rs2_eq)) begin
             PC_out<=PC_branch;
            end
            else if(if_en) begin
        	inst_if<=instr;
        	PC_if<=PC_out;
        	PC_out<=PC_next;
        	end
        	end
    ```

  - ID+ID/EX：

    ```verilog
     //ID signals
        wire[4:0] Rs1_addr_id;
        wire[4:0] Rs2_addr_id;
        wire[4:0] Rd_addr_id;
        wire[31:0] Rs1_data_id;
        wire[31:0] Rs2_data_id;
        reg[4:0] Rd_addr_wb;
        reg ALUSrc_B_id;
        reg[1:0] MemtoReg_id;
        reg RegWrite_id;
        reg MemRW_id;
        reg[2:0] ALU_Control_id;
        reg RegWrite_wb;
        reg RegWrite_mem;
        reg[1:0] ImmSel_id;
        //ID
        assign
        Rs1_addr_id=inst_id[19:15],
        Rs2_addr_id=inst_id[24:20],
        Rd_addr_id=inst_id[11:7];
        
        ImmGen ImmGen(.ImmSel(ImmSel_id), .inst_field(inst_id), .Imm_out(Imm_id));
     
        //essentially combined with WB
        Regs Regs(
        .clk(clk),
        .rst(rst),
        .Rs1_addr(Rs1_addr_id),
        .Rs2_addr(Rs2_addr_id),
        .Wt_addr(Rd_addr_mem),
        .Wt_data(Wt_data),
        .RegWrite(RegWrite_mem),
        .Rs1_data(Rs1_data_id),
        .Rs2_data(Rs2_data_id)
        );
        //ID/EX
        always @ (posedge clk) begin
        	if(id_rst) begin
        	PC_id<=0;
        	inst_id<=32'h00000013;
        	pc_src_id<=0;
        	ALUSrc_B_id<=0;
        	MemtoReg_id<=0;
        	RegWrite_id<=0;
        	MemRW_id<=0;
        	ALU_Control_id<=0;
        	Rs1_used_id<=0;
        	Rs2_used_id<=0;
        	ImmSel_id<=0;
        	end
        	else if(id_en) begin
        	PC_id<=PC_if;
        	inst_id<=inst_if;
        	pc_src_id<=pc_src_control;
        	ALUSrc_B_id<=ALUSrc_B;
        	MemtoReg_id<=MemtoReg;
        	RegWrite_id<=RegWrite;
        	MemRW_id<=MemRW;
        	ALU_Control_id<=ALU_Control;
        	Rs1_used_id<=Rs1_used;
        	Rs2_used_id<=Rs2_used;
        	ImmSel_id<=ImmSel;
        	end
        end
    ```

  - EX+EX/MEM：

    ```verilog
     //EX signals
        reg[31:0] inst_ex;
        wire[31:0] ALU_out_ex;
        reg[31:0] Rs1_data_ex;
        reg[31:0] Rs2_data_ex;
        reg ALUSrc_B_ex;
        reg[1:0] MemtoReg_ex;
        reg RegWrite_ex;
        reg [2:0] ALU_Control_ex;
        reg[31:0] A;
        reg[31:0] B;   
        //EX
        //alu
        always @ * begin
        A=Rs1_data_ex;
        B=Rs2_data_ex;
        if(ALUSrc_B_ex) begin B=Imm_ex;end   
        end
      alu alu(.A(A), .B(B), .ALU_operation(ALU_Control_ex),.res(ALU_out_ex),.zero(rs1_rs2_eq));
        //EX/MEM
        always @ (posedge clk) begin
        if(ex_rst) begin 
        PC_ex<=0;
        inst_ex<=32'h00000013;
        Rd_addr_ex<=0;
        Rs1_data_ex<=0;
        Rs2_data_ex<=0;
        Imm_ex<=0;
        ALUSrc_B_ex<=0;
        MemtoReg_ex<=0;
        RegWrite_ex<=0;
        ALU_Control_ex<=0;
        MemRW_ex<=0;
        pc_src_ex<=0;
        end
        else if(ex_en) begin
        PC_ex<=PC_id;
        inst_ex<=inst_id;
        Rd_addr_ex<=Rd_addr_id;
        Rs1_data_ex<=Rs1_data_id;
        Rs2_data_ex<=Rs2_data_id;
        Imm_ex<=Imm_id;
        ALUSrc_B_ex<=ALUSrc_B_id;
        MemtoReg_ex<=MemtoReg_id;
        RegWrite_ex<=RegWrite_id;
        ALU_Control_ex<=ALU_Control_id;
        MemRW_ex<=MemRW_id;
        pc_src_ex<=pc_src_id;
        end
        end
    ```

  - MEM+MEM/WB：

    ```verilog
      //MEM signals
      reg[31:0] PC_mem;
      reg[31:0] inst_mem;
      reg[31:0] Imm_mem;
      reg[1:0] MemtoReg_mem;
      reg[31:0] ALU_out_mem;
      reg [31:0] Rs2_data_mem;
      //MEM
      //for store and load(done immediately in the same clock after the corresponding instruction passed the execute stage)
        always @ * begin
        Data_out=Rs2_data_mem;
        Addr_out=ALU_out_mem;
        end  
      //MEM/WB
      always @(posedge clk) begin
      if(mem_rst) begin
      PC_mem<=0;
      inst_mem<=0;
      Rd_addr_mem<=0;
      MemtoReg_mem<=0;
      RegWrite_mem<=0;
      ALU_out_mem<=0;
      MemRW_mem<=0;
      Imm_mem<=0;
      Rs2_data_mem<=0;
      end
      else if(mem_en)begin
      PC_mem<=PC_ex;
      inst_mem<=inst_ex;
      Rd_addr_mem<=Rd_addr_ex;
      MemtoReg_mem<=MemtoReg_ex;
      RegWrite_mem<=RegWrite_ex;
      ALU_out_mem<=ALU_out_ex;
      MemRW_mem<=MemRW_ex;
      Imm_mem<=Imm_ex;
      Rs2_data_mem<=Rs2_data_ex;
      end
     end
    
    //WB(done immediately in the same clock after the corresponding instruction passed the mem stage)
     always@ * begin
      	case(MemtoReg_mem) 
       	2'b00: begin Wt_data= ALU_out_mem;end
       	2'b01:begin  Wt_data=Data_in; end
       	2'b10: begin Wt_data=PC_mem+4;end
       	endcase
     end
       	
    endmodule
    ```

  **controller.v**

  - 模块定义：

    ```VERILOG
    module controller(
        input rst,
        input [4:0] OPcode,
        input [2:0] Fun3,
        input Fun7,
        input[4:0] Rs1_addr_id,
        input[4:0] Rs2_addr_id,
        input Rs1_used_id,
        input Rs2_used_id,
        input[4:0] Rd_addr_ex,
        input[4:0] Rd_addr_mem,
        input[1:0] pc_src_id,
        output reg[1:0] ImmSel,
        output reg ALUSrc_B,
        output reg[1:0] MemtoReg,
        //0-next
        //1-branch
        //2-branchn
        //3-jump
        output reg[1:0] pc_src_control,
        output reg RegWrite,
        output reg MemRW,
        output reg [2:0] ALU_Control,
        output reg if_rst,  // stage reset signal
    	output reg if_en,  // stage enable signal
    	output reg id_rst,
    	output reg id_en,
    	output reg ex_rst,
    	output reg ex_en,
    	output reg mem_rst,
    	output reg mem_en,
    	output reg Rs1_used,
        output reg Rs2_used
        );
    ```

  - 一级解码+二级解码：

    ```VERILOG
        //first stage "decoding"
        reg [1:0] ALUop;
       `define CPU_ctrl_signals {ALUSrc_B, MemtoReg, RegWrite, MemRW,pc_src_control,ALUop, ImmSel,Rs1_used,Rs2_used}
        always @*begin
            case(OPcode)
            5'b01100: begin `CPU_ctrl_signals={1'b0,2'b00,1'b1,1'b0,2'b00,2'b00,2'b00,1'b1,1'b1}; end //ALU
            5'b00000: begin `CPU_ctrl_signals={1'b1,2'b01,1'b1,1'b0,2'b00,2'b01,2'b00,1'b1,1'b0}; end //Load
            5'b01000: begin `CPU_ctrl_signals={1'b1,2'b00,1'b0,1'b1,2'b00,2'b10,2'b01,1'b1,1'b1}; end //Store
            5'b11000: begin 
            case(Fun3)
            3'b000: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,2'b01,2'b11,2'b10,1'b1,1'b1}; end //Beq
            3'b001: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,2'b10,2'b11,2'b10,1'b1,1'b1}; end //Bne
            endcase
            end
            5'b11011: begin `CPU_ctrl_signals={1'b0,2'b10,1'b1,1'b0,2'b11,2'b00,2'b11,1'b0,1'b0}; end //Jump
            5'b00100: begin `CPU_ctrl_signals={1'b1,2'b00,1'b1,1'b0,2'b00,2'b01,2'b00,1'b1,1'b0}; end //Imm
            endcase
        end
        
        //second stage "decoding"
        wire[3:0] Fun;
        assign Fun={Fun3,Fun7};
        always@ * begin 
            case(ALUop)
                2'b10:ALU_Control=3'b010; //addr addition
                2'b11:ALU_Control= 3'b110 ; //sub for beq
                2'b00:
                case(Fun)
                    4'b0000: ALU_Control=3'b010; //add
                    4'b0001: ALU_Control=3'b110 ;//sub
                    4'b1110: ALU_Control=3'b000;//and 
                    4'b1100: ALU_Control=3'b001;//or 
                    4'b0100: ALU_Control=3'b111; //slt
                    4'b1010: ALU_Control=3'b101; //srl
                    4'b1000: ALU_Control=3'b011; //xor
                    default: ALU_Control=3'bx;
                 endcase
                 2'b01:
                 case(OPcode)
                    5'b00000: ALU_Control=3'b010;//load
                    5'b00100: //Imm
                 case(Fun3)
                    3'b010: ALU_Control=3'b111;//slti
                    3'b000: ALU_Control=3'b010;//addi
                   3'b100: ALU_Control=3'b011;//xori
                    3'b110: ALU_Control=3'b001;//ori
                    3'b111: ALU_Control=3'b000;//andi
                    3'b101: ALU_Control=3'b101;//srli
                    //jalr
                   default:ALU_Control=3'bx;
               endcase
               default: ALU_Control=3'bx;
                     endcase
            endcase
          end
    ```

  - 冒险探测：

    ```VERILOG
     //pipeline control
          reg Data_stall;
          reg Control_stall;
          //data hazards
          always @ * begin
          Data_stall=0;
          if(Rs1_used_id && Rs1_addr_id!=0 && Rs1_addr_id==Rd_addr_ex) begin Data_stall=1; end
          else if(Rs1_used_id && Rs1_addr_id!=0 && Rs1_addr_id==Rd_addr_mem) begin Data_stall=1; end
          else if(Rs2_used_id && Rs2_addr_id!=0 && Rs2_addr_id==Rd_addr_ex) begin Data_stall=1; end
          else if(Rs2_used_id && Rs2_addr_id!=0 && Rs2_addr_id==Rd_addr_mem) begin Data_stall=1; end
          end
          //control hazards
          always @ * begin
          Control_stall=0;
          if(pc_src_control||pc_src_id==2'b01||pc_src_id==2'b10) begin Control_stall=1; end
          end
    ```

  - 检测到冒险后，传相关信号给datapath，插入NOP：

    ```VERILOG
      //flush
        always @(*) begin
    		if_rst = 0;
    		id_rst = 0;
    		ex_rst = 0;
    		mem_rst = 0;
    		if_en = 1;
    		id_en = 1;
    		ex_en = 1;
    		mem_en = 1;
    		if (rst) begin
    			if_rst = 1;
    			id_rst = 1;
    			ex_rst = 1;
    			mem_rst = 1;
    		end
    		// the instruction to write:MEM, WB. stall 2 clocks.
    		else if (Data_stall) begin
    			if_en = 0;
    			id_en = 0;
    			ex_rst = 1;
    		end
    		//For the instruction may branch: ID,EX. stall 3 clocks. For the insturction may jump: ID. stall 2 clock.
    		else if (Control_stall) begin
    		    if_rst=1;
    		end
    	end
    endmodule
    ```



​		**pCPU.v(顶层模块)**

```verilog
module pCPU(
input clk,
input rst,
input [31:0] Data_in,
input[31:0] instr,
output[31:0] PC_out,
output [31:0] PC_if,
output[31:0] PC_id,
output[31:0] PC_ex,
output [31:0] inst_if,
output[31:0] inst_id,
output[31:0] Addr_out,
output[31:0] Data_out,
output[31:0] Wt_data,
output MemRW,
output MemRW_ex
 );
    wire if_en;
	wire id_en;
	wire ex_en;
	wire mem_en;
	wire if_rst;
	wire id_rst;
	wire ex_rst;
	wire mem_rst;   
	wire[1:0] ImmSel;
    wire ALUSrc_B;
    wire[1:0] MemtoReg;
    wire[2:0] ALU_Control;
	wire RegWrite;
	wire [1:0] pc_src_control;
	wire[1:0] pc_src_id;
	wire[4:0] Rd_addr_ex;
	wire[4:0] Rd_addr_mem;
	wire MemRW_in_datapath;
    wire Rs1_used;
    wire Rs2_used;
    wire Rs1_used_id;
    wire Rs2_used_id;
    
 datapath datapath(
    .clk(clk),
	.rst(rst),
	.Data_in(Data_in),
	.if_en(if_en),
	.id_en(id_en),
	.ex_en(ex_en),
	.mem_en(mem_en),
	.if_rst(if_rst),
	.id_rst(id_rst),
	.ex_rst(ex_rst),
	 .mem_rst(mem_rst),  
	.ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .ALU_Control(ALU_Control),
	.MemRW(MemRW_in_datapath),
	.RegWrite(RegWrite),
	.pc_src_control(pc_src_control),
	.instr(instr),
	 .inst_id(inst_id),
	 .PC_if(PC_if),
	 .PC_ex(PC_ex),
	 .PC_id(PC_id),
	 .Data_out(Data_out),
	  .Wt_data(Wt_data),
	 .Addr_out(Addr_out),
	 .MemRW_mem(MemRW),
	.MemRW_ex(MemRW_ex),
	 .PC_out(PC_out),
	.pc_src_id(pc_src_id),
	.Rd_addr_ex(Rd_addr_ex),
	.Rd_addr_mem(Rd_addr_mem),
	.inst_if(inst_if),
	.Rs1_used(Rs1_used),
	.Rs2_used(Rs2_used),
	.Rs1_used_id(Rs1_used_id),
	.Rs2_used_id(Rs2_used_id)
 );
 
 wire[4:0] OPcode;
 wire[2:0] Fun3;
 wire Fun7;
 wire[4:0] Rs1_addr_id;
 wire[4:0] Rs2_addr_id;
 assign
 OPcode=inst_if[6:2],
 Fun3=inst_if[14:12],
 Fun7=inst_if[30],
 Rs1_addr_id=inst_id[19:15],
 Rs2_addr_id=inst_id[24:20];
 
 controller controller(
    .rst(rst),
    .OPcode(OPcode),
    .Fun3(Fun3),
    .Fun7(Fun7),
    .Rs1_addr_id(Rs1_addr_id),
    .Rs2_addr_id(Rs2_addr_id),
    .Rd_addr_ex(Rd_addr_ex),
    .Rd_addr_mem(Rd_addr_mem),
    .pc_src_id(pc_src_id),
    .ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .pc_src_control(pc_src_control),
    .RegWrite(RegWrite),
    .MemRW(MemRW_in_datapath),
    .ALU_Control(ALU_Control),
    .if_rst(if_rst), 
	.if_en(if_en), 
	.id_rst(id_rst),
	.id_en(id_en),
	.ex_rst(ex_rst),
	.ex_en(ex_en),
	.mem_rst(mem_rst),
	.mem_en(mem_en),
	.Rs1_used(Rs1_used),
	.Rs2_used(Rs2_used),
	.Rs1_used_id(Rs1_used_id),
	.Rs2_used_id(Rs2_used_id)
 );
endmodule
```



***特别注意，按照我的写法，Controller应在IF与ID段之间执行。理解Controller在哪里执行对正确插入Stall至关重要***



- 仿真结果：

  - 由于我直接写好了stall功能，故测试时也直接测试h_mem.coe文件。

    ![5-18](C:\Users\liang\Desktop\5-18.PNG)

  - 几个关键测试点为：

    | PC   | instruction                     |               现象                |
    | ---- | ------------------------------- | :-------------------------------: |
    | 0x18 | 0x00128333（add x6 x5 x1）      | Stall2拍后执行，alu_res==80000001 |
    | 0x38 | 0x00818663 (beq x3,x8,loop1)    |      Stall3拍后，PC跳到0x44       |
    | 0x68 | 0x00C71463（bne x14,x12,loop2） |      Stall3拍后，PC跳到0x70       |
    | 0x98 | 0xF69FF06F （jal x0,main）      |       Stall2拍后，PC跳回0x0       |

    在下文中，我把上标中4个测试点称为测试点1-4。

  - 测试点1：

    ![5-5](C:\Users\liang\Desktop\5-5.PNG)

    可以看到，PC_ex为0x14时，ALU_out_ex为8，对应指令lw x5,0x8(x0) ，之后Stall两拍。等到lw x5, 0x8(x0)这条指令执行完WB段时，PC_ex为0x18，ALU_out_ex为80000001，符合预期。

  - 测试点2：

    <img src="C:\Users\liang\Desktop\5-6.PNG" alt="5-6" style="zoom:120%;" />

    可以看到，恰当PC=0x38的这条指令执行完MEM段后，IF段stall结束，得到应跳至0x44的结论。共stall3拍。PC_out信号即为IF段的PC_next。

  - 测试点3：

    <img src="C:\Users\liang\Desktop\5-7.PNG" alt="5-7" style="zoom:120%;" />

    可以看到，同上，恰当PC=0x68的这条指令执行完MEM段后，IF段stall结束，得到应条至0x70的结论。共stall3拍。

  - 测试点4：

    <img src="C:\Users\liang\Desktop\5-8.PNG" alt="5-8" style="zoom:120%;" />

    可以看到，恰当PC=0x98的这条指令执行完EX段后，IF段stall结束，得到应跳回0x0的结论。共stall2拍。特别注意UJ-type比SB-type少stall一拍是因为UJ-type不需要条件判断，而SB-type需要条件判断，所以SB-type比如要经过EX段才能决定是否跳转，而跳转位置在上一段（ID段）便已经求出来了。



- 上板结果：

  - 测试点1：

    当PC=0x18执行完ID段后，stall开始：

    ![5-9](C:\Users\liang\Desktop\5-9.JPG)

    stall两拍后，可以看到PC=0x18的指令到EX段，alu_res为80000001：

    ![5-10](C:\Users\liang\Desktop\5-10.JPG)

    七段数码管显示：

    ![5-11](C:\Users\liang\Desktop\5-11.JPG)

  - 测试点2：

    PC=0x38执行完IF段后，开始stall：

    ![5-12](C:\Users\liang\Desktop\5-12.JPG)

    stall完三拍后，可以看到pc_if为0x44：

    ![5-13](C:\Users\liang\Desktop\5-13.JPG)

  - 测试点3：

    PC=0x68执行完IF段后，开始stall：

    ![5-14](C:\Users\liang\Desktop\5-14.JPG)

    stall完三拍后，PC_if为0x70：

    ![5-15](C:\Users\liang\Desktop\5-15.JPG)

  - 测试点4：

    PC=0x98执行完IF段后，开始stall：

    ![5-16](C:\Users\liang\Desktop\5-16.JPG)

    stall完两拍后，PC_if为0x0：

    ![5-17](C:\Users\liang\Desktop\5-17.JPG)



- 心得体会

  ​		由于实验4我就是完全用代码完成的，自我感觉已经能用verilog实现一些相对复杂的功能，于是我在实验5中便尝试一气呵成，直接用代码写完带stall的流水线。不得不说，这个过程还是相当艰苦的。

  ​		起初我对于时序电路的理解不够深刻，故也就难以理解时序电路（datapath）和组合电路（controller）配合使用时产生的种种现象。而流水线的正确实现则要求每一拍必须要卡好，必须要弄懂什么信号的变化触发哪条表达式。经过梳理，我发现controller是在IF段后立即执行的，由新取回来的instruction触发；同时，data RAM是时钟下降沿触发，即比datapath的时钟慢半拍。弄懂这两点后，我才一步步设计出正确的带stall的流水线。

  ​		详细的需要注意的点，我都写在了代码注释里，比如处理Control Hazards引起的stall时，为了还能”找回“stall前的PC，IF段的PC不变，仅仅将指令flush为NOP等等。

  