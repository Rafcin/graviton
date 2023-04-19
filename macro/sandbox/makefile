SHELL := /bin/bash

# Define the lab name
NAME = main

# Define the target file
TARGET = $(NAME)

# Define the source file
SRC = $(NAME).s

# Define the object file
OBJ = output/$(SRC:.s=.o)

# Define the flags for debugging
DEBUG_FLAGS = -g -gdwarf-2

# Define the compile command
CC = as $(DEBUG_FLAGS)

# Define the linking command
LINK = g++ -L/usr/lib/aarch64-linux-gnu

# Define the output directories
DOCS_DIR = docs
OUTPUT_DIR = output

# Create output directory if it does not exist
$(shell mkdir -p $(DOCS_DIR) $(OUTPUT_DIR))

# Find all the object files in subroutines
EXTERNAL_OBJS = $(shell find ./subroutines -type f -name '*.o')

# Find all the subdirectories in subroutines
SUBDIRS = $(wildcard ./subroutines/*)

# Define the build rules
all: $(EXTERNAL_OBJS) $(OUTPUT_DIR)/$(TARGET) $(DOCS_DIR)/$(NAME).pdf $(DOCS_DIR)/$(NAME).html

# Build subroutine object files
$(EXTERNAL_OBJS): %.o: %.s
	$(CC) -o $@ $<

$(OUTPUT_DIR)/$(TARGET): $(OBJ) $(EXTERNAL_OBJS)
	$(LINK) -o $@ $(OBJ) $(EXTERNAL_OBJS) -lpanel -lncurses -lm -lstdc++

$(OBJ): $(SRC)
	$(CC) -o $@ $<

$(DOCS_DIR)/$(NAME).ps: $(NAME).s
	which a2ps || sudo apt-get -y install a2ps
	a2ps -o $@ $<

$(DOCS_DIR)/$(NAME).pdf: $(DOCS_DIR)/$(NAME).ps
	which ps2pdf || sudo apt-get -y install ghostscript
	ps2pdf $<

$(DOCS_DIR)/$(NAME).html: $(NAME).s
	which highlight || sudo apt-get -y install highlight
	highlight -O html -o $@ $<

# Define the clean rule
clean:
	rm -rf $(OUTPUT_DIR) $(DOCS_DIR) ./subroutines/*.o
