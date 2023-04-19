#include <iostream>
#include <curses.h>
#include <string>
#include <fstream>
#include "../linked_list/linked_list.h"
#include "search.h"

/* @Name: highlight_search
 * @Description: Highlights the search result on the screen.
 * @Parameters:
 *     - found_pos: The position of the first character of the search result.
 *     - search_length: The length of the search result.
 *     - y: The line number of the search result.
 */
void highlight_search(size_t found_pos, size_t search_length, int y)
{
    attron(COLOR_PAIR(1)); // Turn on color pair 1 (black on yellow)
    for (size_t i = 0; i < search_length; i++)
    {
        chtype original_char = mvinch(y, found_pos + i);                  // Get the original character at the current position
        chtype new_char = (original_char & A_CHARTEXT) | (COLOR_PAIR(1)); // Combine the original character with the color pair
        mvaddch(y, found_pos + i, new_char);                              // Print the new character to the screen
    }
    attroff(COLOR_PAIR(1)); // Turn off color pair 1
}

/* @Name: search_text
 * @Description: Searches for a text string in the linked list and highlights the results on the screen.
 * @Parameters:
 *     - lines: The linked list to search.
 *     - search_str: The text string to search for.
 *     - cursor_x: A reference to the x-coordinate of the cursor.
 *     - cursor_y: A reference to the y-coordinate of the cursor.
 *     - scroll_offset: A reference to the number of lines the text is scrolled down.
 *     - current_line: A pointer to the current line.
 */
void search_text(LinkedList &lines, const std::string &search_str, int &cursor_x, int &cursor_y,
                 int &scroll_offset, Node *&current_line)
{
    if (search_str.empty())
        return;

    bool first_instance = true;

    Node *line_it = lines.head;
    size_t line_idx = 0;
    while (line_it)
    {
        std::string &line = line_it->line;
        size_t found_pos = 0;

        while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
        {
            if (first_instance)
            {
                cursor_x = found_pos;
                cursor_y = 3 - scroll_offset + line_idx;
                current_line = lines.head;
                current_line = list_advance(current_line, line_idx);

                if (cursor_y >= LINES - 1)
                {
                    scroll_offset += cursor_y - (LINES - 2);
                    cursor_y = LINES - 2;
                }

                first_instance = false;
            }

            if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
            {
                highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
            }

            found_pos += search_str.length();
        }

        ++line_idx;
        line_it = line_it->next;
    }
}

/* @Name: replace_text
 * @Description: Replaces the first occurrence of a text string in the linked list with a given replacement string.
 * @Parameters:
 *     - lines: The linked list to modify.
 *     - search_str: The text string to search for.
 *     - replace_str: The replacement string.
 */
void replace_text(LinkedList &lines, const std::string &search_str, const std::string &replace_str)
{
    if (search_str.empty()) // Return early if the search string is empty
        return;

    Node *current = lines.head;
    while (current)
    {
        size_t found_pos = current->line.find(search_str);

        if (found_pos != std::string::npos) // If the search string is found in the current line, replace it with the given string
        {
            current->line.replace(found_pos, search_str.length(), replace_str);
            break; // Stop searching after the first replacement is made
        }
        current = current->next;
    }
}