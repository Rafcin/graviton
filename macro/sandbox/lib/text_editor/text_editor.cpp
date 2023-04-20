#include <iostream>
#include <curses.h>
#include <string>
#include <fstream>
#include "../linked_list/linked_list.h"
#include "text_editor.h"

/* @Name: display_memory_info
 * @Description: Displays the heap memory consumption and number of nodes in the linked list on the screen.
 * @Parameters:
 *   - memory: the amount of heap memory currently consumed by the program
 *   - nodes: the number of nodes in the linked list
 */
void display_memory_info(size_t memory, size_t nodes)
{
    attron(A_BOLD);                                                                             // Turn on bold text attribute
    mvprintw(1, 0, "Heap Memory Consumption: %zu bytes | Number of Nodes: %zu", memory, nodes); // Print the memory consumption and number of nodes on the screen
    attroff(A_BOLD);                                                                            // Turn off bold text attribute
}

/* @Name: get_user_input
 * @Description: Gets a string input from the user.
 * @Parameters:
 *     - prompt: The message to display to the user to prompt input.
 * @Return: The string input by the user.
 */
std::string get_user_input(const char *prompt)
{
    nocbreak();     // Turn off cbreak mode to enable line buffering
    echo();         // Turn on echoing of characters
    curs_set(TRUE); // Show the cursor

    char input[256];                      // Create a character array to hold the user input
    mvprintw(LINES - 1, 0, "%s", prompt); // Print the prompt message to the screen
    getstr(input);                        // Get the user input and store it in the input array

    curs_set(FALSE); // Hide the cursor
    noecho();        // Turn off echoing of characters
    cbreak();        // Turn on cbreak mode to disable line buffering

    return std::string(input); // Return the user input as a string
}

/* @Name: handle_mouse
 * @Description: Updates the cursor position based on mouse input.
 * @Parameters:
 *     - x: The x-coordinate of the mouse click.
 *     - y: The y-coordinate of the mouse click.
 *     - cursor_x: A reference to the x-coordinate of the cursor.
 *     - cursor_y: A reference to the y-coordinate of the cursor.
 *     - scroll_offset: A reference to the number of lines the text is scrolled down.
 *     - lines: The linked list containing the text.
 */
void handle_mouse(int x, int y, int &cursor_x, int &cursor_y, int &scroll_offset, LinkedList &lines)
{
    if (y == 1) // If the mouse was clicked in the menu bar, ignore it
    {
        return;
    }

    int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
    if (y >= 3 && y <= max_y)                                            // If the mouse was clicked within the bounds of the text, update the cursor position accordingly
    {
        cursor_x = x;
        cursor_y = y;
    }
    else if (y > max_y) // If the mouse was clicked below the last line of text, update the cursor to the last line of text
    {
        cursor_x = x;
        cursor_y = max_y;
    }
}