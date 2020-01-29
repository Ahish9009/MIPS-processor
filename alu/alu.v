
// |operation Code |   Operation    |
// |     0000      |      Add       |
// |     0001      |    Subtract    |
// |     0010      |    Multiply    |
// |     0011      |     Divide     |
// |     0100      |     Shift-L    |
// |     0101      |     Shift-R    |
// |     0110      |  GREATER THAN  |
// |     0111      |    LESS THAN   |
// |     1000      |    EQUAL TO    |
// |     1001      |      AND       |
// |     1010      |       OR       |
// |     1011      |      NAND      |
// |     1100      |      NOR       |
// |     1101      |                |
// |     1110      |                |
// |     1111      |                |


module alu(
	input opselect[3:0],
	input x[31:0],
	input y[31:0],
	output res[31:0],
	output v,
	output zero,
	);

	always @(*)
	begin 
		case(opselect)
			4'b0000:
				assign res[31:0] = x[31:0] + y[31:0];
				
			4'b0001:
				assign res[31:0] = x[31:0] - y[31:0];
		endcase
	end
endmodule	

	

