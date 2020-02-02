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
    input [31:0] instr
    );
	 
	wire [5:0] opcode, funct;
	wire [4:0] rs, rt, rd, shamt;
	wire [15:0] imm16;
	wire [25:0] instr_index;
	
	reg [3:0] alu_ctr;
	reg alu_src, reg_write, sign_ext, reg_dst, mem_read, mem_write, jump, branch;
	 
	assign opcode = instr[31:26];
	assign rs = instr[25:21];
 	assign rt = instr[20:16];
   assign shamt = instr[10:6];
	assign funct = instr[5:0];
	assign imm16 = instr[15:0];
	assign instr_index = instr[25:0];
	
	assign reg_dst = (opcode == 6'b000000) ? 1 : 0;
	assign reg_write = (opcode == 6'b000000 | opcode == 6'b001000) ? 1 : 0;
	
	
	always @(*) begin
		
		// if it is a R operation
		if (opcode == 4'b000000) begin

			reg_dst = 1;
			reg_write = 1;
			mem_read = 0;
			mem_write = 0;
			jump = 0;
			branch = 0;
		
			//add
			if (funct == 6'b100000 | funct == 6'b100001 | funct == 6'b100100) begin
				alu_ctr = 4'b0000;
			end
			//or
			if (funct == 6'b100101) begin
				alu_ctr = 4'b1010;
			end
			//nor
			if (funct == 6'b100111) begin
				alu_ctr = 4'b1100;
			end
			//sub
			if (funct == 6'b100010) begin
				alu_ctr = 4'b0001;
			end
		end
		// if it is an I operation
		else begin
			case(opcode) 
				
				//ADDI
				4'b001000:
				begin
					alu_ctr = 4'b0000;
				end
				
				//ANDI
				4'b001100:
				begin
					alu_ctr = 4'b1001;
				end
				
				//BEQ
				4'b000100:
				begin
					alu_ctr = 4'b0001;
				end
				
				//LW
				4'b100011:
				begin
					alu_ctr = 4'b0000;
				end
				
				//SW
				4'b101011:
				begin
					alu_ctr = 4'b0000;
				end
			endcase
		end
			
		
	end


endmodule
