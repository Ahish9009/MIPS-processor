// instructions implemented
    
// |----------------------------------------------|
// |S.No| Instruction   | Type | OPCODE |  FUNCT  |
// |----------------------------------------------|
// |  1 |     ADD       |  R   | 000000 | 100000  |
// |  2 |     AND       |  R   | 000000 | 100100  |
// |  3 |     NOR       |  R   | 000000 | 100111  |
// |  4 |     OR        |  R   | 000000 | 100101  |
// |  5 |     SUB       |  R   | 000000 | 100010  |
// |  6 |     XOR       |  R   | 000000 | 100110  |
// |  7 |     SLT       |  R   | 000000 | 101010  |
// |  8 |     SRA       |  R   | 000000 | 000011  |
// |  9 |     SRAV      |  R   | 000000 | 000111  |
// | 10 |     SRL       |  R   | 000000 | 000010  |
// | 11 |     SRLV      |  R   | 000000 | 000110  |
// | 12 |     SLL       |  R   | 000000 | 000000  |
// | 13 |     SLTU      |  R   | 000000 | 101011  |

// | 14 |     ADDI      |  I   | 001000 | 000000  |
// | 15 |     ANDI      |  I   | 001100 | 000000  |
// | 16 |     XORI      |  I   | 001110 | 000000  |
// | 17 |     ORI       |  I   | 001101 | 000000  |
// | 18 |     SLTI      |  I   | 001010 | 000000  |
// | 19 |     SLTIU     |  I   | 001011 | 000000  |
// | 20 |     BEQ       |  I   | 000100 | 000000  |
// | 21 |     BGEZ      |  I   | 000001 | 000000  | 
// | 22 |     BGTZ      |  I   | 000111 | 000000  |
// | 23 |     BLEZ      |  I   | 000110 | 000000  |
// | 24 |     BNE       |  I   | 000101 | 000000  |
// | 25 |     LB        |  I   | 100000 | 000000  |
// | 26 |     SB        |  I   | 101000 | 000000  |
//
// | 27 |     J         |  J   | 000010 | 000000  |
// | 28 |     JAL       |  J   | 000011 | 000000  | (Not implemented yet)
// |----------------------------------------------|


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:21 02/02/2020 
// Design Name: 
// Module Name:    decode_instr 
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
module decode_instr(
    input [31:0] instr,
    output [4:0] shamt,
    output [25:0] instr_index,
    output [15:0] imm16,
    output reg_dst,
    output reg_write,
    output mem_read,
    output mem_write,
    output jump,
    output branch,
    output sign_ext,
    output alu_src,
    output [3:0] alu_ctr,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd
    );
	 
	wire [5:0] opcode, funct;
	
