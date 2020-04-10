// |-------------------------------------|
// | Operation Code |   Operation        |
// |     00000      |        +           | ADD
// |     00001      |        -           | SUBTRACT
// |     00010      |      <(S)         | LESS THAN SIGNED
// |     00011      |  Shift-R-Signed-R  |
// |     00100      |     Shift-L-RS     |
// |     00101      |   Shift-L-SHAMT    | 
// |     00110      |        >(S)        | GREATED THAN SIGNED
// |     00111      |        <(US)        | LESS THAN UNSIGNED
// |     01000      |         =          | EQUAL TO
// |     01001      |         &          | AND
// |     01010      |         |          | OR
// |     01011      |  Shift-R-Signed-S  |
// |     01100      |        NOR         |
// |     01101      |        XOR         |
// |     01110      |   Shift-R-US-RS    |
// |     01111      |  Shift-R-US-SHAMT  |
// |     10000      |        <=(S)       | LESS THAN EQUAL SIGNED
// |     10001      |        >=(S)       | GREATER THAN EQUAL SIGNED
// |     10010      |         !=         | NOT EQUAL TO
// |     10011      |         JAL        | ADD 8
// |-------------------------------------|

module alu(
	input [4:0] opselect,
	input [31:0] x,
	input [31:0] y,
	input [4:0] shamt,
	input [31:0] pc,
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
	adder32bit add(
		1'b0, 
		x, 
		y, 
		sum, 
		c_out_add, 
		temp_v_add
	); 
	adder32bit sub(
		1'b1, 
		x, 
		~y, 
		diff,
		c_out_sub, 
		temp_v_sub
	); 
	
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
			//Less than signed
			begin
				temp_res = ($signed(x) < $signed(y));
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b00011:
			//Shift-R-Signed-Rs
			begin
				temp_res = $signed(x) >>> $signed(y);
				temp_v = 0;
				temp_c_out = 0;
			end
				
			4'b00100: 
			//left shift by RS 
			begin
				temp_res = x << y;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b00101: 
			//left shift by SHAMT 
			begin
				temp_res = y << shamt;
				temp_v = 0;
				temp_c_out = 0;
			end
				
			5'b00110: 
			//greater than signed zero if true
			begin
				temp_res = ($signed(x) > $signed(y))?32'b0:32'b1;
				temp_v = 0;
				temp_c_out = 0;
			end
				
			5'b00111: 
			//less than unsigned
			begin
				temp_res = (x < y) ? 32'b1 : 32'b0;
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
				temp_res = $signed(y) >>> shamt;
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
			//shift right by RS unsigned
			begin
				temp_res = x >> y;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b01111: 
			//shift right by SHAMT unsigned
			begin
				temp_res = y >> shamt;
				temp_v = 0;
				temp_c_out = 0;
			end

			5'b10000: 
			// Less than Equal Signed
			begin
				temp_res = ($signed(x) <= $signed(y)) ? 0 : 1;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b10001: 
			// Greater than Equal Signed
			begin
				temp_res = ($signed(x) >= $signed(y)) ? 1 : 0;
				temp_v = 0;
				temp_c_out = 0;
			end

			5'b10010: 
			// Not equal to 
			begin
				temp_res = (x == y) ? 1 : 0;
				temp_v = 0;
				temp_c_out = 0;
			end
			
			5'b10011: 
			// JAL add
			begin
				temp_res = pc + 8;
				temp_v = 0;
				temp_c_out = 0;
			end
		endcase
	end
endmodule	
