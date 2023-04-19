import sys
import os
import re
from itanium_demangler import parse as demangle
from elftools.elf.elffile import ELFFile


def read_asm_file(filename):
    with open(filename, "r") as file:
        content = file.read()
    return content


def parse_main_cpp(filename):
    with open(filename, "r") as file:
        content = file.read()
    return content


def extract_functions(elf):
    functions = {}

    # Find the symbol table section
    symtab_section = None
    for section in elf.iter_sections():
        if section.header["sh_type"] == "SHT_SYMTAB":
            symtab_section = section
            break

    if not symtab_section:
        raise ValueError("Symbol table not found in the ELF file.")

    # Iterate through the symbols in the symbol table section
    for symbol in symtab_section.iter_symbols():
        if symbol["st_info"]["type"] == "STT_FUNC":
            demangled_name = demangle(symbol.name)
            if demangled_name:
                simplified_name = (
                    re.sub(r"\(.*\)", "", str(demangled_name)).strip().replace(" ", "_")
                )
                simplified_name = re.sub(r"[^a-zA-Z0-9_]", "_", simplified_name)
                functions[symbol.name] = simplified_name

    return functions


def process_asm(content, functions):
    main_content = []
    subroutines = {}
    lines = content.splitlines()

    for line in lines:
        match = re.match(r"^(\S+):", line)
        if match:
            symbol_name = match.group(1)
            if symbol_name in functions:
                subroutine_name = functions[symbol_name]
                subroutines[subroutine_name] = [line]
                continue

        if subroutines:
            last_subroutine = list(subroutines.keys())[-1]
            subroutines[last_subroutine].append(line)
        else:
            main_content.append(line)

    return main_content, subroutines


def demangle_labels(lines, functions):
    demangled_lines = []
    for line in lines:
        for symbol_name, demangled_name in functions.items():
            line = line.replace(symbol_name, demangled_name)
        demangled_lines.append(line)
    return demangled_lines


def write_output(main_content, subroutines, functions):
    os.makedirs("clean", exist_ok=True)
    os.makedirs(os.path.join("clean", "subroutines"), exist_ok=True)

    main_content = demangle_labels(main_content, functions)
    with open(os.path.join("clean", "main.s"), "w") as file:
        file.write("\n".join(main_content))

    for subroutine_name, content in subroutines.items():
        content = demangle_labels(content, functions)
        with open(
            os.path.join("clean", "subroutines", f"{subroutine_name}.s"), "w"
        ) as file:
            file.write("\n".join(content))

    create_makefile(subroutines)  # Corrected variable here


def create_makefile(subroutines):
    makefile_content = f"""SHELL := /bin/bash

NAME = main
TARGET = $(NAME)
SRC = $(NAME).s
OBJ = output/$(SRC:.s=.o)
DEBUG_FLAGS = -g -gdwarf-2
CC = as $(DEBUG_FLAGS)
LINK = g++ -L/usr/lib/aarch64-linux-gnu -fPIC
DOCS_DIR = docs
OUTPUT_DIR = output
EXTERNAL_OBJS = {" ".join([f"subroutines/{name}.o" for name in subroutines.keys()])}

$(shell mkdir -p $(DOCS_DIR) $(OUTPUT_DIR))

all: $(EXTERNAL_OBJS) $(OUTPUT_DIR)/$(TARGET)

$(EXTERNAL_OBJS): %.o: %.s
	$(CC) -o $@ $<

$(OUTPUT_DIR)/$(TARGET): $(OBJ) $(EXTERNAL_OBJS)
	$(LINK) -o $@ $(OBJ) $(EXTERNAL_OBJS) -lpanel -lncurses -lm -lstdc++

$(OBJ): $(SRC)
	$(CC) -o $@ $<

clean:
	rm -rf $(OUTPUT_DIR) $(DOCS_DIR) ./subroutines/*.o
"""

    with open(os.path.join("clean", "Makefile"), "w") as file:
        file.write(makefile_content)


def main(main_s, main_o, main_cpp):
    asm_content = read_asm_file(main_s)
    cpp_content = parse_main_cpp(main_cpp)

    with open(main_o, "rb") as file:
        elf = ELFFile(file)
        functions = extract_functions(elf)

    main_content, subroutines = process_asm(asm_content, functions)
    write_output(main_content, subroutines, functions)
    create_makefile(subroutines)


if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python script.py main.s main.o main.cpp")
        sys.exit(1)

    main_s = sys.argv[1]
    main_o = sys.argv[2]
    main_cpp = sys.argv[3]

    main(main_s, main_o, main_cpp)
