CXXFLAGS=-std=c++11 -Wall -Wa,-a,-ad -fno-rtti -fomit-frame-pointer -fno-stack-protector
LDFLAGS=-s
LDLIBS=-lncurses

SRCS=$(wildcard */*.cpp) $(wildcard *.cpp)
OBJS=$(SRCS:.cpp=.o)
ASMS=$(SRCS:.cpp=.s)
EXEC=main

all: $(EXEC) $(ASMS) split_asm

$(EXEC): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

%.o: %.cpp %.s
	$(CXX) $(CXXFLAGS) -c $< -o $@

%.s: %.cpp
	$(CXX) $(CXXFLAGS) -S $< -o $@ -fverbose-asm

%.o: %.s
	$(CXX) $(CXXFLAGS) -c $< -o $@

%.s: %.o
	objdump -d $< > $@

split_asm: main.s
	python3 split_asm.py main.s main.cpp

clean:
	rm -rf $(OBJS) $(ASMS) $(EXEC) ./subroutines

.PHONY: all clean split_asm
