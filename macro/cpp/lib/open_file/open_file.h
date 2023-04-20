#ifndef OPEN_FILE_H
#define OPEN_FILE_H

#include "../linked_list/linked_list.h"

void open_file(const char *filename, LinkedList &lines, size_t &memory, size_t &nodes);

#endif // OPEN_FILE_H