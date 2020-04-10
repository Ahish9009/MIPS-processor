`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2020 15:15:30
// Design Name: 
// Module Name: fulladder
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


module fulladder(
	input c_in,
	input x,
	input y,
	output sum,
	output c_out
	);
	
	assign sum = c_in^x^y;
	assign c_out = (x&y)|(c_in&(x^y));
	
endmodule
