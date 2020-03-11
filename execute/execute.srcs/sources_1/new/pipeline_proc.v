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
    output [7:0] data5,
    output [31:0] instr,
    output [31:0] pc
    );
    
//    initializing wires needed for following units
    wire branch, jump, zero;
    wire [15:0] imm16;
    wire [25:0] instr_index;
//    wire [31:0] instr = 31'b0;
    
//    initializing fetch and exec units
//    execute_unit EXECUTE(CLK, pc, instr, branch, jump, zero, imm16, instr_index, busA, busB, busW, reg0, reg1, reg2, reg3);
    execute_unit EXECUTE(CLK, pc, instr, branch, jump, zero, imm16, instr_index, busA, busB, busW, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, data0, data1, data2, data3, data4, data5);
    fetch_unit FETCH(CLK, branch, jump, zero, imm16, instr_index, instr, pc);
    
    endmodule
