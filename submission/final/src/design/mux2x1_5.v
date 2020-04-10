`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2020 12:30:56
// Design Name: 
// Module Name: mux2x1_5
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

module mux2x1_5(
    input s0,
    input [4:0] a,
    input [4:0] b,
    output [4:0] out
    );
    
    assign out = {5{(~s0)}}&a | {5{s0}}&b ;
    
endmodule


