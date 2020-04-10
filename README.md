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
#### R-Type
###### ADD 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  ADD   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100000 |

**Format**: `ADD rd, rs, rt`    
**Purpose**: `To add 32-bit integers.`
#

###### AND
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  AND   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100100 |

**Format**: `AND rd, rs, rt`    
**Purpose**: `To do a bitwise logical AND.`
#

###### NOR 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  NOR   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100111 |

**Format**: `NOR rd, rs, rt`    
**Purpose**: `To do a bitwise logical NOR.`
#

###### OR 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |   OR   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100101 |

**Format**: `OR rd, rs, rt`    
**Purpose**: `To do a bitwise logical OR.`
#

###### SUB
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SUB   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100010 |

**Format**: `SUB rd, rs, rt`    
**Purpose**: `To subtract 32-bit integers.`
#

###### XOR 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  XOR   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100110 |

**Format**: `XOR rd, rs, rt`    
**Purpose**: `To do a bitwise logical Exclusive OR.`
#

###### SLT 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SLT   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 101010 |

**Format**: `SLT rd, rs, rt`    
**Purpose**: `Set on Less Than`
#

###### SRA 
| Special |   0   | R<sub>1</sub> | R<sub>2</sub> |   Shift   |  SRA   |
|:-------:|:-----:|:--:|:--:|:-----:|:------:|
| 000000  | 00000 | rt | rd |   sa  | 000011 |

**Format**: `SRA rd, rt, sa`    
**Purpose**: `To execute an arithmetic right-shift of a word by a fixed number of bits.`
#

###### SRAV
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SRAV  |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 000111 |

**Format**: `SRAV rd, rt, rs`    
**Purpose**: `To execute an arithmetic right-shift of a word by a variable number of bits.`
#

###### SRL
| Special |   0   | R<sub>1</sub> | R<sub>2</sub> |   Shift   |  SRL   |
|:-------:|:-----:|:--:|:--:|:-----:|:------:|
| 000000  | 00000 | rt | rd |   sa  | 000010 |

**Format**: `SRL rd, rt, sa`    
**Purpose**: `To execute a logical right-shift of a word by a fixed number of bits.`
#

###### SRLV 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SRLV  |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 000110 |

**Format**: `SRLV rd, rt, rs`   
**Purpose**: `To execute a logical right-shift of a word by a variable number of bits.`
#

###### SLL
| Special |   0   | R<sub>1</sub> | R<sub>2</sub> |   Shift   |  SLL   |
|:-------:|:-----:|:--:|:--:|:-----:|:------:|
| 000000  | 00000 | rt | rd |   sa  | 000000 |

**Format**: `SLL rd, rt, sa`    
**Purpose**: `Shift Word Left Logical`
#

###### SLTU
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SLTU  |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 101011 |

**Format**: `SLTU rd, rs, rt`     
**Purpose**: `Set on Less Than Unsigned`
#

#### I-Type
###### ADDI
|  ADDI  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 001000 | rs | rt | immediate |

**Format**: `ADDI rt, rs, immediate`   
**Purpose**: `ADD Immediate`
#

###### ANDI 
|  ANDI  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 001100 | rs | rt | immediate |

**Format**: `ANDI rt, rs, immediate`   
**Purpose**: `AND Immediate`
#

###### XORI
|  XORI  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 001110 | rs | rt | immediate |

**Format**: `XORI rt, rs, immediate`   
**Purpose**: `Exclusive OR Immediate`
#

###### ORI 
|  ORI  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 001101 | rs | rt | immediate |

**Format**: `ORI rt, rs, immediate`   
**Purpose**: `To do a bitwise logical OR with a constant.`
#

###### SLTI 
|  SLTI  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 001010 | rs | rt | immediate |

**Format**: `SLTI rt, rs, immediate`   
**Purpose**: `Set on Less Than Immediate`
#

###### SLTIU 
|  SLTIU | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 001011 | rs | rt | immediate |

**Format**: `SLTIU rt, rs, immediate`   
**Purpose**: `Set on Less Than Immediate Unsigned`
#

###### BEQ 
|  BEQ  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 000100 | rs | rt | offset |

**Format**: `BEQ rs, rt, offset`   
**Purpose**: `Branch on Equal`
#

###### BGTZ 
|  BGTZ  | R<sub>1</sub> | 0 | imm16 |
|:------:|:--:|:--:|:---------:|
| 000111 | rs | 00000 | offset |

**Format**: `BGTZ rs, offset`   
**Purpose**: `Branch on Greater Than Zero`
#

###### BLEZ
|  BLEZ  | R<sub>1</sub> | 0 | imm16 |
|:------:|:--:|:--:|:---------:|
| 000110 | rs | 00000 | offset |

**Format**: `BLEZ rs, offset`   
**Purpose**: `Branch on Less Than or Equal to Zero`
#

###### BNE 
|  BNE  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 000101 | rs | rt | offset |

**Format**: `BNE rs, rt, offset`   
**Purpose**: `Branch on Not Equal`
#

###### LB
|  LB  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 100000 | base | rt | offset |

**Format**: `LB rt, offset(base)`   
**Purpose**: `Load byte`
#

###### SB
|  SB  | R<sub>1</sub> | R<sub>2</sub> | imm16 |
|:------:|:--:|:--:|:---------:|
| 101000 | base | rt | offset |

**Format**: `SB rt, offset(base)`   
**Purpose**: `Store byte`
#

#### J-Type
###### J
|  J     | imm26      |
|:------:|:----------:|
| 000010 | instr_index|

**Format**: `J target`   
**Purpose**: `Jump`
#

###### JAL
|  JAL   | imm26      |
|:------:|:----------:|
| 000011 | instr_index|

**Format**: `J target`   
**Purpose**: `Jump and Link`
#
