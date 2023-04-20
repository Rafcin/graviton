#include <iostream>
#include <string>
#include <fstream>
#include "../linked_list/linked_list.h"
#include "open_file.h"

/* @Name: open_file
 * @Description: Reads a file and creates a linked list of its lines, along with tracking the memory and node counts.
 * @Parameters:
 *     - filename: The name of the file to read.
 *     - lines: The linked list to store the lines in.
 *     - memory: A reference to a size_t variable to store the memory usage in bytes.
 *     - nodes: A reference to a size_t variable to store the number of nodes in the list.
 */
void open_file(const char *filename, LinkedList &lines, size_t &memory, size_t &nodes)
{
    std::ifstream infile(filename); // Open the file for reading
    if (!infile.is_open())          // Check if the file was successfully opened
    {
        return; // If not, return without doing anything
    }

    std::string line;
    while (std::getline(infile, line)) // Read each line of the file
    {
        Node *new_node = list_push_back(lines, line);                  // Add the line to the linked list
        memory += new_node->line.size() * sizeof(char) + sizeof(Node); // Update the memory count
        nodes++;                                                       // Update the node count
    }
    infile.close(); // Close the file
}