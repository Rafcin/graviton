CXXFLAGS=-std=c++11 -Wall -fPIC -Os
LDFLAGS=-s
LDLIBS=-lncurses

SRCS=$(wildcard *.cpp) $(wildcard lib/*/*.cpp)
OBJS=$(SRCS:.cpp=.o)
ASMS=$(SRCS:.cpp=.s)
EXEC=main

all: $(EXEC) $(ASMS) run_cleaner run_demangle

$(EXEC): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

%.o: %.cpp %.s
	$(CXX) $(CXXFLAGS) -c $< -o $@

%.s: %.cpp
	$(CXX) $(CXXFLAGS) -S $< -o $@

%.o: %.s
	$(CXX) $(CXXFLAGS) -c $< -o $@

%.s: %.o
	objdump -d $< > $@

run_cleaner:
	python3 cleaner.py .

run_demangle:
	python3 demangle.py ./clean

clean:
	rm -rf $(OBJS) $(ASMS) $(EXEC) clean

.PHONY: all clean run_cleaner
