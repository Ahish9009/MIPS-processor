debug = 0

opcodes = {
        "ADD"   : "000000",
        "AND"   : "000000",
        "NOR"   : "000000",
        "OR"    : "000000",
        "SUB"   : "000000",
        "XOR"   : "000000",
        "SLT"   : "000000",
        "SRA"   : "000000",
        "SRAV"  : "000000",
        "SRL"   : "000000",
        "SRLV"  : "000000",
        "SLL"   : "000000",
        "SLTU"  : "000000",

        "ADDI"  : "001000",
        "ANDI"  : "001100",
        "XORI"  : "001110",
        "ORI"   : "001101",
        "SLTI"  : "001010",
        "SLTIU" : "001011",
        "BEQ"   : "000100",
        "BGEZ"  : "000001",
        "BGTZ"  : "000111",
        "BLEZ"  : "000110",
        "BNE"   : "000101",
        "LB"    : "100000",
        "SB"    : "101000",

        "J"     : "000010",
        "JAL"   : "000011"
        }

functs = {
        "ADD"   : "100000",
        "AND"   : "100100",
        "NOR"   : "100111",
        "OR"    : "100101",
        "SUB"   : "100010",
        "XOR"   : "100110",
        "SLT"   : "101010",
        "SRA"   : "000011",
        "SRAV"  : "000111",
        "SRL"   : "000010",
        "SRLV"  : "000110",
        "SLL"   : "000000",
        "SLTU"  : "101011"
        }

outputs = []
while(1):

    instr = input()
    output = ""
    count = 0
    if not instr:
        break
    
    cmd = instr.split(" ")[0]
    opcode = opcodes[cmd]
    if opcode == "000000": #R type
        funct = functs[cmd]
        args = instr[len(cmd)+1::].split(',')

        for i in range(len(args)):
            # get the argument registers and convert to binary
            args[i] = format(int(args[i].strip("$ ")), "05b")
            # print(args[i])

        if cmd not in ["SRA", "SRL", "SLL"]:
            output = opcode + args[1] + args[2] + args[0] + "00000" + funct
        else:
            output = opcode + "00000" + args[1] + args[0] + args[2] + funct
        
    # J instruction
    elif cmd[0] == 'J':
        arg = int(instr[len(cmd)+1::].strip(" "))
        arg = format(arg, "026b")
        output = opcode + arg

    else: #I type 

        args = instr[len(cmd)+1::].split(',')
        
        if cmd not in ["BGTZ", "BLEZ", "BNE", "LB", "SB"]:
            for i in range(len(args)):
                if i == 0 or i == 1:
                    args[i] = format(int(args[i].strip("$ ")), "05b")
                    # print(args[i])
                else:
                    args[i] = format(int(args[i].strip(" ")), "016b")
            output = opcode + args[0] + args[1] + args[2]
        
        elif cmd in ["BGTZ", "BLEZ"]:
            for i in range(len(args)):

                if i == 0:
                    args[i] = format(int(args[i].strip("$ ")), "05b")
                    # print(args[i])
                else:
                    args[i] = format(int(args[i].strip(" ")), "016b")

            output = opcode + args[0] + "00000" + args[1]

        elif cmd == "BNE":
            for i in range(len(args)):
                if i in [0,1]:
                    args[i] = format(int(args[i].strip("$ ")), "05b")
                    # print(args[i])
                else:
                    args[i] = format(int(args[i].strip(" ")), "016b")

            output = opcode + args[0] + args[1] + args[2]

        elif cmd in ["LB", "SB"]:
            args[0] = format(int(args[0].strip("$ ")), "05b")
            offset = ""
            base = ""
            flag = 0
            for i in args[1].strip(" "):
                if i != '(' and not flag:
                    offset += i
                elif i in '()':
                    flag = 1
                else:
                    base += i
            
            offset = format(int(offset), "016b")
            base = format(int(base), "05b")
            output = opcode + base + args[0] + offset

    outputs += [output[0:8], output[8:16], output[16:24], output[24:32]]

    if debug:
        cnt = 1
        for j in range(len(output)):
                print(output[j], end='')
                if cnt%8 == 0:
                    print(" ", end='')
                cnt += 1
        print()

with open("assembled", "w") as f:
    for line in outputs:
        f.write(line)
if debug:
    for i in range(len(outputs)):
        print("instr_memory_array[" + str(i) + "] = 8'b"+outputs[i]+";")








