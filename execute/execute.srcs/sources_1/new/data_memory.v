`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2020 11:23:00
// Design Name: 
// Module Name: data_memory
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

module data_memory(
    input CLK,
    input write_mem,
    input [31:0] addr,
    input [31:0] data_in,
    output [31:0] data_out
    );
    
    reg [31:0] data_memory_array [255:0];
    
    //initialize
    integer j;
    initial begin
      
        for (j=0; j < 256; j=j+1) begin
            data_memory_array[j] = 8;
        end
    end
    
    always @(negedge CLK) begin
        if (write_mem == 1'b1 && data_in) begin
            data_memory_array[addr[31:0]] = data_in;   
        end
         
    end
    
    assign data_out = data_memory_array[addr];
//    assign data_out = 32'b0;
    
    
endmodule
