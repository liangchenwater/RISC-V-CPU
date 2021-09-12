#### 实验4补充：Single Cycle CPU with Interrupts



- 实验目的
  - **深入理解CPU结构**
  - **学习如何提高CPU使用效率**
  - **学习CPU中断工作原理**
  - **设计中断测试程序**



- 实验环境
  - Intel Core i7、32GRAM计算机，Windows10家庭版操作系统
  - Sword4.0开发板
  - VIVADO 2020开发工具



- 实验原理和实验和内容

  **总览**

  - 在实验四的基础上，我实现了中断和指令扩展。对controller的修改主要包括对扩展指令(lui、sll/slli、sltu、bne)的解码、对中断指令（ecall、mret）的解码和对ill instruction的识别。对datapath的修改主要是根据中断信号的不同，按照中断向量表，决定PC该跳转到的位置。

  

  **中断处理**

  - 中断按照信号来源，可以分为外中断和内中断：
    - **外中断(又称中断)：指来自处理器和主存之外的中断**
    - **内中断(又称异常)：指来自处理器和主存内部的中断**
  - 中断处理程序的主要工作包括：
    - **保护CPU现场**
    - **处理发生的中断事件**
    - **恢复正常操作**

  - 在本实验中，我们将中断的处理简化，具体分为以下部分：

    - **外部中断（int）触发中断或非法指令（illegal）触发异常或ecall系统调用**

    - **响应mtvec寄存器定义的PC值分别针对int为0x0c，ecall为0x08，illegal为0x04**

    - **mepc<=当前PC+4**

    - **执行异常服务程序**

    - **执行mret指令，返回mepc保存的PC处继续程序流**

      ![4-1](C:\Users\liang\Desktop\4-1.PNG)

  - 另外注意中断的优先级，在实验中，我控制三种中断优先级一样，即不能被彼此打断。于是进入中断后，即赋值interr_en<=0，关掉中断；mret返回后，赋值interr_en<=1，打开中断。

  

  **指令扩展**

  - lui：lui指令将指令中的高20位载入对应寄存器。于是我们要修改两个信号，一个是ImmSel，一个是MemtoReg。修改ImmSel的同时，要修改ImmGen模块，加入一个新的生成立即数的方式。修改MemtoReg后，写回寄存器的来源除了之前的来自alu结果（alu指令）、来自memory（load指令）、来自PC+Imm_out（jal指令），还新增加了直接来自于Imm_out。
  - sll/slli：修改controller的二级解码环节，使得左移信号可以传给alu，完成相关运算。
  - sltu：同上，修改ontroller的二级解码环节，使得比较无符号数的信号可以传给alu，完成相关运算。
  - bne：修改pc_src_control信号，pc_src_control==2‘b10时，代表当前指令为bne。同时在datapath中完成跳转判断，!rs1_rs2_equal，则跳转。
  - illegal instruction：修改controller的一级解码环节，加入interr信号，interr==2’b01时代表当前指令非法。在datapath中，控制PC跳到0x04，mepc<=pc_next。
  - ecall：修改controller的一级解码环节，加入interr信号，interr==2’b10时表当前指令为ecall。在datapath中，控制PC跳到0x08，mepc<=pc_next。
  - mret：修改controller的一级解码环节，加入interr信号，interr==2’b10时表当前指令为mret。在datapath中，控制PC跳回mepc。
  - 外部中断：加入信号INT0，修改datapath可以被INT0的上升沿触发，同时控制PC跳到0x0c，mepc<=pc_next。



