`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:48:52 02/05/2020
// Design Name:   execute_unit
// Module Name:   /home/ahish/Sem-4/proc/decode-instr/decode-instr-ise/execute_tb4.v
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

module execute_tb4;

	// Inputs
	reg CLK;
	reg [31:0] instr;

	// Outputs
	wire [31:0] busA;
	wire [31:0] busB;
	wire [31:0] busW;
	wire [31:0] reg0;
	wire [31:0] reg1;
	wire [31:0] reg2;
	wire [31:0] reg3;

	// Instantiate the Unit Under Test (UUT)
	execute_unit uut (
		.CLK(CLK), 
		.instr(instr), 
		.busA(busA), 
		.busB(busB), 
		.busW(busW), 
		.reg0(reg0), 
		.reg1(reg1), 
		.reg2(reg2), 
		.reg3(reg3)
	);

	initial begin
		CLK=0;
		//write machine code here
		instr = 32'b00000000000000010000100000100000;
		#10;
		/*
			rest of code
		*/
		
	end
	always #10 CLK=~CLK;
      
endmodule


