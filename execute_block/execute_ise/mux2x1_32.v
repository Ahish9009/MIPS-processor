`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2020 12:19:11
// Design Name: 
// Module Name: mux2x1_32
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


module mux2x1_32(
    input s0,
    input [31:0] a,
    input [31:0] b,
    output [31:0] out
    );
    
    assign out = {32{(~s0)}}&a | {32{s0}}&b ;
    
endmodule

