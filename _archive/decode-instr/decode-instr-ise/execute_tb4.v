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
	wire [31:0] reg4;
	wire [31:0] reg5;
	wire [31:0] reg6;
	wire [31:0] reg7;
	wire [31:0] reg8;
	wire [31:0] reg9;
	wire [31:0] reg10;
	wire [31:0] reg11;
	wire [31:0] reg12;
	wire [31:0] reg13;
	wire [31:0] reg14;
	wire [31:0] reg15;
	wire [31:0] reg16;
	wire [31:0] reg17;
	wire [31:0] reg18;
	wire [31:0] reg19;
	wire [31:0] reg20;
	wire [31:0] reg21;
	wire [31:0] reg22;
	wire [31:0] reg23;
	wire [31:0] reg24;
	wire [31:0] reg25;
	wire [31:0] reg26;
	wire [31:0] reg27;
	wire [31:0] reg29;
	wire [31:0] reg30;
	wire [31:0] reg31;

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
		.reg3(reg3), 
		.reg4(reg4), 
		.reg5(reg5), 
		.reg6(reg6), 
		.reg7(reg7), 
		.reg8(reg8), 
		.reg9(reg9), 
		.reg10(reg10), 
		.reg11(reg11), 
		.reg12(reg12), 
		.reg13(reg13), 
		.reg14(reg14), 
		.reg15(reg15), 
		.reg16(reg16), 
		.reg17(reg17), 
		.reg18(reg18), 
		.reg19(reg19), 
		.reg20(reg20), 
		.reg21(reg21), 
		.reg22(reg22), 
		.reg23(reg23), 
		.reg24(reg24), 
		.reg25(reg25), 
		.reg26(reg26), 
		.reg27(reg27), 
		.reg29(reg29), 
		.reg30(reg30), 
		.reg31(reg31)
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

