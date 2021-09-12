// PC sources
localparam
	PC_NEXT    = 0,
	PC_JUMP    = 1,
	PC_JR      = 2,
	PC_BEQ     = 4,
	PC_BNE     = 5;

// EXE A sources
localparam
	EXE_A_RS     = 0,
	//EXE_A_SA     = 1,
	EXE_A_LINK   = 2,
	EXE_A_BRANCH = 3;

// EXE B sources
localparam
	EXE_B_RT     = 0,
	EXE_B_IMM    = 1,
	EXE_B_LINK   = 2,
	EXE_B_BRANCH = 3;

// EXE ALU operations
localparam
	EXE_ALU_ADD    = 0,
	EXE_ALU_SUB    = 1,
	EXE_ALU_SLT    = 2,
	//EXE_ALU_LUI    = 3,
	EXE_ALU_AND    = 4,
	EXE_ALU_OR     = 5;
	//EXE_ALU_XOR    = 6,
	//EXE_ALU_NOR    = 7,
	//EXE_ALU_SL     = 8,
	//EXE_ALU_SR     = 9;

// WB address sources
localparam
	WB_ADDR_RD    = 0,
	WB_ADDR_RT    = 1,
	WB_ADDR_LINK  = 2;

// WB data sources
localparam
	WB_DATA_ALU   = 0,
	WB_DATA_MEM   = 1;

// variables
localparam
	PC_RESET  = 32'h0000_0000;

// instructions
localparam  // bit 31:26 for instruction type
	INST_R          = 6'b000000,  // bit 5:0 for function type
	//R_FUNC_SLL      = 6'b000000,
	//R_FUNC_SRL      = 6'b000010,  // including ROTR(set bit 21)
	//R_FUNC_SRA      = 6'b000011,
	//R_FUNC_SLLV     = 6'b000100,
	//R_FUNC_SRLV     = 6'b000110,  // including ROTRV(set bit 6)
	//R_FUNC_SRAV     = 6'b000111,
	R_FUNC_JR       = 6'b001000,
	//R_FUNC_JALR     = 6'b001001,
	//R_FUNC_MOVZ     = 6'b001010,
	//R_FUNC_MOVN     = 6'b001011,
	//R_FUNC_SYSCALL  = 6'b001100,
	R_FUNC_ADD      = 6'b100000,
	//R_FUNC_ADDU     = 6'b100001,
	R_FUNC_SUB      = 6'b100010,
	//R_FUNC_SUBU     = 6'b100011,
	R_FUNC_AND      = 6'b100100,
	R_FUNC_OR       = 6'b100101,
	//R_FUNC_XOR      = 6'b100110,
	//R_FUNC_NOR      = 6'b100111,
	R_FUNC_SLT      = 6'b101010,
	//R_FUNC_SLTU     = 6'b101011,
	//R_FUNC_TGE      = 6'b110000,
	//R_FUNC_TGEU     = 6'b110001,
	//R_FUNC_TLT      = 6'b110010,
	//R_FUNC_TLTU     = 6'b110011,
	//R_FUNC_TEQ      = 6'b110100,
	//R_FUNC_TNE      = 6'b110110,
	//INST_I          = 6'b000001,  // bit 20:16 for function type
	//I_FUNC_BLTZ     = 5'b00000,
	//I_FUNC_BGEZ     = 5'b00001,
	//I_FUNC_TGEI     = 5'b01000,
	//I_FUNC_TGEIU    = 5'b01001,
	//I_FUNC_TLTI     = 5'b01010,
	//I_FUNC_TLTIU    = 5'b01011,
	//I_FUNC_TEQI     = 5'b01100,
	//I_FUNC_TNEI     = 5'b01110,
	//I_FUNC_BLTZAL   = 5'b10000,
	//I_FUNC_BGEZAL   = 5'b10001,
	INST_J          = 6'b000010,
	INST_JAL        = 6'b000011,
	INST_BEQ        = 6'b000100,
	INST_BNE        = 6'b000101,
	//INST_BLEZ       = 6'b000110,
	//INST_BGTZ       = 6'b000111,
	INST_ADDI       = 6'b001000,
	//INST_ADDIU      = 6'b001001,
	//INST_SLTI       = 6'b001010,
	//INST_SLTIU      = 6'b001011,
	INST_ANDI       = 6'b001100,
	INST_ORI        = 6'b001101,
	//INST_XORI       = 6'b001110,
	//INST_LUI        = 6'b001111,
	//INST_CP0        = 6'b010000,  // bit 24:21 for function type when bit 25 is not set, bit 5:0 for co type when bit 25 is set
	//CP_FUNC_MF     = 4'b0000,
	//CP_FUNC_MT     = 4'b0100,
	//CP0_CO_ERET     = 6'b011000,
	//INST_LB         = 6'b100000,
	//INST_LH         = 6'b100001,
	INST_LW         = 6'b100011,
	//INST_LBU        = 6'b100100,
	//INST_LHU        = 6'b100101,
	//INST_SB         = 6'b101000,
	//INST_SH         = 6'b101001,
	INST_SW         = 6'b101011;

// general registers
localparam
	GPR_ZERO = 0,
	GPR_AT = 1,
	GPR_V0 = 2,
	GPR_V1 = 3,
	GPR_A0 = 4,
	GPR_A1 = 5,
	GPR_A2 = 6,
	GPR_A3 = 7,
	GPR_T0 = 8,
	GPR_T1 = 9,
	GPR_T2 = 10,
	GPR_T3 = 11,
	GPR_T4 = 12,
	GPR_T5 = 13,
	GPR_T6 = 14,
	GPR_T7 = 15,
	GPR_S0 = 16,
	GPR_S1 = 17,
	GPR_S2 = 18,
	GPR_S3 = 19,
	GPR_S4 = 20,
	GPR_S5 = 21,
	GPR_S6 = 22,
	GPR_S7 = 23,
	GPR_T8 = 24,
	GPR_T9 = 25,
	GPR_K0 = 26,
	GPR_K1 = 27,
	GPR_GP = 28,
	GPR_SP = 29,
	GPR_FP = 30,
	GPR_RA = 31;
