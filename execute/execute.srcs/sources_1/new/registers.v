`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2020 20:58:38
// Design Name: 
// Module Name: registers
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


module registers(
    input CLK,
    input [4:0] ra,
    input [4:0] rb, 
    input [4:0] rw,
    input reg_write,
    input [31:0] busW,
    output [31:0] busA,
    output [31:0] busB,
    output [31:0] reg0,
    output [31:0] reg1,
    output [31:0] reg2,
    output [31:0] reg3
    );
    
    reg [31:0] regs [31:0]; //initializes the array
	 
	 //sets all regs to 0
	integer i;
    initial begin 
       for (i = 0; i < 32; i=i+1) begin
            regs[i] = 4;
       end
    end
    
    assign busA = regs[ra];
    assign busB = regs[rb];
   
    always @(negedge CLK) begin    
        if (reg_write == 1'b1 && busW) begin
            regs[rw] = busW;
        end     
    end
    
    assign reg0 = regs[0];
    assign reg1 = regs[1];
    assign reg2 = regs[2];
    assign reg3 = regs[3];
    
    

endmodule
