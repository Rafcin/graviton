CXXFLAGS=-std=c++11 -Wall -Wa,-a,-ad
LDLIBS=-lncurses

SRCS=$(wildcard */*.cpp) $(wildcard *.cpp)
OBJS=$(SRCS:.cpp=.o)
ASMS=$(SRCS:.cpp=.s)
EXEC=main

all: $(EXEC) $(ASMS)

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

clean:
	rm -f $(OBJS) $(ASMS) $(EXEC)

.PHONY: all clean
