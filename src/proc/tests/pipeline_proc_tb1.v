`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2020 00:51:14
// Design Name: 
// Module Name: pipeline_proc_tb1
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


module pipeline_proc_tb1;

	// Inputs
	reg CLK;

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
	wire [7:0] data0;
	wire [7:0] data1;
	wire [7:0] data2;
	wire [7:0] data3;
	wire [7:0] data4;
	wire [7:0] data5;
	wire [31:0] instr;
	wire [31:0] pc;
	

	// Instantiate the Unit Under Test (UUT)
	pipeline_proc uut (
		.CLK(CLK),
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
		.data0(data0),
		.data1(data1),
		.data2(data2),
		.data3(data3),
		.data4(data4),
		.data5(data5),
		.instr(instr),
		.pc(pc)
	);

	initial begin
		CLK=1;
		//write machine code here
//		instr = 32'b00000000000000010000100000100000; //ADD $1, $1, $0   works 
//		instr = 32'b00100000001000000000000000001000; //ADDI $1, $0, 8   works
//        instr = 32'b10000000001000000000000000000000; //LB $1, $0, 0   works
		/*
			rest of code
		*/
		
	end
	always #10 CLK=~CLK;
      
endmodule
