#include <iostream>
#include <curses.h>
#include <string>
#include <fstream>
#include "./lib/linked_list/linked_list.h"
#include "./lib/text_editor/text_editor.h"
#include "./lib/save_file/save_file.h"
#include "./lib/open_file/open_file.h"
#include "./lib/search/search.h"

const char *CONTROLS = "^X:Exit  ^O:Save  ^W:Search  ^T:Replace";
const char *NAME = "WordPerfect-Resurrected";
const char *SEARCH = "Search: ";
const char *SEARCHFOR = "Search for: ";
const char *REPLACEWITH = "Replace with: ";
int NODE_MEMORY_SIZE = sizeof(Node);

/* @Name: main
 * @Description: The main function that runs the text editor.
 * @Parameters:
 *     - argc: The number of command-line arguments passed to the program.
 *     - argv: An array of strings containing the command-line arguments passed to the program.
 */
int main(int argc, char *argv[])
{
    initscr();
    raw();
    keypad(stdscr, TRUE);
    noecho();

    size_t memory = 0;
    size_t nodes = 0;

    int ch;
    int cursor_x = 0;
    int cursor_y = 3;

    int scroll_offset = 0;

    LinkedList lines;
    std::string filename;

    // If a filename was specified as a command-line argument, open the file
    if (argc > 1)
    {
        filename = argv[1];
        open_file(filename.c_str(), lines, memory, nodes);
    }

    if (!lines.head)
    {
        list_push_back(lines, "");
        nodes++;
    }

    Node *current_line = lines.head;
    std::string search_str;
    std::string replace_str;

    // Initialize colors
    if (has_colors())
    {
        start_color();
        init_pair(1, COLOR_YELLOW, COLOR_BLACK);
    }

    // Display initial screen
    init_pair(1, COLOR_WHITE, COLOR_BLUE);
    mousemask(ALL_MOUSE_EVENTS | REPORT_MOUSE_POSITION, NULL);

    while (true)
    {
        clear(); // Clear the screen

        // Display the title bar
        attron(A_REVERSE);
        mvprintw(0, 0, NAME);
        attroff(A_REVERSE);

        display_memory_info(memory, nodes); // Display memory usage

        // Display the text in the linked list
        int y = 3;
        Node *current = lines.head;
        int line_count = 0;
        while (current)
        {
            if (line_count >= scroll_offset && y < LINES - 1)
            {
                mvprintw(y++, 0, "%s", current->line.c_str());
            }
            line_count++;
            current = current->next;
        }

        // Highlight search results
        search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);

        // Move the cursor to its current position
        move(cursor_y, cursor_x);

        // Display the controls at the bottom of the screen
        attron(A_BOLD | A_REVERSE);
        mvprintw(LINES - 1, 0, CONTROLS);
        attroff(A_BOLD | A_REVERSE);
        move(cursor_y, cursor_x);

        ch = getch(); // Wait for user input

        switch (ch)
        {
        case KEY_MOUSE:
            MEVENT event;
            if (getmouse(&event) == OK)
            {
                handle_mouse(event.x, event.y, cursor_x, cursor_y, scroll_offset, lines);
                move(cursor_y, cursor_x);
            }
            break;
        case 23: // Ctrl+W (search)
            attron(A_BOLD | A_REVERSE);
            search_str = get_user_input(SEARCH);
            attroff(A_BOLD | A_REVERSE);
            search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
            move(cursor_y, cursor_x);
            refresh();
            break;
        case 20: // Ctrl+T (replace)
            attron(A_BOLD | A_REVERSE);
            search_str = get_user_input(SEARCHFOR);
            replace_str = get_user_input(REPLACEWITH);
            attroff(A_BOLD | A_REVERSE);
            replace_text(lines, search_str, replace_str);
            refresh();
            break;
        case 24: // Ctrl+X
            list_clear(lines);
            endwin();
            return 0;
        case 15: // Ctrl+O
            save_file(filename.c_str(), lines);
            break;
        case KEY_DC: // Delete key
            if (cursor_x < static_cast<int>(current_line->line.size()))
            {
                current_line->line.erase(cursor_x, 1);
            }
            else if (current_line->next)
            {
                current_line->line.append(current_line->next->line);
                list_erase_next(current_line);
                nodes--;
            }
            break;
        case KEY_BACKSPACE:
        case 127: // Backspace key
            if (cursor_x == 0 && cursor_y > 3)
            {
                Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
                prev->line.append(current_line->line);
                list_erase_next(prev);
                nodes--;
                cursor_x = prev->line.length();
                cursor_y--;
            }
            else if (cursor_x > 0)
            {
                current_line->line.erase(cursor_x - 1, 1);
                cursor_x--;
            }
            break;
        case KEY_ENTER:
        case 10: // Enter key
        {
            memory += NODE_MEMORY_SIZE;
            nodes++;
            std::string new_line = current_line->line.substr(cursor_x);
            current_line->line.erase(cursor_x);
            Node *new_node = make_node(new_line);
            new_node->next = current_line->next;
            current_line->next = new_node;

            cursor_x = 0;
            cursor_y++;
            if (cursor_y >= LINES - 1)
            {
                cursor_y--;
                scroll_offset++;
            }
            current_line = new_node;
            break;
        }
        case KEY_UP:
            if (cursor_y > 3)
            {
                cursor_y--;
            }
            else if (scroll_offset > 0)
            {
                scroll_offset--;
            }
            current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
            break;
        case KEY_DOWN:
            if (cursor_y < LINES - 2 && current_line->next)
            {
                cursor_y++;
                current_line = current_line->next;
            }
            else if (current_line->next)
            {
                scroll_offset++;
                current_line = current_line->next;
            }
            break;
        case KEY_LEFT:
            if (cursor_x > 0)
            {
                cursor_x--;
            }
            else if (cursor_y > 3)
            {
                cursor_y--;
                current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
                cursor_x = current_line->line.size();
            }
            break;
        case KEY_RIGHT:
            if (cursor_x < static_cast<int>(current_line->line.size()))
            {
                cursor_x++;
            }
            else if (current_line->next)
            {
                cursor_y++;
                cursor_x = 0;
                current_line = current_line->next;
            }
            break;
        default:
            if (isprint(ch))
            { // Printable characters
                current_line->line.insert(cursor_x, 1, static_cast<char>(ch));
                cursor_x++;
            }
            break;
        }
    }

    endwin();
    return 0;
}
