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
	reg CLK;
	reg [31:0] instr;
	
	

	// Outputs
	wire [31:0] busA;
	wire [31:0] busB;
	wire [31:0] busW;

	// Instantiate the Unit Under Test (UUT)
	execute_unit uut (
	    .CLK(CLK),
		.instr(instr), 
		.busA(busA), 
		.busB(busB), 
		.busW(busW)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		instr = 32'b00000000000000000000000000000000;
		

		// Wait 100 ns for global reset to finish
		#100;
		instr = 32'b00000000001000100001100000100000;
        
		// Add stimulus here

	end
	
    
endmodule

