cmake_minimum_required (VERSION 3.11)

project(sort
  LANGUAGES CXX ASM
  VERSION 1.0.0
)

add_executable(sort 
  src/main.cpp 
  src/bubble/cpp/cppbs.cpp 
  src/insertion/cpp/cppis.cpp
  src/bubble/asm/asmbs.s
  src/insertion/asm/asmis.s
)

target_include_directories(sort 
  PRIVATE 
  ${PROJECT_SOURCE_DIR}/src/bubble/cpp 
  ${PROJECT_SOURCE_DIR}/src/insertion/cpp
)
