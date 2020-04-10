`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2020 15:14:14
// Design Name: 
// Module Name: adder32bit
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


module adder32bit(
    input c_in,
    input [31:0] x,
    input [31:0] y,
    output [31:0] sum,
    output c_out,
    output v,
	 output c_out2
    );
	
    wire [29:0] temp_c;
    assign v = c_out2^c_out;
	 
	 fulladder A1(c_in, x[0], y[0], sum[0], temp_c[0]);
	 fulladder A2(temp_c[0], x[1], y[1], sum[1], temp_c[1]);
	 fulladder A3(temp_c[1], x[2], y[2], sum[2], temp_c[2]);
	 fulladder A4(temp_c[2], x[3], y[3], sum[3], temp_c[3]);
	 fulladder A5(temp_c[3], x[4], y[4], sum[4], temp_c[4]);
	 fulladder A6(temp_c[4], x[5], y[5], sum[5], temp_c[5]);
	 fulladder A7(temp_c[5], x[6], y[6], sum[6], temp_c[6]);
	 fulladder A8(temp_c[6], x[7], y[7], sum[7], temp_c[7]);
	 fulladder A9(temp_c[7], x[8], y[8], sum[8], temp_c[8]);
	 fulladder A10(temp_c[8], x[9], y[9], sum[9], temp_c[9]);
	 fulladder A11(temp_c[9], x[10], y[10], sum[10], temp_c[10]);
	 fulladder A12(temp_c[10], x[11], y[11], sum[11], temp_c[11]);
	 fulladder A13(temp_c[11], x[12], y[12], sum[12], temp_c[12]);
	 fulladder A14(temp_c[12], x[13], y[13], sum[13], temp_c[13]);
	 fulladder A15(temp_c[13], x[14], y[14], sum[14], temp_c[14]);
	 fulladder A16(temp_c[14], x[15], y[15], sum[15], temp_c[15]);
	 fulladder A17(temp_c[15], x[16], y[16], sum[16], temp_c[16]);
	 fulladder A18(temp_c[16], x[17], y[17], sum[17], temp_c[17]);
	 fulladder A19(temp_c[17], x[18], y[18], sum[18], temp_c[18]);
	 fulladder A20(temp_c[18], x[19], y[19], sum[19], temp_c[19]);
	 fulladder A21(temp_c[19], x[20], y[20], sum[20], temp_c[20]);
	 fulladder A22(temp_c[20], x[21], y[21], sum[21], temp_c[21]);
	 fulladder A23(temp_c[21], x[22], y[22], sum[22], temp_c[22]);
	 fulladder A24(temp_c[22], x[23], y[23], sum[23], temp_c[23]);
	 fulladder A25(temp_c[23], x[24], y[24], sum[24], temp_c[24]);
	 fulladder A26(temp_c[24], x[25], y[25], sum[25], temp_c[25]);
	 fulladder A27(temp_c[25], x[26], y[26], sum[26], temp_c[26]);
	 fulladder A28(temp_c[26], x[27], y[27], sum[27], temp_c[27]);
	 fulladder A29(temp_c[27], x[28], y[28], sum[28], temp_c[28]);
	 fulladder A30(temp_c[28], x[29], y[29], sum[29], temp_c[29]);
	 fulladder A31(temp_c[29], x[30], y[30], sum[30], c_out2);
	 fulladder A32(c_out2, x[31], y[31], sum[31], c_out);
	 
endmodule

