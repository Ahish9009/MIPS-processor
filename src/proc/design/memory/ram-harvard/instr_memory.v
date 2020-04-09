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
    
        //ADD $2, $2, $0:
    
        instr_memory_array[0] = 8'b00000000; 
        instr_memory_array[1] = 8'b01000000;  
        instr_memory_array[2] = 8'b00010000; 
        instr_memory_array[3] = 8'b00100000; 
        
        //AND $3, $0, $2:
//        instr_memory_array[4] = 8'b00000000; 
//        instr_memory_array[5] = 8'b00000010;  
//        instr_memory_array[6] = 8'b00011000; 
//        instr_memory_array[7] = 8'b00100100; 
        
        //NOR $3, $0, $2:
//        instr_memory_array[4] = 8'b00000000; 
//        instr_memory_array[5] = 8'b00000010;  
//        instr_memory_array[6] = 8'b00011000; 
//        instr_memory_array[7] = 8'b00100111; 
        
        //OR $3, $0, $2:
//        instr_memory_array[4] = 8'b00000000; 
//        instr_memory_array[5] = 8'b00000010;  
//        instr_memory_array[6] = 8'b00011000; 
//        instr_memory_array[7] = 8'b00100101; 
        
        //SUB $3, $0, $2:
        instr_memory_array[4] = 8'b00000000; 
        instr_memory_array[5] = 8'b00000010;  
        instr_memory_array[6] = 8'b00011000; 
        instr_memory_array[7] = 8'b00100010; 
        
        //XOR $3, $0, $2:
//        instr_memory_array[4] = 8'b00000000; 
//        instr_memory_array[5] = 8'b00000010;  
//        instr_memory_array[6] = 8'b00011000; 
//        instr_memory_array[7] = 8'b00100110; 
        
        //SLT $3, $0, $2:
//        instr_memory_array[4] = 8'b00000000; 
//        instr_memory_array[5] = 8'b01000000;  
//        instr_memory_array[6] = 8'b00011000; 
//        instr_memory_array[7] = 8'b00101010; 
        
        //SRA $3, $3, 1:
//        instr_memory_array[8] = 8'b00000000; 
//        instr_memory_array[9] = 8'b00000011;  
//        instr_memory_array[10] = 8'b00011000; 
//        instr_memory_array[11] = 8'b10000011; 
        
        //SRAV $3, $3, $1:
//        instr_memory_array[8] = 8'b00000000; 
//        instr_memory_array[9] = 8'b01100001;  
//        instr_memory_array[10] = 8'b00011000; 
//        instr_memory_array[11] = 8'b00000111; 
        
        //SRL $3, $3, 1:
//        instr_memory_array[8] = 8'b00000000; 
//        instr_memory_array[9] = 8'b00000011;  
//        instr_memory_array[10] = 8'b00011000; 
//        instr_memory_array[11] = 8'b01000010; 
        
        //SRLV $3, $3, $1:
//        instr_memory_array[8] = 8'b00000000; 
//        instr_memory_array[9] = 8'b01100001;  
//        instr_memory_array[10] = 8'b00011000; 
//        instr_memory_array[11] = 8'b00000110; 
        
        //SLL $3, $3, 1:
//        instr_memory_array[8] = 8'b00000000; 
//        instr_memory_array[9] = 8'b000000011;  
//        instr_memory_array[10] = 8'b00011000; 
//        instr_memory_array[11] = 8'b01000000; 
        
        //SLTU $3, $3, 1:
//        instr_memory_array[8] = 8'b00000000; 
//        instr_memory_array[9] = 8'b01100001;  
//        instr_memory_array[10] = 8'b00011000; 
//        instr_memory_array[11] = 8'b00101011; 
        
        //ADDI $2, $2, 5:
//        instr_memory_array[8] = 8'b00100000; 
//        instr_memory_array[9] = 8'b01000010;  
//        instr_memory_array[10] = 8'b00000000; 
//        instr_memory_array[11] = 8'b00000101;
        
        //ANDI $2, $2, 5:
