LB $1, 0(0) 
ADDI $2, $0, 0
ADD $6, $0, $1
ADDI $6, $6, -1
BEQ $2, $1, 23
ADD $0, $0, $0
LB $4, 1(2)
SLTI $3, $3, -1
BEQ $3, $6, 10
ADDI $9, $9, 0
LB $5, 1(3)
LB $7, 2(3)
SLTU $8, $5, $7
BNE $8, $0, 2
ADDI $9, $0, 0
SB $5, 2(3)
SB $7, 1(3)
ADDI $3, $3, 1
J 8
ADDI $9, $9, 0
ADDI $2, $2, 1
ADDI $6, $6, -1
J 4
ADDI $9, $9, 0

