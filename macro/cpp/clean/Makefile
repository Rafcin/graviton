SHELL := /bin/bash

NAME = main
TARGET = $(NAME).bin
CC = as
LINK = g++ -L/usr/lib/aarch64-linux-gnu

OUTPUT_DIR = clean

SRCS := $(wildcard *.s lib/**/*.s)
OBJS := $(SRCS:.s=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(LINK) -o $@ $(OBJS) -lncurses -lm -lstdc++

%.o: %.s
	$(CC) -o $@ $<

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