//        instr_memory_array[8] = 8'b00110000; 
//        instr_memory_array[9] = 8'b01000010;  
//        instr_memory_array[10] = 8'b00000000; 
//        instr_memory_array[11] = 8'b00000101; 
        
        //XORI $2, $2, 5:
//        instr_memory_array[8] = 8'b00111000; 
//        instr_memory_array[9] = 8'b01000010;  
//        instr_memory_array[10] = 8'b00000000; 
//        instr_memory_array[11] = 8'b00000101; 
        
        //ORI $2, $2, 5:
//        instr_memory_array[8] = 8'b00110100; 
//        instr_memory_array[9] = 8'b01000010;  
//        instr_memory_array[10] = 8'b00000000; 
//        instr_memory_array[11] = 8'b00000101; 
        
        //SLTI $2, $2, < -4
//        instr_memory_array[8] = 8'b00101000; 
//        instr_memory_array[9] = 8'b01100011;  
//        instr_memory_array[10] = 8'b11111111; 
//        instr_memory_array[11] = 8'b11110000; 
        
//        //SLTIU $2, $2, (all ones):
//        instr_memory_array[8] = 8'b00101100; 
//        instr_memory_array[9] = 8'b01000010;  
//        instr_memory_array[10] = 8'b11111111; 
//        instr_memory_array[11] = 8'b11111111; 

        
        //BGTZ $2, $2, 5:
//        instr_memory_array[8] = 8'b00011100; 
//        instr_memory_array[9] = 8'b01000000;  
//        instr_memory_array[10] = 8'b00000000; 
//        instr_memory_array[11] = 8'b00010000; 
        
        //BGTZ $2, $2, 5:
//        instr_memory_array[8] = 8'b00011100; 
//        instr_memory_array[9] = 8'b01000000;  
//        instr_memory_array[10] = 8'b00000000; 
//        instr_memory_array[11] = 8'b00010000; 
        
        //BLEZ $2, $2, 5:
//        instr_memory_array[8] = 8'b00011000; 
//        instr_memory_array[9] = 8'b01100000;  
//        instr_memory_array[10] = 8'b00000000; 
//        instr_memory_array[11] = 8'b00010000; 
        
        //BLEZ $2, $2, 5:
//        instr_memory_array[8] = 8'b00010100; 
//        instr_memory_array[9] = 8'b01100010;  
//        instr_memory_array[10] = 8'b00000000; 
//        instr_memory_array[11] = 8'b00010000; 
        
        instr_memory_array[8] = 8'b00001100;
        instr_memory_array[9] = 8'b00000000;
        instr_memory_array[10] = 8'b00000000;
        instr_memory_array[11] = 8'b00000100;

                            
        for (j=12; j < 100; j=j+4) begin
            instr_memory_array[j] = 8'b00000000;
            instr_memory_array[j+1] = 8'b00000001;
            instr_memory_array[j+2] = 8'b00001000;
            instr_memory_array[j+3] = 8'b00100000; //ADD $1, $1, $0   works ;
        end
//        BEQ
        for (j=100; j < 104; j=j+4) begin
        // 00010000 00000000 11111111 1 110 000 0 -32
                                              
            instr_memory_array[j] = 8'b00010000;
            instr_memory_array[j+1] = 8'b00000000;
            instr_memory_array[j+2] = 8'b11111111;
            instr_memory_array[j+3] = 8'b11111000;
        end
//        JUMP
//        for (j=100; j < 104; j=j+4) begin
//        // 00001000 00000000 00000000 00000001
                                              
//            instr_memory_array[j] = 8'b00001100;
//            instr_memory_array[j+1] = 8'b00000000;
//            instr_memory_array[j+2] = 8'b00000000;
//            instr_memory_array[j+3] = 8'b00000010;
//        end
        for (j=104; j < 300; j=j+4) begin
            instr_memory_array[j] = 8'b00000000;
            instr_memory_array[j+1] = 8'b00000001;
            instr_memory_array[j+2] = 8'b00001000;
            instr_memory_array[j+3] = 8'b00100000; //ADD $1, $1, $0   works ;
        end
    end
 
    assign data_out =  {instr_memory_array[addr], instr_memory_array[addr+1], instr_memory_array[addr+2], instr_memory_array[addr+3]};
    
    
endmodule

