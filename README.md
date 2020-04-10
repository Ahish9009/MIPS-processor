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

###### AND
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  AND   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100100 |

**Format**: `AND rd, rs, rt`

###### NOR 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  NOR   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100111 |

**Format**: `NOR rd, rs, rt`

###### OR 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |   OR   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100101 |

**Format**: `OR rd, rs, rt`

###### SUB
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SUB   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100010 |

**Format**: `SUB rd, rs, rt`

###### XOR 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  XOR   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 100110 |

**Format**: `XOR rd, rs, rt`

###### SLT 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SLT   |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 101010 |

**Format**: `SLT rd, rs, rt`

###### SRA 
| Special |   0   | R<sub>1</sub> | R<sub>2</sub> |   Shift   |  SRA   |
|:-------:|:-----:|:--:|:--:|:-----:|:------:|
| 000000  | 00000 | rt | rd |   sa  | 000011 |

**Format**: `SRA rd, rt, sa`

###### SRAV
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SRAV  |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 000111 |

**Format**: `SRAV rd, rt, rs`

###### SRL
| Special |   0   | R<sub>1</sub> | R<sub>2</sub> |   Shift   |  SRL   |
|:-------:|:-----:|:--:|:--:|:-----:|:------:|
| 000000  | 00000 | rt | rd |   sa  | 000010 |

**Format**: `SRL rd, rt, sa`

###### SRLV 
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SRLV  |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 000110 |

**Format**: `SRLV rd, rt, rs`

###### SLL
| Special |   0   | R<sub>1</sub> | R<sub>2</sub> |   Shift   |  SLL   |
|:-------:|:-----:|:--:|:--:|:-----:|:------:|
| 000000  | 00000 | rt | rd |   sa  | 000000 |

**Format**: `SLL rd, rt, sa`

###### SLTU
| Special | R<sub>1</sub> | R<sub>2</sub> | R<sub>3</sub> |   0   |  SLTU  |
|:-------:|:--:|:--:|:--:|:-----:|:------:|
| 000000  | rs | rt | rd | 00000 | 101011 |

**Format**: `SLTU rd, rs, rt`

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
