`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2020 15:47:40
// Design Name: 
// Module Name: fetch_unit
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


module fetch_unit(
    input CLK,
    input branch,
    input jump, 
    input zero,
    input [15:0] imm16,
    input [25:0] instr_index,
    output reg [31:0] instr
    );
    
    reg [31:0] pc = 32'b0;
    
    // temporary pc to manipulate in between clock cycles
    wire [31:0] curr_pc;
    assign curr_pc = pc;
    
    // add 4
    wire [31:0] add_stg_1_op;
    adder32bit ADD_4(1'b0, curr_pc, 32'b100, add_stg_1_op); //ignore other op's
    
    // sign extend imm16 to imm30
    wire [30:0] imm30;
    extender30 SIGN_EXTENDER_30(1'b1, imm16, imm30);
    
    // convert it to 32 bit by appending 2 0's to the end
    wire [31:0] imm32;
    assign imm32 = { imm30, 2'b00 };
    
    // add current pc + 4 + imm32 
    wire [31:0] branch_pc;
    adder32bit ADD_OFFSET(1'b0, add_stg_1_op, imm32, branch_pc);
    
    // select line for branch mux
    wire branch_s0 = branch & zero;
    wire [31:0] normal_or_branch_pc; //rename this pls
    mux2x1_32 BRANCH(branch_s0, add_stg_1_op, branch_pc, normal_or_branch_pc);
    
    // pc if jump = 1
    wire [31:0] jump_addr;
    assign jump_addr = { curr_pc[31:28], instr_index, 2'b00 };
    
    // select new pc
    wire [31:0] next_pc;
    mux2x1_32 JUMP(jump, normal_or_branch_pc, jump_addr, next_pc);
    
    // fetch instruction
    wire [31:0] new_instr;
    
    always @(negedge CLK) begin
        pc <= next_pc;
        instr <= new_instr;
    end
    
    
    
    
    
    
    
    
    
    
endmodule
