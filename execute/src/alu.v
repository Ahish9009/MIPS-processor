// |-------------------------------------|
// | operation Code |   Operation        |
// |     00000      |        +           | ADD
// |     00001      |        -           | SUBTRACT
// |     00010      |      <(US)         | LESS THAN UNSIGNED
// |     00011      |Shift-R-Signed-R    |
// |     00100      |    Shift-L-RS      |
// |     00101      |  Shift-L-SHAMT     | 
// |     00110      |        >(S)        | GREATED THAN SIGNED
// |     00111      |        <(S)        | LESS THAN SIGNED
// |     01000      |        =           | EQUAL TO
// |     01001      |        &           | AND
// |     01010      |        |           | OR
// |     01011      |Shift-R-Signed-S    |
// |     01100      |      NOR           |
// |     01101      |      XOR           |
// |     01110      |   Shift-R-US-RS    |
// |     01111      |  Shift-R-US-SHAMT  |
// |     10000      |      <=(S)         | LESS THAN EQUAL SIGNED
// |     10001      |      >=(S)         | GREATER THAN EQUAL SIGNED
// |     10010      |       !=           |  NOT EQUAL TO
// |-------------------------------------|

module alu(
	input [4:0] opselect,
	input [31:0] x,
	input [31:0] y,
	input [4:0] shamt,
	output [31:0] res,
	output v,
	output c_out,
	output zero
	);
	
	//temporary regs
	reg [31:0] temp_res;
	reg temp_v=0;
	reg temp_c_out=0;
	
	//assigning final values from reg
	assign res = temp_res;
	assign v = temp_v;
	assign zero = &(~res);
	assign c_out = temp_c_out;
	
	//for addition and subtraction
	wire c_out_add, c_out_sub, temp_v_add, temp_v_sub;
	wire [31:0] sum, diff;
	adder32bit add(1'b0, x, y, sum, c_out_add, temp_v_add); 
	adder32bit sub(1'b1, x, ~y, diff, c_out_sub, temp_v_sub); 
	
	//main
	always @(*)
	begin 
		case(opselect)
		
			5'b00000: 
			//add
			begin
				temp_res = sum;
				temp_v = temp_v_add;
				temp_c_out = c_out_add;
			end
				
			5'b00001: 
			//subtract
			begin
				temp_res = diff;
				temp_v = temp_v_sub;
				temp_c_out = c_out_sub;
			end
			
			5'b00010:
//			//multiplication
//			begin
//				temp_res = x*y;
//				temp_v = 0;
//				temp_c_out = 0;
//			end

			//Less than unsigned
			begin
				temp_res = x < y;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b00011:
			//Shift-R-Signed-Rs
			begin
				temp_res = x >>> y;
				temp_v = 0;
				temp_c_out = 0;
			end
				
			4'b00100: 
			//left shift by SHAMT
			begin
				temp_res = x << shamt;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b00101: 
			//left shift by RS
			begin
				temp_res = x << y;
				temp_v = 0;
				temp_c_out = 0;
			end
				
			5'b00110: 
			//greater than signed
			begin
				temp_res = ($signed(x) > $signed(y))?32'b1:32'b0;
				temp_v = 0;
				temp_c_out = 0;
			end
				
			5'b00111: 
			//less than signed
			begin
				temp_res = ($signed(x) < $signed(y)) ? 1 : 0;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b01000: 
			//equal to
			begin
				temp_res = (x==y)?32'b1:32'b0;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b01001: 
			//logical AND
			begin
				temp_res = x & y;
				temp_v = 0;
				temp_c_out = 0;
			end
				
			5'b01010: 
			//logical OR
			begin
				temp_res = x | y;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b01011: 
			//Shift-R-Signed-Shamt
			begin
				temp_res = x >>> shamt;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b01100: 
			//logical NOR
			begin
				temp_res = ~(x|y);
				temp_v = 0;
				temp_c_out = 0;
			end
				
			5'b01101: 
			//logical XOR
			begin
				temp_res = x^y;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b01110: 
			//shift right by RS
			begin
				temp_res = x >> y;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b01111: 
			//shift right by SHAMT
			begin
				temp_res = x >> shamt;
				temp_v = 0;
				temp_c_out = 0;
			end
			
		endcase
	end
endmodule	

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