//	wire [4:0] shamt;
//	wire [15:0] imm16;
//	wire [25:0] instr_index;
	 
	assign opcode = instr[31:26];
	assign rs = instr[25:21];
	assign rt = (opcode == 6'b000001) ? 5'b0 : instr[20:16];
         //assign rt = instr[20:16];
	assign rd = instr[15:11];
	assign shamt = instr[10:6];
	assign funct = instr[5:0];
	assign imm16 = instr[15:0];
	assign instr_index = instr[25:0];
	
	//decides which operation ALU should perform
	reg [4:0] alu_ctr_reg;
	assign alu_ctr = alu_ctr_reg;
	
	// all these can be decided simply by opcode
	assign reg_dst = (opcode == 6'b000000) ? 1 : 0; 
	assign reg_write = (opcode == 6'b000000 | opcode == 6'b001000 | opcode == 6'b001100 | opcode == 6'b001110 | opcode == 6'b001101 | opcode == 6'b001010 | opcode == 6'b001011 | opcode == 6'b100000) ? 1 : 0;
	assign mem_read = (opcode == 6'b100011 | opcode == 6'b100000) ? 1 : 0;
	assign mem_write = (opcode == 6'b101011 | opcode == 6'b101000) ? 1 : 0;
	assign jump = (opcode == 6'b000010) ? 1 : 0;

	assign branch = (opcode == 6'b000100 | opcode == 6'b000100 | opcode == 6'b000001 | opcode == 6'b000111 | opcode == 6'b000110 | opcode == 6'b000101) ? 1 : 0; 

	assign sign_ext = (opcode == 6'b001000 | opcode == 6'b101011 | opcode == 6'b100011 | opcode == 6'b001010 | opcode == 6'b001011 | opcode == 6'b000100 | opcode == 6'b000001 | opcode == 6'b000111 | opcode == 6'b000110 | opcode == 6'b000101 | opcode == 6'b100000 | opcode == 6'b101000) ? 1 : 0; 
	assign alu_src = (opcode == 6'b000000 | opcode == 6'b000100 | opcode == 6'b000001 | opcode == 6'b000111 | opcode == 6'b000110 | opcode == 6'b000101) ? 0 : 1;
	
	always @(*) begin
		
		// if it is a R operation
		if (opcode == 6'b000000) begin

			//add
			if (funct == 6'b100000 | funct == 6'b100001) begin // ADD, 
				alu_ctr_reg = 5'b00000;
			end
			//and
			if (funct == 6'b100100) begin // AND,
			    alu_ctr_reg = 5'b01001;
			end
			//or
			if (funct == 6'b100101) begin // OR
				alu_ctr_reg = 5'b01010;
			end
			//nor
			if (funct == 6'b100111) begin // NOR
				alu_ctr_reg = 5'b01100;
			end
			//sub
			if (funct == 6'b100010) begin // SUB                              
				alu_ctr_reg = 5'b00001;
			end
			//xor
			if (funct == 6'b100110) begin // XOR                            
				alu_ctr_reg = 5'b01101;
			end
			//less than signed
			if (funct == 6'b101010) begin // SLT
			    alu_ctr_reg = 5'b00010;
			end
			//less than unsigned
			if (funct == 6'b101011) begin // SLTU
			    alu_ctr_reg = 5'b00111;
			end
			//Shift-R-S-RS
			if (funct == 6'b000111) begin // SRAV
			    alu_ctr_reg = 5'b00011;
			end
			//Shift-R-S-SHAMT
			if (funct == 6'b000011) begin // SRA
			    alu_ctr_reg = 5'b01011;
			end
			//Shift-R-US-RS
			if (funct == 6'b000010) begin // SRLV
			    alu_ctr_reg = 5'b01110;
			end
			//Shift-R-US-SHAMT
			if (funct == 6'b000110) begin // SRL
			    alu_ctr_reg = 5'b01111;
			end
			//Shift-L-RS
			if (funct == 6'b000100) begin // SLLV
			    alu_ctr_reg = 5'b00100;
			end
			//Shift-L-SHAMT
			if (funct == 6'b000000) begin // SLL
			    alu_ctr_reg = 5'b00101;
			end
			
		end
		// if it is an I or J operation
		else begin
			case(opcode) 
				
				//ADDI
				6'b001000:
				begin
					alu_ctr_reg = 5'b00000; //add
				end
				
				//ANDI
				6'b001100:
				begin
					alu_ctr_reg = 5'b01001; //and
				end
				
				//XORI
				6'b001110:
				begin
					alu_ctr_reg = 5'b01101; //xor
				end
				
				//ORI
				6'b001101:
				begin
					alu_ctr_reg = 5'b01010; //or
				end
				
				//SLTI
				6'b001010:
				begin
					alu_ctr_reg = 5'b00111; //less than signed
				end
				
				//SLTIU
				6'b001011:
				begin
					alu_ctr_reg = 5'b00010; //less than unsigned
				end
				
				//BEQ
				6'b000100:
				begin
					alu_ctr_reg = 5'b00001; //sub
				end

				//BGEZ
				6'b000001:
				begin
					alu_ctr_reg = 5'b10001; //Greater than equal signed
				end
				
				//BGTZ
				6'b000111:
				begin
					alu_ctr_reg = 5'b00110; //Greater than signed
				end
				
				//BLEZ
				6'b000110:
				begin
					alu_ctr_reg = 5'b10000; //Less than equal signed
				end

				//BNE
				6'b000101:
				begin
					alu_ctr_reg = 5'b10010; //Less than equal signed
				end
				
				//LB
				6'b100000:
				begin
					alu_ctr_reg = 5'b00000; //add
				end
				
				//SB
				6'b101011:
				begin
					alu_ctr_reg = 5'b00000; //add
				end
				
				//LW
				//6'b100011:
				//begin
					//alu_ctr_reg = 5'b00000; add
				//end
				
				//SW
				//6'b101011:
				//begin
					//alu_ctr_reg = 5'b00000; add
				//end
				
				//J
				6'b000010:
				begin
					alu_ctr_reg = 5'b00000; //add(redundant)
				end

			endcase
		end
			
		
	end


endmodule

