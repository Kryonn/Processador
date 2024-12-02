import re

instruction_set = {
    "ADD":    "0000",   # Adição
    "SUB":    "0001",   # Subtração
    "AND":    "0010",   # AND lógico
    "OR":     "0011",   # OR lógico
    "NOT":    "0100",   # Negação
    "CMP":    "0101",   # Comparação
    "JMP":    "0110",   # Salto incondicional
    "JEQ":    "0111",   # Salto se igual
    "JGR":    "1000",   # Salto se maior
    "LOAD":   "1001",   # Carregar de memória
    "STORE":  "1010",   # Armazenar em memória
    "MOV":    "1011",   # Mover valor
    "IN":     "1100",   # Entrada
    "OUT":    "1101",   # Saída
    "WAIT":   "1110",   # Espera
}

register_set = {
    "A": "00",  # Registrador A
    "B": "01",  # Registrador B
    "R": "10",  # Registrador R (resultado)
    "I": "11",  # Registrador I (índice)
}

def assembly_to_binary(assembly_code):
    binary_code = {}
    labels = {}
    
    # Primeira passagem: identifica labels
    line_counter = 0
    for line in assembly_code.splitlines():
        line = line.strip()
        if line.endswith(':'):
            label = line[:-1].strip()
            labels[label] = line_counter
        elif line:
            line_counter += 1
    
    # Segunda passagem: converte instruções
    line_counter = 0
    for line in assembly_code.splitlines():
        line = line.strip()
        
        # Pula labels
        if line.endswith(':') or not line:
            continue
        
        parts = [p.strip() for p in re.split(r'[,\s]+', line)]
        instruction = parts[0].upper()
        
        if instruction not in instruction_set:
            print(f"Instrução inválida: {instruction}")
            continue
        
        opcode = instruction_set[instruction]
        
        try:
            if instruction == "IN":
                reg1 = register_set.get(parts[1], "00")
                binary_line = f"{opcode}{reg1}00"
                binary_code[line_counter] = f"{binary_line}; -- {line}"
            
            elif instruction == "MOV":
                reg1 = register_set.get(parts[1], "00")
                if parts[2].isdigit():
                    value = int(parts[2])
                    binary_line = f"{opcode}{reg1}11"
                    binary_code[line_counter] = f"{binary_line}; -- {line}"
                    line_counter += 1
                    binary_code[line_counter] = f"{value:08b}; -- endereço ({value:X})"
                else:
                    reg2 = register_set.get(parts[2], "00")
                    binary_line = f"{opcode}{reg1}{reg2}"
                    binary_code[line_counter] = f"{binary_line}; -- {line}"
            
            elif instruction in ["CMP", "ADD", "SUB"]:
                reg1 = register_set.get(parts[1], "00")
                if parts[2].isdigit():
                    value = int(parts[2])
                    binary_line = f"{opcode}{reg1}11"
                    binary_code[line_counter] = f"{binary_line}; -- {line}"
                    line_counter += 1
                    binary_code[line_counter] = f"{value:08b}; -- endereço ({value:X})"
                else:
                    reg2 = register_set.get(parts[2], "00")
                    binary_line = f"{opcode}{reg1}{reg2}"
                    binary_code[line_counter] = f"{binary_line}; -- {line}"
            
            elif instruction in ["JMP", "JEQ", "JGR"]:
                
                
                ler a instrução do acemble do inicio ate o END_LOOP contando quantas intruções tem imediato (as instrução que podem ter imediato são: ADD, SUB, CMP, JMP, JEQ, JGR, LOAD, STORE, MOV), depois de contar, acrecente este valor ao a pocição que o lup ira apontar
                
                
                addr_decimal = labels.get(parts[1], 0)
                addr_bin = format(addr_decimal, '08b')
                addr_hex = format(addr_decimal, 'X').upper()
                binary_line = f"{opcode}0000"
                binary_code[line_counter] = f"{binary_line}; -- {line}"
                line_counter += 1
                binary_code[line_counter] = f"{addr_bin}; -- endereço ({addr_hex})"
                
            
            elif instruction in ["STORE", "LOAD"]:
                reg1 = register_set.get(parts[1], "00")
                if parts[2].isdigit():
                    addr = int(parts[2])
                    addr_bin = format(addr, '08b')
                    binary_line = f"{opcode}{reg1}11"  # Define os dois primeiros bits como `11`
                    binary_code[line_counter] = f"{binary_line}; -- {line}"
                    line_counter += 1
                    binary_code[line_counter] = f"{addr_bin}; -- endereço ({addr:X})"
                else:
                    addr = int(parts[2], 16)
                    addr_bin = format(addr, '08b')
                    binary_line = f"{opcode}{reg1}00"
                    binary_code[line_counter] = f"{binary_line}; -- {line}"
                    line_counter += 1
                    binary_code[line_counter] = f"{addr_bin}; -- endereço ({addr:X})"
            
            elif instruction == "OUT":
                reg1 = register_set.get(parts[1], "00")
                binary_line = f"{opcode}{reg1}00"
                binary_code[line_counter] = f"{binary_line}; -- {line}"
            
            elif instruction == "WAIT":
                binary_line = f"{opcode}0000"
                binary_code[line_counter] = f"{binary_line}; -- {line}"
            
            else:
                continue
            
            line_counter += 1
        
        except Exception as e:
            print(f"Erro ao processar instrução {line}: {e}")
    
    return binary_code

def generate_mif(binary_code, file_name="program.mif"):
    depth = 256  
    width = 8 
    
    with open(file_name, "w") as mif_file:
        mif_file.write(f"DEPTH = {depth};\n")
        mif_file.write(f"WIDTH = {width};\n")
        mif_file.write("ADDRESS_RADIX = HEX;\n")
        mif_file.write("DATA_RADIX = BIN;\n")
        mif_file.write("CONTENT\n")
        mif_file.write("BEGIN\n")
        
        for address, binary_line in binary_code.items():
            hex_address = format(address, 'X').upper()
            mif_file.write(f" {hex_address} : {binary_line}\n")
        
        mif_file.write("END;\n")
    print(f"Arquivo .mif gerado: {file_name}")

# Programa de exemplo
assembly_program = """
IN A
IN B
MOV R, 0
LOOP_START:
CMP B, 0
JEQ END_LOOP
ADD R, A
STORE R, 255
SUB B, 1
MOV B, R
LOAD R, 255
JMP LOOP_START
END_LOOP:
OUT R
WAIT
"""

binary_program = assembly_to_binary(assembly_program)
generate_mif(binary_program, "program.mif")
