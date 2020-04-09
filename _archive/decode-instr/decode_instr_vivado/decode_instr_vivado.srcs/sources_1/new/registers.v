`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2020 03:01:24
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
    input rst,
    input reg_write,
    input reg_dst,
    input [4:0] ra,
    input [4:0] rb,
    input [4:0] rw,
    input [31:0] data,
    output [31:0] busA,
    output [31:0] busB
    );
    
    reg [31:0] regs [31:0];
    
    wire busA = regs[ra];
    wire busB = regs[rb];
    
    integer i;
    initial begin 
       for (i = 0; i < 32; i=i+1) begin
            regs[i] = 0;
       end
    end
    
    
    always @(negedge CLK or posedge rst) begin
        if (rst == 1) begin      
            for (i = 0; i < 32; i=i+1) begin
                regs[i] = 0;
            end
        end       
        else if (reg_write == 1'b1) begin
            regs[rw] = data;
        end
        
    end
       
    
endmodule
