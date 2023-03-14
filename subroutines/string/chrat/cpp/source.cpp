#include <string>
#include <iostream>

char charAt(const std::string& str, int index) {
  if (index >= 0 && index < str.length()) {
    return str[index];
  } else {
    return '\0'; // Or some other default character
  }
}