`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2020 11:22:08
// Design Name: 
// Module Name: execute_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module execute_unit(
    input CLK, 
    input [31:0] pc,
    input [31:0] instr,
    output branch,
    output jump,
    output zero, 
    output [15:0] imm16,
    output [25:0] instr_index,
    output [31:0] busA, //have to show the full array here
    output [31:0] busB,
    output [31:0] busW,
	 output [31:0] reg0,
	 output [31:0] reg1,
	 output [31:0] reg2,
	 output [31:0] reg3,
	 
	 output [31:0] reg4,
	 output [31:0] reg5,
	 output [31:0] reg6,
	 output [31:0] reg7,
	 output [31:0] reg8,
	 output [31:0] reg9,
	 output [7:0] data0,
	 output [7:0] data1,
	 output [7:0] data2,
	 output [7:0] data3,
	 output [7:0] data4,
	 output [7:0] data5
//	 output [31:0] reg10,
//	 output [31:0] reg11,
//	 output [31:0] reg12,
//	 output [31:0] reg13,
//	 output [31:0] reg14,
//	 output [31:0] reg15,
//	 output [31:0] reg16,
//	 output [31:0] reg17,
//	 output [31:0] reg18,
//	 output [31:0] reg19,
//	 output [31:0] reg20,
//	 output [31:0] reg21,
//	 output [31:0] reg22,
//	 output [31:0] reg23,
//	 output [31:0] reg24,
//	 output [31:0] reg25,
//	 output [31:0] reg26,
//	 output [31:0] reg27,
//	 output [31:0] reg29,
//	 output [31:0] reg30,
//	 output [31:0] reg31
    );
    
//    wire [31:0] busA, busB, busW;
    
/*    
    intializing data memory
*/    
    wire mem_write;
    wire [31:0] alu_out, datamem_out;
    wire [7:0] word_out;
    data_memory DATA_MEM(CLK, mem_write, alu_out, busB, word_out, datamem_out, data0, data1, data2, data3, data4, data5);
    
/*
		for output
*/
//	 assign reg0 = regs[0];
//	 assign reg1 = regs[1];
//	 assign reg2 = regs[2];
//	 assign reg3 = regs[3];
//	 assign reg4 = regs[4];
//	 assign reg5 = regs[5];
//	 assign reg6 = regs[6];
//	 assign reg7 = regs[7];
//	 assign reg8 = regs[8];
//	 assign reg9 = regs[9];
//	 assign reg10 = regs[10];
//	 assign reg11 = regs[11];
//	 assign reg12 = regs[12];
//	 assign reg13 = regs[13];
//	 assign reg14 = regs[14];
//	 assign reg15 = regs[15];
//	 assign reg16 = regs[16];
//	 assign reg17 = regs[17];
//	 assign reg18 = regs[18];
//	 assign reg19 = regs[19];
//	 assign reg20 = regs[20];
//	 assign reg21 = regs[21];
//	 assign reg22 = regs[22];
//	 assign reg23 = regs[23];
//	 assign reg24 = regs[24];
//	 assign reg25 = regs[25];
//	 assign reg26 = regs[26];
//	 assign reg27 = regs[27];
//	 assign reg28 = regs[28];
//	 assign reg29 = regs[29];
//	 assign reg30 = regs[30];
//	 assign reg31 = regs[31];	 
//---------------------------------------------------------------------
    
/*
		for decoding current instruction
*/
//    wire [25:0] instr_index;
//    wire [15:0] imm16;
//    wire mem_to_reg;
    wire reg_dst, reg_write, mem_read, sign_ext, alu_src;
//    wire jump, branch,
    wire [4:0] alu_ctr;
    wire [4:0] rs, rt, rd, shamt;
    decode_instr INSTRUCTION_DECODER(instr, shamt, instr_index, imm16, reg_dst, reg_write, mem_read, mem_write, mem_to_reg, jump, branch, sign_ext, alu_src, alu_ctr, rs, rt, rd);
//---------------------------------------------------------------------
	 
/*
		for updating registers
*/
    wire [4:0] rw;
    wire [4:0] ra, rb;

	//redundant but follows block diagram
 	assign ra = rs;
	assign rb = rt;
	//gets the register where write will take place
    mux2x1_5 RW_SRC(reg_dst, rt, rd, rw);
	
	//loads the values onto the buses and updates registers
//	registers REGISTERS(CLK, ra, rb, rw, reg_write, busW, busA, busB, reg0, reg1, reg2, reg3);
	registers REGISTERS(CLK, ra, rb, rw, reg_write, busW, busA, busB, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9);
	
//---------------------------------------------------------------------
	 
/*
		sign extender
*/
    wire [31:0] imm32;
    extender32 SIGN_EXTENDER_32(sign_ext, imm16, imm32);
//---------------------------------------------------------------------
    
/*
    alu
*/
    wire v, c_out;
//    wire zero;
    wire [31:0] alu_in2;
    mux2x1_32 ALU_SRC(alu_src, busB, imm32, alu_in2);
    
    alu ALU(alu_ctr, busA, alu_in2, shamt, pc, alu_out, v, c_out, zero); //output rooted directly to busW as data memory has not been made yet
//---------------------------------------------------------------------    
    
    // connecting alu/data mem output to registers data input
    
    mux2x1_32 MEM_TO_REG(mem_to_reg, alu_out, datamem_out, busW);
//---------------------------------------------------------------------    

/*
    to pass control signals to fetch at next clock cycle
*/
//    always @(negedge CLK) begin
        
//        branch_reg <= branch;
//        jump_reg <= jump;
//        zero_reg <= zero;
//        imm16_reg <= imm16;
//        instr_address_reg <= instr_index;
    
//    end

endmodule

