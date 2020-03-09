`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2020 22:40:08
// Design Name: 
// Module Name: instr_memory
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


module instr_memory(
    input [31:0] addr,
    output [31:0] data_out
    );
    
    reg [7:0] instr_memory_array [4095:0];
    
    //initialize
    integer j;
    initial begin
      
        for (j=0; j < 100; j=j+4) begin
            instr_memory_array[j] = 8'b00000000;
            instr_memory_array[j+1] = 8'b00000001;
            instr_memory_array[j+2] = 8'b00001000;
            instr_memory_array[j+3] = 8'b00100000; //ADD $1, $1, $0   works ;
        end
//        BEQ
//        for (j=100; j < 104; j=j+4) begin
//        // 00010000 00000000 11111111 1 110 000 0 -32
                                              
//            instr_memory_array[j] = 8'b00010000;
//            instr_memory_array[j+1] = 8'b00000000;
//            instr_memory_array[j+2] = 8'b11111111;
//            instr_memory_array[j+3] = 8'b11111000;
//        end
//        JUMP
        for (j=100; j < 104; j=j+4) begin
        // 00001000 00000000 00000000 00000001
                                              
            instr_memory_array[j] = 8'b00001000;
            instr_memory_array[j+1] = 8'b00000000;
            instr_memory_array[j+2] = 8'b00000000;
            instr_memory_array[j+3] = 8'b00000001;
        end
        for (j=104; j < 300; j=j+4) begin
            instr_memory_array[j] = 8'b00000000;
            instr_memory_array[j+1] = 8'b00000001;
            instr_memory_array[j+2] = 8'b00001000;
            instr_memory_array[j+3] = 8'b00100000; //ADD $1, $1, $0   works ;
        end
    end
 
    assign data_out =  {instr_memory_array[addr], instr_memory_array[addr+1], instr_memory_array[addr+2], instr_memory_array[addr+3]};
    
    
endmodule

