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
    input [31:0] instr,
    output [31:0] regs //have to show the full array here
    );
    
    wire [15:0] imm16;
    wire reg_dst, reg_write, mem_read, mem_write, jump, branch, sign_ext, alu_src;
    wire [3:0] alu_ctr;
    
    
endmodule