- 代码展示

  **datapath.v**

  - 模块定义：

    ```VERILOG
    module datapath(
    input  clk,
    input  rst,
    input INT0,
    //control signals
    input [1:0] pc_src_control,
    input [1:0] interr,
    input [1:0] MemtoReg,
    input ALUSrc_B,
    input  RegWrite,
    input  [2:0] ImmSel,
    input  [3:0] ALU_operation,
    //input data and inst
    input  [31:0] Data_in,
    input  [31:0] Inst_in,
    //output
    output reg [31:0] PC_out,
    output reg [31:0] Data_out,
    output reg [31:0] ALU_out
    );
    ```

  - 中断控制：

    ```VERILOG
    //generate immdiates
        wire [31:0] Imm_out;
        ImmGen IMM(.ImmSel(ImmSel),
        .inst_field(Inst_in),
        .Imm_out(Imm_out));
        //calculate PC
        wire [31:0] PC_next;
        wire [31:0] PC_jump;
        wire [31:0] PC_ecall;
        wire [31:0] PC_ill;
        wire [31:0] PC_hardware;
        wire rs_rt_equal;
        reg [31:0] mepc;
        reg interr_en;
        assign PC_next = PC_out+4;
        assign PC_jump = PC_out+Imm_out;
        assign PC_ecall=32'h00000008;
        assign PC_ill=32'h00000004;
        assign PC_hardware=32'h0000000C;
       
        always @ (posedge clk or posedge rst or posedge INT0) begin
              if(rst) begin PC_out<=0; 
                mepc<=0; 
                interr_en<=1;
                end
           else if(INT0) begin
            if(interr_en) begin
            PC_out<=PC_hardware;
            mepc<=PC_next;
            interr_en<=0;
            end
            end
            else if(pc_src_control==2'b11) begin
                PC_out<= PC_jump;end
            else if(pc_src_control==2'b01) begin
                PC_out<= rs_rt_equal? PC_jump : PC_next; end
            else if(pc_src_control==2'b10) begin
            PC_out<= (!rs_rt_equal)? PC_jump:PC_next;end
            //ill
            else if(interr==2'b01&&interr_en) begin
            PC_out<=PC_ill;
            mepc<=PC_next;
            interr_en<=0;
            end
            //ecall
            else if(interr==2'b10&&interr_en) begin
            PC_out<=PC_ecall;
            mepc<=PC_next;
            interr_en<=0;
            end
            //mret
            else if(interr==2'b11&&(!interr_en)) begin
            PC_out<=mepc;
            interr_en<=1;
            end
            else  begin
                 PC_out <= PC_next;   end
            end
    ```

  - 其余部分：

    ```VERILOG
      //reg
        wire[4:0] Rs1_addr;
        wire[4:0] Rs2_addr;
        wire[4:0] Wt_addr;
        assign 
        Rs1_addr=Inst_in[19:15],
        Rs2_addr=Inst_in[24:20],
        Wt_addr=Inst_in[11:7];
        reg [31:0] Wt_data;
        wire [31:0] Rs1_data;
        wire [31:0] Rs2_data;
        always @ (*) begin
            case(MemtoReg)
            2'b00: Wt_data = ALU_out;
            2'b01: Wt_data = Data_in;
            2'b10: Wt_data=PC_next;
            2'b11: Wt_data=Imm_out;
            endcase
            end
         Regs REG(
         .clk(clk),
         .rst(rst),
         .Rs1_addr(Rs1_addr),
         .Rs2_addr(Rs2_addr),
         .Wt_addr(Wt_addr),
         .Wt_data(Wt_data),
         .RegWrite(RegWrite),
         .Rs1_data(Rs1_data),
         .Rs2_data(Rs2_data)
         );
         assign rs_rt_equal = (Rs1_data==Rs2_data);
         //alu
        reg[31:0] alu_a;
        reg[31:0] alu_b;
        wire zero;
        wire [31:0] alu_out;
        always@(*)begin
        alu_a=Rs1_data;
        case(ALUSrc_B) 
        1'b0:alu_b=Rs2_data;
        1'b1: alu_b=Imm_out;
        endcase
        end
        alu ALU(
        .A(alu_a),
        .B(alu_b),
        .ALU_operation(ALU_operation),
        .res(alu_out),
        .zero(zero)
        );
        //Data_out and ALU_out
        always@(*) begin
        Data_out = Rs2_data;
        ALU_out = alu_out;
        end
    endmodule
    ```

  

  **controller.v**

  - 模块定义：

    ```VERILOG
    module controller(
        input [4:0] OPcode,
        input [2:0] Fun3,
        input Fun7,
        input[11:0] Fun12, //used for system call
        input MIO_ready,
        output reg[2:0] ImmSel,
        output reg ALUSrc_B,
        output reg[1:0] MemtoReg, //00:alu, 01:mem 10:pc+4 11:imm_out (for lui)
        output reg[1:0] pc_src_control, //01:beq, 10:bne, 11:jmp, 100: ill, 101:ecall, 110: mret, 111: hardware
        output reg RegWrite,
        output reg MemRW,
        output reg [3:0] ALU_Control,
        output reg CPU_MIO,
        output reg[1:0] interr //01: ill, 10/11:system call(ecall and mret)
        );
    ```

  - 一级解码：

    ```verilog
       reg [1:0] ALUop;
       `define CPU_ctrl_signals {ALUSrc_B, MemtoReg, RegWrite, MemRW,pc_src_control,ALUop, ImmSel,interr}
        always @*begin
            case(OPcode)
            5'b01100: begin `CPU_ctrl_signals={1'b0,2'b00,1'b1,1'b0,2'b00,2'b00,3'b000,2'b00}; end //ALU
            5'b00000: begin `CPU_ctrl_signals={1'b1,2'b01,1'b1,1'b0,2'b00,2'b01,3'b000,2'b00}; end //Load
            5'b01000: begin `CPU_ctrl_signals={1'b1,2'b00,1'b0,1'b1,2'b00,2'b10,3'b001,2'b00}; end //Store
            5'b11000: begin
            case(Fun3)
            3'b000: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,2'b01,2'b11,3'b010,2'b00}; end //Beq
            3'b001: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,2'b10,2'b11,3'b010,2'b00}; end //Bne
            //ill_instruction
            default: begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,2'b00,2'b00,3'b000,2'b01}; end
            endcase
            end
            5'b11011: begin `CPU_ctrl_signals={1'b0,2'b10,1'b1,1'b0,2'b11,2'b00,3'b011,2'b00}; end //Jump
            5'b00100: begin `CPU_ctrl_signals={1'b1,2'b00,1'b1,1'b0,2'b00,2'b01,3'b000,2'b00}; end //Imm
            5'b11100:  begin//system
            case(Fun12)
            12'h000: begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,2'b00,2'b00,3'b000,2'b10};end //ecall
            12'h302: begin  `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,2'b00,2'b00,3'b000,2'b11};end //mret
             //ill_instruction
            default: begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,2'b00,2'b00,3'b000,2'b01}; end
            endcase
            end
            5'b01101: begin `CPU_ctrl_signals={1'b1,2'b11,1'b1,1'b0,2'b00,2'b01,3'b100,2'b00};end//lui (U-type)
              //ill_instruction
            default: begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,2'b00,2'b00,3'b000,2'b01}; end
            endcase
            end
    ```

  - 二级解码：

    ```VERILOG
     wire[3:0] Fun;
        assign Fun={Fun3,Fun7};
        always@ * begin 
            case(ALUop)
                2'b10:ALU_Control=4'b0010; //addr addition
                2'b11:ALU_Control= 4'b0110 ; //sub for branch
                2'b00:
                case(Fun)
                    4'b0000: ALU_Control=4'b0010; //add
                    4'b0001: ALU_Control=4'b0110 ;//sub
                    4'b1110: ALU_Control=4'b0000;//and 
                    4'b1100: ALU_Control=4'b0001;//or 
                    4'b0100: ALU_Control=4'b0111; //slt
                    4'b0110: ALU_Control=4'b1000; //sltu
                    4'b1010: ALU_Control=4'b0101; //srl
                    4'b0010: ALU_Control=4'b0100; //sll
                    4'b1000: ALU_Control=4'b0011; //xor
                    default: begin
                    //ill alu
                    if(OPcode==5'b01100) begin
                    MemtoReg=2'b10;
                   pc_src_control=3'b100;
                   interr=2'b01;
                    ALU_Control=4'bx;
                    end
                   else begin ALU_Control=4'bx;end
                    end
                 endcase
                 2'b01:
                 case(OPcode)
                    5'b00000: ALU_Control=4'b0010;//load
                    5'b00100: //Imm
                 case(Fun3)
                    3'b010: ALU_Control=4'b0111;//slti
                    3'b000: ALU_Control=4'b0010;//addi
                   3'b100: ALU_Control=4'b0011;//xori
                    3'b110: ALU_Control=4'b0001;//ori
                    3'b111: ALU_Control=4'b0000;//andi
                    3'b101: ALU_Control=4'b0101;//srli
                    3'b001: ALU_Control=4'b0100;//slli
                    //ill imm
                   default: begin
                   MemtoReg=2'b10;
                   pc_src_control=3'b100;
                   interr=2'b01;
                   ALU_Control=4'bx;
                   end
               endcase
               //U-type(lui)
               default: ALU_Control=4'bx;
                     endcase
            endcase
          end
    endmodule
    ```

  

  **顶层模块**

  ```VERILOG
  module SCPUC(
  input wire clk,
  input wire rst,
  input wire INT0,
  input wire [31:0] Inst_in,
  input wire [31:0] Data_in,
  input wire MIO_ready,
  output wire MemRW,
  output wire CPU_MIO,
  output wire [31:0] Addr_out,
  output wire [31:0] Data_out,
  output wire [31:0] PC_out
      );
      wire[4:0] OPcode;
      wire[2:0] Fun3;
      wire[11:0] Fun12;
      wire Fun7;
      assign OPcode=Inst_in[6:2],
      Fun3=Inst_in[14:12],
      Fun7=Inst_in[30],
      Fun12=Inst_in[31:20];
      
      wire[2:0] ImmSel;
      wire ALUSrc_B;
      wire[1:0] MemtoReg;
     wire[1:0] pc_src;
      wire RegWrite;
      wire[3:0] ALU_Control;
      wire[1:0] interr;
      
      controller CONTROL(
      .OPcode(OPcode),
      .Fun3(Fun3),
      .Fun7(Fun7),
      .Fun12(Fun12),
      .MIO_ready(MIO_ready),
      .ImmSel(ImmSel),
      .ALUSrc_B(ALUSrc_B),
      .MemtoReg(MemtoReg),
      .pc_src_control(pc_src),
      .RegWrite(RegWrite),
      .MemRW(MemRW),
      .ALU_Control(ALU_Control),
      .CPU_MIO(CPU_MIO),
      .interr(interr)
      );
      
      datapath DATAPATH(
      .INT0(INT0),
     .ImmSel(ImmSel),
      .ALUSrc_B(ALUSrc_B),
      .MemtoReg(MemtoReg),
      .pc_src_control(pc_src),
      .interr(interr),
      .RegWrite(RegWrite),
      .ALU_operation(ALU_Control),
      .Inst_in(Inst_in),
      .Data_in(Data_in),
      .clk(clk),
      .rst(rst),
      .ALU_out(Addr_out),
      .Data_out(Data_out),
      .PC_out(PC_out)
      );
      
  endmodule
  ```

  

- 测试样例分析

  - 测试程序为I_int.coe

    ![4-2](C:\Users\liang\Desktop\4-2.PNG)

![4-3](C:\Users\liang\Desktop\4-3.PNG)

几个关键测试点为：

| 编号 |    PC    | Instruction                       | 现象                       |
| :--: | :------: | --------------------------------- | -------------------------- |
|  1   |   0x28   | 0x88888137（lui x2, 0x88888）     | x2= 0x88888000             |
|  2   |   0x2c   | 0xFE62DAE3（bge x5 x6 -12）       | ill instruction，PC跳至0x4 |
|  3   |   0x58   | 0x00531463（bne x6, x5, cmd_sub） | PC跳至0x60                 |
|  4   |   0x74   | 0x00000073（ecall）               | 内部中断，PC跳至0x08       |
|  5   |   0xb0   | 0x00129293（slli x5,x5,0x1 ）     | x5= 0x80000000             |
|  6   |   0xc0   | 0x00503733(sltu x14,x0,x5 )       | x14=0x1                    |
|  7   |   0xd0   | 0x30200073(mret)                  | PC跳回mepc                 |
|  8   | 外部中断 | 外部中断                          | 外部中断，PC跳至0x0c       |



- 仿真测试

  - 测试点1：

    ![4-4](C:\Users\liang\Desktop\4-4.PNG)

    观察到Wt_data，即写回寄存器的值为0x88888000，符合预期。

  - 测试点2&测试点7：

    ![4-5](C:\Users\liang\Desktop\4-5.PNG)

    观察到执行到illegal instruction后，PC跳到0x04进入中断服务程序，执行到PC=0xd0后，PC跳回illegal instruction的下一条指令，即PC=0x30。

  - 测试点8：

    <img src="C:\Users\liang\Desktop\4-6.PNG" alt="4-6" style="zoom:150%;" />

    按下BUTTON1，使得INT0信号变为1，触发外部中断，可以看到PC跳到0x0c进入中断服务程序，执行到PC=0xdc后，PC跳回中断前指令的下一条指令，即PC=0x3c。

  - 测试点3：

    ![4-7](C:\Users\liang\Desktop\4-7.PNG)

    可以看到，bne可以正确执行，PC从0x58跳至0x60。

  - 测试点4：

    <img src="C:\Users\liang\Desktop\4-9.PNG" alt="4-9" style="zoom:150%;" />

    观察到执行到ecall后，PC跳到0x08进入中断服务程序，执行到PC=0xe8后，PC跳回illegal instruction的下一条指令，即PC=0x78。

  - 测试点5：

    ![4-10](C:\Users\liang\Desktop\4-10.PNG)

    可以看到，slli可以正确执行，执行后ALU_out为0x80000000。

  - 测试点6：

    ![4-11](C:\Users\liang\Desktop\4-11.PNG)

    可以看到，sltu可以正确执行，执行后ALU_out为0x1。



- 上板验证：

  - lui指令，观察VGA的dmem_addr信号和七段数码管ALU_out信号，符合预期。

    ![IMG_5662](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5662.JPG)

    ![IMG_5664](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5664.JPG)

  - sltu指令，观察VGA的dmem_addr信号和七段数码管ALU_out信号，符合预期。

    ![IMG_5676](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5676.JPG)

    ![IMG_5677](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5677.JPG)

  - bne指令可以正确执行，从0x58跳到0x60

    ![IMG_5673](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5673.JPG)

    ![IMG_5674](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5674.JPG)

  - 中断测试，以下三张图分别是illegal instruction、ecall、外部中断被触发之后，下一拍观察到的现象。

    ![IMG_5668](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5668.JPG)

    ![IMG_5669](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5669.JPG)

    ![IMG_5670](C:\Users\liang\Desktop\OrgLab\图\lab4-4\IMG_5670.JPG)

    

- 思考题（包括lab4-1、2、3、4的所有思考题）

  - 扩展下列指令，数据通路将作如何修改：

    R-Type： 

    sra, sll,sltu：数据通路不必修改，只需要修改控制器对应信号，同时在alu中加入相应功能。 

    I-Type： 

    srai,slli,sltiu：同上，数据通路不必修改。

    B-Type： 

    bne：在判断下一拍PC位置时，应该增加一个判断，即当前指令为bne时，如果rs1_rs2_eq，则PC=PC+4；如果(!rs1_rs2_eq)，则PC=PC_jump。

    U-Type： 

    lui：数据通路不必修改，如之前实验报告所说，只需要修改controller和ImmGen。

  - 增加I-Type算术运算指令是否需要修改本章设计的数据通路？

    答：不需要。因为本实验中已经设计了I-type的数据通路。不同的I-type指令的数据通路相同。

  - 单周期控制器时序体现在那里？ 

    答：controller中语句触发的条件是instruction变化，而instruction的变化是由PC的变化导致的，PC的变化又是在datapath中由时钟驱动的。

  - 设计bne指令需要增加控制信号吗？

    答：如果像我的设计，直接用pc_src_control来区分jal，beq，bne则不需要；如果像PPT中的设计，每个跳转指令单独用一个信号代表，则需要。

  - 扩展下列指令，控制器将作如何修改：

    R-Type： 

    sra, sll,sltu：一级解码不需要改变，只需要改变二级解码，即根据Fun3和Fun7的不同，决定ALU的操作，具体见代码。

    I-Type： 

    srai,slli,sltiu：同上，具体见代码。

    B-Type： 

    bne:在一级解码中，赋pc_src_control为2‘b10，具体实现见代码。

    U-Type： 

    lui：在一级解码中，赋ImmGen=3’b100，MemtoReg=2‘b11，具体实现见代码。

    ◼ 此时用二级译码有优势吗？ 

    ​	答：当指令种类加多时。二级解码的优势体现得更为明显。二级解码增强了代码可读性，降低了debug难度，解耦了传递给datapath和传递给alu的具体信号。

  - 动态存储模块测试七段显示会出现什么问题？
    答：可能会有时钟同步的问题，即CPU的时钟和七段的时钟不同步，引起混乱。

  - 设计SCPU_ctrl_int时，所增加的特权指令与RV32I基本指令译码有何区别？

    答：特权指令优先级更高，应该优先考虑特权指令的译码。

  -  指令集规定的中断寄存器mepc、mtvec均为时钟控制寄存器，本实验在设计RV_int时若也都设计为寄存器，能实现PC的正常跳转吗？

    答：可以。按照我代码中的设计，mepc本来便是由时钟驱动的寄存器，每个clk根据PC的变化而变化（或不变）。mtvec我考虑到是常量，故直接用了wire类型，但用reg类型显然也是可以的，用于mtvec变化的情况。



- 心得体会

  ​	在本实验中，我通过动手实践，对RISC-V处理中断、异常的策略有了更深刻的认识。有了之前单周期实验的基础，这个实验并不困难。我认为唯一需要多点思考的点是外部中断的信号如何处理？我一开始是把对INT0的处理放在controller里，当成一条特权指令来译码。后来发现这样并不符合实际，因为实际应用中，我们希望中断信号可以立即被响应，而不是由时钟或者其他条件驱动。于是后来我将INT0本身作为datapath的驱动信号，用其上升沿驱动datapath。