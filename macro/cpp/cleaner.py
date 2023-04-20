import sys
import os
import re
from itanium_demangler import parse as demangle
from elftools.elf.elffile import ELFFile
import shutil


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


def demangle_labels(lines, functions):
    demangled_lines = []
    for line in lines:
        for symbol_name, simplified_name in functions.items():
            line = line.replace(symbol_name, simplified_name)
        demangled_lines.append(line)
    return demangled_lines


def copy_files(src_dir, dest_dir, functions):
    for root, dirs, files in os.walk(src_dir):
        # Skip the clean folder while iterating
        if "clean" in dirs:
            dirs.remove("clean")

        for file in files:
            if file.endswith(".s"):
                src_file = os.path.join(root, file)
                relative_path = os.path.relpath(src_file, src_dir)
                dest_file = os.path.join(dest_dir, relative_path)
                os.makedirs(os.path.dirname(dest_file), exist_ok=True)
                shutil.copy(src_file, dest_file)
                process_asm_file(dest_file, functions)


def process_asm_file(file_path, functions):
    with open(file_path, "r") as file:
        content = file.read()

    lines = content.splitlines()
    demangled_lines = demangle_labels(lines, functions)

    with open(file_path, "w") as file:
        file.write("\n".join(demangled_lines))


def create_makefile(clean_dir):
    makefile_content = f"""\
SHELL := /bin/bash

NAME = main
TARGET = $(NAME).bin
CC = as
LINK = g++ -L/usr/lib/aarch64-linux-gnu

OUTPUT_DIR = {clean_dir}

SRCS := $(wildcard *.s lib/**/*.s)
OBJS := $(SRCS:.s=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
\t$(LINK) -o $@ $(OBJS) -lncurses -lm -lstdc++

%.o: %.s
\t$(CC) -o $@ $<

clean:
\trm -f $(OBJS) $(TARGET)

.PHONY: all clean
"""

    with open(os.path.join(clean_dir, "Makefile"), "w") as file:
        file.write(makefile_content)


def main(src_dir):
    dest_dir = "clean"
    shutil.rmtree(dest_dir, ignore_errors=True)
    os.makedirs(dest_dir, exist_ok=True)

    with open("main.o", "rb") as file:
        elf = ELFFile(file)
        functions = extract_functions(elf)

    # Exclude the clean directory when copying files
    copy_files(src_dir, os.path.join(dest_dir, ""), functions)
    create_makefile(dest_dir)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py source_directory")
        sys.exit(1)

    src_dir = sys.argv[1]
    main(src_dir)
