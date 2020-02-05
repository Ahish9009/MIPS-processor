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
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
    input [31:0] data,
    output [31:0] busA,
    output [31:0] busB
    );
    
    reg [31:0] regs [31:0];
    wire reg_final_dst = (reg_dst == 1'b1) ? rd : rt;
    
    wire busA = regs[rs];
    wire busB = regs[rt];
    
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
            regs[reg_final_dst] = data;
        end
        
    end
       
    
endmodule
