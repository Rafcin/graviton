#include <iostream>
#include <fstream>
#include "../linked_list/linked_list.h"
#include "save_file.h"

void save_file(const char *filename, const LinkedList &lines)
{
    std::ofstream outfile(filename); // Open the file for writing
    if (!outfile.is_open())          // Check if the file was successfully opened
    {
        return; // If not, return without doing anything
    }

    Node *current = lines.head;
    while (current)
    {
        outfile << current->line << '\n'; // Write each line to the file
        current = current->next;
    }
    outfile.close(); // Close the file
}