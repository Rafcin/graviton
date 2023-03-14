# Makefile for compiling C++ code to readable unobfuscated ARM64 assembly code

# Specify the name of the C++ source file
SOURCE = source.cpp

# Specify the name of the output assembly file
ASSEMBLY = output.s

# Specify the compiler and compilation flags
CXX = g++
CXXFLAGS = -std=c++11 -O3 -Wall -Wextra -pedantic -march=armv8-a

# Specify the assembler and assembly flags
AS = as
ASFLAGS = -alhnd -march=armv8-a

# Specify the disassembler and disassembly flags
OBJDUMP = objdump
OBJDUMPFLAGS = -d

# Default target
all: $(ASSEMBLY)

# Rule for compiling the C++ source code to assembly code
$(ASSEMBLY): $(SOURCE)
	$(CXX) $(CXXFLAGS) -S $< -o $@
	$(AS) $(ASFLAGS) $@ -o $@

# Rule for generating the disassembly code
disassembly: $(ASSEMBLY)
	$(OBJDUMP) $(OBJDUMPFLAGS) $<

# Rule for cleaning up generated files
clean:
	rm -f $(ASSEMBLY)

.PHONY: all disassembly clean
