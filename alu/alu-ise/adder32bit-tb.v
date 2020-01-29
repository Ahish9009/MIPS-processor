`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:21:15 01/29/2020
// Design Name:   adder32bit
// Module Name:   /home/ahish/Sem-4/proc/alu/alu-ise/adder32bit-tb.v
// Project Name:  alu-ise
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder32bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder32bit_tb;

	// Inputs
	reg c_in;
	reg [31:0] x;
	reg [31:0] y;

	// Outputs
	wire [31:0] sum;
	wire c_out;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	adder32bit uut (
		.c_in(c_in), 
		.x(x), 
		.y(y), 
		.sum(sum), 
		.c_out(c_out), 
		.v(v)
	);

	initial begin
		// Initialize Inputs
		c_in = 0;
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 x[0]=~x[0];
	always #2 y[0]=~y[0];
	always #3 x[31]=~x[31];
	always #4 y[31]=~y[31];
	always #5 x[30]=~x[30];
	always #6 y[30]=~y[30];
	
      
endmodule

