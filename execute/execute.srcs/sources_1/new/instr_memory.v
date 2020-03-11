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
    
//        instr_memory_array[0] = 8'b00000000; 
//        instr_memory_array[1] = 8'b01000000;  
//        instr_memory_array[2] = 8'b00010000; 
//        instr_memory_array[3] = 8'b00100000; 
        
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
//        instr_memory_array[4] = 8'b00000000; 
//        instr_memory_array[5] = 8'b00000010;  
//        instr_memory_array[6] = 8'b00011000; 
//        instr_memory_array[7] = 8'b00100010; 
        
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
        
//        instr_memory_array[8] = 8'b00001100;
//        instr_memory_array[9] = 8'b00000000;
//        instr_memory_array[10] = 8'b00000000;
//        instr_memory_array[11] = 8'b00000100;


instr_memory_array[0] = 8'b10000000;
instr_memory_array[1] = 8'b00000001;
instr_memory_array[2] = 8'b00000000;
instr_memory_array[3] = 8'b00000000;
instr_memory_array[4] = 8'b00100000;
instr_memory_array[5] = 8'b01000000;
instr_memory_array[6] = 8'b00000000;
instr_memory_array[7] = 8'b00000000;
instr_memory_array[8] = 8'b00000000;
instr_memory_array[9] = 8'b00000001;
instr_memory_array[10] = 8'b00110000;
instr_memory_array[11] = 8'b00100000;
instr_memory_array[12] = 8'b00100000;
instr_memory_array[13] = 8'b11000110;
instr_memory_array[14] = 8'b11111111;
instr_memory_array[15] = 8'b11111111;
instr_memory_array[16] = 8'b00010000;
instr_memory_array[17] = 8'b01000001;
instr_memory_array[18] = 8'b00000000;
instr_memory_array[19] = 8'b00010111;
instr_memory_array[20] = 8'b00000000;
instr_memory_array[21] = 8'b00000000;
instr_memory_array[22] = 8'b00000000;
instr_memory_array[23] = 8'b00100000;
instr_memory_array[24] = 8'b10000000;
instr_memory_array[25] = 8'b01000100;
instr_memory_array[26] = 8'b00000000;
instr_memory_array[27] = 8'b00000001;
instr_memory_array[28] = 8'b00101000;
instr_memory_array[29] = 8'b01100011;
instr_memory_array[30] = 8'b11111111;
instr_memory_array[31] = 8'b11111111;
instr_memory_array[32] = 8'b00010000;
instr_memory_array[33] = 8'b01100110;
instr_memory_array[34] = 8'b00000000;
instr_memory_array[35] = 8'b00001010;
instr_memory_array[36] = 8'b00100001;
instr_memory_array[37] = 8'b00101001;
instr_memory_array[38] = 8'b00000000;
instr_memory_array[39] = 8'b00000000;
instr_memory_array[40] = 8'b10000000;
instr_memory_array[41] = 8'b01100101;
instr_memory_array[42] = 8'b00000000;
instr_memory_array[43] = 8'b00000001;
instr_memory_array[44] = 8'b10000000;
instr_memory_array[45] = 8'b01100111;
instr_memory_array[46] = 8'b00000000;
instr_memory_array[47] = 8'b00000010;
instr_memory_array[48] = 8'b00000000;
instr_memory_array[49] = 8'b10100111;
instr_memory_array[50] = 8'b01000000;
instr_memory_array[51] = 8'b00101011;
instr_memory_array[52] = 8'b00010101;
instr_memory_array[53] = 8'b00000000;
instr_memory_array[54] = 8'b00000000;
instr_memory_array[55] = 8'b00000011;
instr_memory_array[56] = 8'b00100001;
instr_memory_array[57] = 8'b00100000;
instr_memory_array[58] = 8'b00000000;
instr_memory_array[59] = 8'b00000000;
instr_memory_array[60] = 8'b10100000;
instr_memory_array[61] = 8'b01100101;
instr_memory_array[62] = 8'b00000000;
instr_memory_array[63] = 8'b00000010;
instr_memory_array[64] = 8'b10100000;
instr_memory_array[65] = 8'b01100111;
instr_memory_array[66] = 8'b00000000;
instr_memory_array[67] = 8'b00000001;
instr_memory_array[68] = 8'b00100000;
instr_memory_array[69] = 8'b01100011;
instr_memory_array[70] = 8'b00000000;
instr_memory_array[71] = 8'b00000001;
instr_memory_array[72] = 8'b00001000;
instr_memory_array[73] = 8'b00000000;
instr_memory_array[74] = 8'b00000000;
instr_memory_array[75] = 8'b00001000;
instr_memory_array[76] = 8'b00100001;
instr_memory_array[77] = 8'b00101001;
instr_memory_array[78] = 8'b00000000;
instr_memory_array[79] = 8'b00000000;
instr_memory_array[80] = 8'b00100000;
instr_memory_array[81] = 8'b01000010;
instr_memory_array[82] = 8'b00000000;
instr_memory_array[83] = 8'b00000001;
instr_memory_array[84] = 8'b00100000;
instr_memory_array[85] = 8'b11000110;
instr_memory_array[86] = 8'b11111111;
instr_memory_array[87] = 8'b111111111;
instr_memory_array[88] = 8'b00001000;
instr_memory_array[89] = 8'b00000000;
instr_memory_array[90] = 8'b00000000;
instr_memory_array[91] = 8'b00000100;
instr_memory_array[92] = 8'b00100001;
instr_memory_array[93] = 8'b00101001;
instr_memory_array[94] = 8'b00000000;
instr_memory_array[95] = 8'b00000000;
  
        for (j=92; j < 100; j=j+4) begin
            instr_memory_array[j] = 8'b00000000;
            instr_memory_array[j+1] = 8'b00000001;
            instr_memory_array[j+2] = 8'b00001000;
            instr_memory_array[j+3] = 8'b00100000; //ADD $1, $1, $0   works ;
        end
//        BEQ
//        for (j=100; j < 104; j=j+4) begin
        // 00010000 00000000 11111111 1 110 000 0 -32
                                              
//            instr_memory_array[j] = 8'b00010000;
//            instr_memory_array[j+1] = 8'b00000000;
//            instr_memory_array[j+2] = 8'b11111111;
//            instr_memory_array[j+3] = 8'b11111000;
//        end
//        JUMP
//        for (j=100; j < 104; j=j+4) begin
//        // 00001000 00000000 00000000 00000001
                                              
//            instr_memory_array[j] = 8'b00001100;
//            instr_memory_array[j+1] = 8'b00000000;
//            instr_memory_array[j+2] = 8'b00000000;
//            instr_memory_array[j+3] = 8'b00000010;
//        end
        for (j=100; j < 300; j=j+4) begin
            instr_memory_array[j] = 8'b00000000;
            instr_memory_array[j+1] = 8'b00000001;
            instr_memory_array[j+2] = 8'b00001000;
            instr_memory_array[j+3] = 8'b00100000; //ADD $1, $1, $0   works ;
        end
    end
 
    assign data_out =  {instr_memory_array[addr], instr_memory_array[addr+1], instr_memory_array[addr+2], instr_memory_array[addr+3]};
    
    
endmodule

