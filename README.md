# MIPS Processor
A MIPS ISA based processor designed for the course Introduction to Processor Architecture.

## Features
* 2-stage **pipelined** processor, with the following stages
	* Fetch
	* Execute
* 1 Branch Delay Slot
* Replicates the **Harvard architecture**, with **separate** data and instruction memories
* Instruction & Data Memory
	* **1KB** each: **1024 x 1** _byte_
	* Each slot is of 8-bit width
	* Extensible to **16KB**: **4096 x 4** _bytes_
* Has 32 **32-bit** registers 
* Supports R, I & J type instructions. Full list of supported instructions is given below

## Instructions Supported
###### R-Type
* ADD 
* AND
* NOR 
* OR 
* SUB
* XOR 
* SLT 
* SRA 
* SRAV 
* SRL
* SRLV 
* SLL
* SLTU
###### I-Type
* ADDI
* ANDI 
* XORI
* ORI 
* SLTI 
* SLTIU 
* BEQ 
* BGTZ 
* BLEZ
* BNE 
* LB
* SB
###### J-Type
* J
* JAL
