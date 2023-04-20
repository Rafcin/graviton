#ifndef TEXT_EDITOR_H
#define TEXT_EDITOR_H

#include <curses.h>
#include <string>
#include "../linked_list/linked_list.h"

void display_memory_info(size_t memory, size_t nodes);
std::string get_user_input(const char *prompt);
void handle_mouse(int x, int y, int &cursor_x, int &cursor_y, int &scroll_offset, LinkedList &lines);

#endif // TEXT_EDITOR_H