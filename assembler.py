import re

instruction_set = {
    "ADD": "0000", "SUB": "0001", "AND": "0010", "OR": "0011", "NOT": "0100",
    "CMP": "0101", "JMP": "0110", "JEQ": "0111", "JGR": "1000", "LOAD": "1001",
    "STORE": "1010", "MOV": "1011", "IN": "1100", "OUT": "1101", "WAIT": "1110",
}

register_set = {
    "A": "00", "B": "01", "R": "10", "I": "11",
}

def count_immediate_instructions(lines, jump_line):
    """Conta instruções com operandos imediatos até o endereço do jump."""
    immediate_instructions = {"ADD", "SUB", "CMP", "JMP", "JEQ", "JGR", "LOAD", "STORE", "MOV"}
    count = 0
    for line in lines:
        parts = [p.strip() for p in re.split(r'[,\s]+', line.strip())]
        if parts and parts[0].upper() in immediate_instructions:
            # Se a linha tiver um imediato e não for após o jum
            if len(parts) > 2 and parts[2].isdigit():
                count += 1

            if parts[0] in ["JMP", "JEQ", "JGR"]:
                count += 1

        if parts[0] not in ["JMP", "JEQ", "JGR"] and jump_line in line:
            break

    return count

def parse_labels(assembly_code):
    """Realiza a primeira passagem para identificar labels."""
    labels = {}
    line_counter = 0
    for line in assembly_code.splitlines():
      
        line = line.strip()
        if line.endswith(':'):
            label = line[:-1].strip()
            labels[label] = line_counter 
        elif line:
            line_counter += 1

    return labels

def assembly_to_binary(assembly_code):
    """Converte assembly em binário, considerando labels e operandos imediatos."""
    binary_code = {}
    labels = parse_labels(assembly_code)
    lines = assembly_code.splitlines()
    line_counter = 0
    offset_correction = 0  # Ajusta offset apenas nos saltos

    for line in lines:
        line = line.strip()
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
                    binary_code[line_counter] = f"{value:08b}; -- imediato ({value:X})"
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
                    binary_code[line_counter] = f"{value:08b}; -- imediato ({value:X})"
                else:
                    reg2 = register_set.get(parts[2], "00")
                    binary_line = f"{opcode}{reg1}{reg2}"
                    binary_code[line_counter] = f"{binary_line}; -- {line}"

            elif instruction in ["JMP", "JEQ", "JGR"]:
                addr_decimal = labels.get(parts[1], 0)
                offset_correction = count_immediate_instructions(lines, parts[1])  # Conta até o jump
                addr_decimal += offset_correction   # Adiciona o offset de saltos e o endereço atual

                addr_bin = format(addr_decimal, '08b')
                addr_hex = format(addr_decimal, 'X').upper()
                binary_line = f"{opcode}0000"
                binary_code[line_counter] = f"{binary_line}; -- {line}"
                line_counter += 1
                binary_code[line_counter] = f"{addr_bin}; -- endereço ({addr_hex})"

            elif instruction in ["STORE", "LOAD"]:
                reg1 = register_set.get(parts[1], "00")
                addr = int(parts[2], 16) if not parts[2].isdigit() else int(parts[2])
                addr_bin = format(addr, '08b')
                binary_line = f"{opcode}{reg1}11"
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
    """Gera o arquivo MIF a partir do código binário."""
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






IN A
IN B
MOV R 0
STORE R 255
MOV R A
LOOP_START
SUB R B
MOV A R
LOAD R 255
ADD R 1
STORE R 255
MOV R A
CMP R B
JGR LOOP_START
LOAD R 255
OUT R
WAIT

