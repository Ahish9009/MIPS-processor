`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:08:33 02/05/2020
// Design Name:   execute_unit
// Module Name:   /home/ahish/Sem-4/proc/decode-instr/decode-instr-ise/execute_tb2.v
// Project Name:  decode-instr-ise
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execute_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execute_tb2;

	// Inputs
	reg CLK;
	reg [31:0] instr;

	// Outputs
	wire [31:0] busA;
	wire [31:0] busB;
	wire [31:0] busW;
	wire [4:0] rw;
	wire [4:0] ra;
	wire [4:0] rb;

	// Instantiate the Unit Under Test (UUT)
	execute_unit uut (
		.CLK(CLK), 
		.instr(instr), 
		.busA(busA), 
		.busB(busB), 
		.busW(busW), 
		.rw(rw), 
		.ra(ra), 
		.rb(rb)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		instr = 32'b0;
		instr = 32'b00000000001000100001100000100000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		instr = 32'b00000000001000100001100000100000;
		#30;
		instr = 32'b00000000001000100001100000100010;
	end
	always #10 CLK=~CLK;
      
endmodule

