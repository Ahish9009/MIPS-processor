`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:30:45 01/29/2020
// Design Name:   alu
// Module Name:   /home/ahish/Sem-4/proc/alu/alu-ise/alu_tb.v
// Project Name:  alu-ise
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [3:0] opselect;
	reg [31:0] x;
	reg [31:0] y;

	// Outputs
	wire [31:0] res;
	wire v;
	wire c_out;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.opselect(opselect), 
		.x(x), 
		.y(y), 
		.res(res), 
		.v(v), 
		.c_out(c_out), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		opselect = 4'b0;
		x = 32'b0;
		y = 32'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 opselect[0]=~opselect[0];
	always #2 opselect[1]=~opselect[1];
	always #4 opselect[2]=~opselect[2];
	always #8 opselect[3]=~opselect[3];
	always #4 x[0]=~x[0];
	always #8 y[0]=~y[0];
	always #12 x[1]=~x[1];
	always #15 y[1]=~y[1];
	always #16 x[2]=~x[2];
	always #32 y[2]=~y[2];
	always #21 x[31]=~x[31];
	always #23 y[31]=~y[31];
    
endmodule

