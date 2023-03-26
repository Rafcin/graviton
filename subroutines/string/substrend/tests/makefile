# Define the lab name
NAME = main

# Define the target file
TARGET = $(NAME)

# Define the source file
SRC = $(NAME).s

# Define the object file
OBJ = output/$(SRC:.s=.o)

# Define the external object directories as a list
EXTERNAL_DIRS = ../../../../external ../output ../../length/output
# Define the flags for debugging
DEBUG_FLAGS = -g

# Define the compile command
CC = as $(DEBUG_FLAGS)

# Define the linking command
LINK = ld -lc -lm -e $(NAME)

# Define the output directories
DOCS_DIR = docs
OUTPUT_DIR = output

# Create output directory if it does not exist
$(shell mkdir -p $(DOCS_DIR) $(OUTPUT_DIR))

# Define the build rules
all: $(OUTPUT_DIR)/$(TARGET) $(DOCS_DIR)/$(NAME).pdf $(DOCS_DIR)/$(NAME).html

$(OUTPUT_DIR)/$(TARGET): $(OBJ)
	$(LINK) -o $@ $(OBJ) $(foreach DIR,$(EXTERNAL_DIRS),$(wildcard $(DIR)/*.o))

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
	rm -rf $(OUTPUT_DIR) $(DOCS_DIR)
