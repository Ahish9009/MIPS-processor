`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2020 00:40:41
// Design Name: 
// Module Name: pipeline_proc
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


module pipeline_proc(   
    input CLK,
    output [31:0] busA,
    output [31:0] busB,
    output [31:0] busW,
    output [31:0] reg0,
    output [31:0] reg1, 
    output [31:0] reg2,
    output [31:0] reg3,
    output [31:0] instr,
    output [31:0] pc
    );
    
//    initializing wires needed for following units
    wire branch, jump, zero;
    wire [15:0] imm16;
    wire [25:0] instr_index;
//    wire [31:0] instr = 31'b0;
    
//    initializing fetch and exec units
    execute_unit EXECUTE(CLK, pc, instr, branch, jump, zero, imm16, instr_index, busA, busB, busW, reg0, reg1, reg2, reg3);
    fetch_unit FETCH(CLK, branch, jump, zero, imm16, instr_index, instr, pc);
    
    endmodule
