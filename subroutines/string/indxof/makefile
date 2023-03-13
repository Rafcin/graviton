# Define the lab name
NAME = indexof

# Define the target file
TARGET = $(NAME)

# Define the source file
SRC = $(NAME).s

# Define the object file
OBJ = $(SRC:.s=.o)

# Define the external object directories as a list
EXTERNAL_DIRS = ../../../external

# Define the flags for debugging
DEBUG_FLAGS = -g

# Define the compile command
CC = as $(DEBUG_FLAGS)

# Define the linking command
LINK = ld -lc -lm -e indxof

# Define the build rules
all: $(TARGET) $(NAME).pdf $(NAME).html

$(TARGET): $(OBJ)
	$(LINK) -o $(TARGET) $(OBJ) $(foreach DIR,$(EXTERNAL_DIRS),$(wildcard $(DIR)/*.o))

%.o: %.s
	$(CC) -o $@ $<

$(NAME).ps: $(NAME).s
	which a2ps || sudo apt-get -y install a2ps
	a2ps -o $(NAME).ps $(NAME).s

$(NAME).pdf: $(NAME).ps
	which ps2pdf || sudo apt-get -y install ghostscript
	ps2pdf $(NAME).ps

$(NAME).html: $(NAME).s
	which highlight || sudo apt-get -y install highlight
	highlight -O html -o $(NAME).html $(NAME).s

# Define the clean rule
clean:
	rm -f $(TARGET) $(OBJ) $(NAME).ps $(NAME).pdf $(NAME).html