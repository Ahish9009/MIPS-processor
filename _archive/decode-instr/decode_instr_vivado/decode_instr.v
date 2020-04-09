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
	wire [4:0] shamt;
//	wire [15:0] imm16;
	wire [25:0] instr_index;
	 
	assign opcode = instr[31:26];
	assign rs = instr[25:21];
 	assign rt = instr[20:16];
	assign rd = instr[15:11];
	assign shamt = instr[10:6];
	assign funct = instr[5:0];
	assign imm16 = instr[15:0];
	assign instr_index = instr[25:0];
	
//	reg alu_src_reg;
	reg [3:0] alu_ctr_reg;
	assign alu_ctr = alu_ctr_reg;
	
	assign reg_dst = (opcode == 6'b000000) ? 1 : 0;
	assign reg_write = (opcode == 6'b000000 | opcode == 6'b001000 | opcode == 6'b001100 | opcode == 6'b10011) ? 1 : 0;
	assign mem_read = (opcode == 6'b100011) ? 1 : 0;
	assign mem_write = (opcode == 6'b101011) ? 1 : 0;
	assign jump = (opcode == 6'b000010) ? 1 : 0;
	assign branch = (opcode == 6'b000100) ? 1 : 0;	
	assign sign_ext = (opcode == 6'b001000 | opcode == 6'b101011 | opcode == 6'b100011) ? 1 : 0; 
	assign alu_src = (opcode == 6'b000000 | opcode == 6'b000100) ? 0 : 1;
	
	always @(*) begin
		
		// if it is a R operation
		if (opcode == 6'b000000) begin

			//add
			if (funct == 6'b100000 | funct == 6'b100001 | funct == 6'b100100) begin
				alu_ctr_reg = 4'b0000;
			end
			//or
			if (funct == 6'b100101) begin
				alu_ctr_reg = 4'b1010;
			end
			//nor
			if (funct == 6'b100111) begin
				alu_ctr_reg = 4'b1100;
			end
			//sub
			if (funct == 6'b100010) begin
				alu_ctr_reg = 4'b0001;
			end
		end
		// if it is an I operation
		else begin
			case(opcode) 
				
				//ADDI
				6'b001000:
				begin
					alu_ctr_reg = 4'b0000; //add
				end
				
				//ANDI
				6'b001100:
				begin
					alu_ctr_reg = 4'b1001; //and
				end
				
				//BEQ
				6'b000100:
				begin
					alu_ctr_reg = 4'b0001; //sub
				end
				
				//LW
				6'b100011:
				begin
					alu_ctr_reg = 4'b0000; //add
				end
				
				//SW
				6'b101011:
				begin
					alu_ctr_reg = 4'b0000; //add
				end
			endcase
		end
			
		
	end


endmodule
