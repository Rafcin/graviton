#ifndef SEARCH_H
#define SEARCH_H

#include <curses.h>
#include <string>
#include "../linked_list/linked_list.h"

void highlight_search(size_t found_pos, size_t search_length, int y);
void search_text(LinkedList &lines, const std::string &search_str, int &cursor_x, int &cursor_y, int &scroll_offset, Node *&current_line);
void replace_text(LinkedList &lines, const std::string &search_str, const std::string &replace_str);

#endif // SEARCH_H