# Get the name of the .s file in the current directory
SRC = $(wildcard *.s)

# Extract the filename without extension
NAME = $(basename $(SRC))

# Define the object file
OBJ = $(SRC:.s=.o)

# Define the flags for debugging
DEBUG_FLAGS = -g -gdwarf-2

# Define the compile command
CC = as $(DEBUG_FLAGS)

all: $(OBJ)

$(OBJ): $(SRC)
	$(CC) -o $@ $<

clean:
	rm -f $(OBJ)
