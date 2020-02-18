# Processor

## Instructions Implementation Details

#### Branch Instructions:

	-- All branch instructions will have sign extensions as the imm16 represents the offset from current PC, and it can be negative too

	* BEQ - 000100 000000
		- Control Signals:
			* reg_dst = X
			* reg_write = 0
			* mem_read = mem_write = 0
			* jump = 0
			* branch = 1
			* sign_ext = 1
			* alu_src = 0
	* BGEZ - 000001 000000
		- Extra:
			* Force rt to 00000
		- Control Signals:
			* reg_dst = X
			* reg_write = 0
			* mem_read = mem_write = 0
			* jump = 0
			* branch = 1
			* sign_ext = 1
			* alu_src = 0
	
	* BLEZ - 000110 000000
		- Control Signals:
			* reg_dst = X
			* reg_write = 0
			* mem_read = mem_write = 0
			* jump = 0
			* branch = 1
			* sign_ext = 1
			* alu_src = 0

## Sign Extensions
	* ADDI  - 001000 000000
	*  ?    - 101011 000000
	*  ?    - 100011 000000
	* SLTI  - 001010 000000
	* SLTIU - 001011 000000
	* BEQ   - 000100 000000
	* BGEZ  - 000001 000000
	* BGTZ  - 000111 000000
	* BLEZ  - 000110 000000

## ALU_SRC
	busB  - 0
	imm16 - 1

	0:
		* R type - 000000 XXXXXX
		* BEQ    - 000100 000000
		* BGEZ   - 000001 000000
		* BGTZ   - 000111 000000
		* BLEZ   - 000110 000000
		

## Variable References
