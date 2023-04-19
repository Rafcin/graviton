SHELL := /bin/bash

NAME = main
TARGET = $(NAME)
SRC = $(NAME).s
OBJ = output/$(SRC:.s=.o)
DEBUG_FLAGS = -g -gdwarf-2
CC = as $(DEBUG_FLAGS)
LINK = g++ -L/usr/lib/aarch64-linux-gnu -fPIC
DOCS_DIR = docs
OUTPUT_DIR = output
EXTERNAL_OBJS = subroutines/std__exception___base_ctor_.o subroutines/std__bad_alloc___base_ctor_.o subroutines/operator_new.o subroutines/operator_delete.o subroutines/make_node.o subroutines/destroy_node.o subroutines/LinkedList___base_ctor_.o subroutines/display_memory_info.o subroutines/list_push_back.o subroutines/list_erase_next.o subroutines/list_clear.o subroutines/list_size.o subroutines/list_advance.o subroutines/open_file.o subroutines/save_file.o subroutines/get_user_input_abi_cxx11_.o subroutines/highlight_search.o subroutines/search_text.o subroutines/replace_text.o subroutines/handle_mouse.o subroutines/int_const__std__min_int_.o subroutines/__static_initialization_and_destruction_0.o

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
