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
    output [31:0] busA, //have to show the full array here
    output [31:0] busB,
    output [31:0] busW
    );
    
    //for decoding instruction
    wire [15:0] imm16;
    wire reg_dst, reg_write, mem_read, mem_write, jump, branch, sign_ext, alu_src;
    wire [3:0] alu_ctr;
    wire [5:0] rs, rt, rd;
    decode_instr A(instr, imm16, reg_dst, reg_write, mem_read, mem_write, jump, branch, sign_ext, alu_src, alu_ctr, rs, rt, rd);
    
    //for registers
    wire [5:0] rw, ra, rb;
//    wire [31:0] busA, busB, busW;
    mux2x1_5 M1(reg_dst, rt, rd, rw);
    registers R(CLK, reg_rst, reg_write, reg_dst, ra, rb, rw, busW, busA, busB);
    
    //sign extender
    wire [31:0] imm32;
    extender E1(sign_ext, imm16, imm32);
    
    //alu
    wire v, c_out, zero;
    wire [31:0] alu_in2;
    mux2x1_32 M2(alu_src, busB, imm32, alu_in2);
    alu ALU1(alu_ctr, busA, alu_in2, busW, v, c_out, zero); //output rooted directly to busW as data memory has not been made yet
    

    
endmodule
