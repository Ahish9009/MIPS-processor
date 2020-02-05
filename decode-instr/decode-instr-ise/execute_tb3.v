`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:38:11 02/05/2020
// Design Name:   execute_unit
// Module Name:   /home/ahish/Sem-4/proc/decode-instr/decode-instr-ise/execute_tb3.v
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

module execute_tb3;

	// Inputs
	reg CLK;
	reg rst;
	reg [31:0] instr;

	// Outputs
	wire [31:0] busA;
	wire [31:0] busB;
	wire [31:0] busW;
	wire reg0;
	wire reg1;
	wire reg2;
	wire reg3;
	wire reg4;
	wire reg5;
	wire reg6;
	wire reg7;
	wire reg8;
	wire reg9;
	wire reg10;
	wire reg11;
	wire reg12;
	wire reg13;
	wire reg14;
	wire reg15;
	wire reg16;
	wire reg17;
	wire reg18;
	wire reg19;
	wire reg20;
	wire reg21;
	wire reg22;
	wire reg23;
	wire reg24;
	wire reg25;
	wire reg26;
	wire reg27;
	wire reg28;
	wire reg29;
	wire reg30;
	wire reg31;

	// Instantiate the Unit Under Test (UUT)
	execute_unit uut (
		.CLK(CLK), 
		.rst(rst), 
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
		.reg28(reg28), 
		.reg29(reg29), 
		.reg30(reg30), 
		.reg31(reg31)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		rst = 0;
		instr = 32'b00000000000000000000100000100000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10;
		instr = 32'b00000000000000000000100000100000;

	end
	always #10 CLK=~CLK;
      
endmodule

