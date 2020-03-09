`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2020 12:04:53
// Design Name: 
// Module Name: extender
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


module extender32(
    input sign_ext,
    input [15:0] imm16,
    output [31:0] imm32
    );
    
	 
		 assign imm32 = ({ {16{sign_ext}}, imm16 }&{32{(~sign_ext)}}) | ({ {16{imm16[15]}}, imm16 }&{32{sign_ext}});

endmodule

module extender30(
    input sign_ext,
    input [15:0] imm16,
    output [29:0] imm30
    );
    
	 
		 assign imm30 = ({ {14{sign_ext}}, imm16 }&{30{(~sign_ext)}}) | ({ {14{imm16[15]}}, imm16 }&{30{sign_ext}});
//        assign imm30[29:0] = { {14{sign_ext}}, imm16 };
endmodule

