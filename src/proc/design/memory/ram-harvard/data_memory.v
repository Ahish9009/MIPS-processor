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
    output [7:0] word_out,
    output [31:0] data_out,
    output [7:0] data0,
    output [7:0] data1,
    output [7:0] data2,
    output [7:0] data3,
    output [7:0] data4,
    output [7:0] data5
    );
    
    reg [7:0] data_memory_array [4095:0];
    
    //initialize
    integer j;
    initial begin
      
        for (j=0; j < 256; j=j+1) begin
            data_memory_array[j] = 0;
        end
        
        data_memory_array[0] = 8'b11;
        data_memory_array[1] = 8'b100;
        data_memory_array[2] = 8'b11;
        data_memory_array[3] = 8'b1;
        
    end
    
    //clocked
    always @(negedge CLK) begin
        if (write_mem == 1'b1 && data_in) begin
//            data_memory_array[addr[31:0]] = data_in[31:24];   
//            data_memory_array[addr[31:0]+1] = data_in[23:16];   
//            data_memory_array[addr[31:0]+2] = data_in[15:8];   
//            data_memory_array[addr[31:0]+3] = data_in[7:0];   
            data_memory_array[addr[31:0]] = data_in[7:0];   
        end
        else if (write_mem == 1'b1 && data_in == 32'b0) begin
            data_memory_array[addr[31:0]] = data_in[7:0];
        end
         
    end
    
    assign word_out = data_memory_array[addr];
//    assign data_out = {data_memory_array[addr], data_memory_array[addr+1], data_memory_array[addr+2], data_memory_array[addr+3]};
    assign data_out = { {24{data_memory_array[addr][7]}}, data_memory_array[addr]};
    assign data0 = data_memory_array[0];
    assign data1 = data_memory_array[1];
    assign data2 = data_memory_array[2];
    assign data3 = data_memory_array[3];
    assign data4 = data_memory_array[4];
    assign data5 = data_memory_array[5];
//    assign data_out = { 24'b0, data_memory_array[addr]};
        
    
endmodule

