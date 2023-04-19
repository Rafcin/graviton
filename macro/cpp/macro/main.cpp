#include <iostream>
#include <curses.h>
#include <string>
#include <fstream>

const char *CONTROLS = "^X:Exit  ^O:Save  ^W:Search  ^T:Replace";

/* @Name: Node
 * @Description: A struct that represents a node in a linked list. Each node contains a line of text and a pointer to the next node.
 */
struct Node
{
    std::string line; // The text line stored in the node
    Node *next;       // Pointer to the next node in the linked list
};

/* @Name: make_node
 * @Description: Allocates memory for a new node and initializes it with the given text line.
 * @Parameters:
 *   - line: the text line to be stored in the node
 * Return: a pointer to the newly allocated node
 */
Node *make_node(const std::string &line)
{
    Node *new_node = (Node *)malloc(sizeof(Node)); // Allocate memory for the new node
    if (new_node == NULL)
    {
        throw std::bad_alloc(); // Throw an exception if the memory allocation fails
    }
    new (&new_node->line) std::string(line); // Using placement new to construct string
    new_node->next = NULL;                   // Set the next pointer to null
    return new_node;
}

/* @Name: destroy_node
 * @Description: Deallocates memory for a node and manually calls the destructor for the stored text line.
 * @Parameters:
 *   - node: a pointer to the node to be deallocated
 */
void destroy_node(Node *node)
{
    node->line.~basic_string(); // Manually calling string destructor
    free(node);                 // Deallocate memory for the node
}

/* @Name: LinkedList
 * @Description: A struct that represents a linked list data structure. Contains a pointer to the head node of the list.
 */
struct LinkedList
{
    Node *head;                  // Pointer to the head node of the list
    LinkedList() : head(NULL) {} // Constructor that initializes the head pointer to null
};

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

/* @Name: list_push_back
 * @Description: Adds a new node with the given text line to the end of the linked list.
 * @Parameters:
 *   - list: a reference to the linked list to add the new node to
 *   - line: the text line to be stored in the new node
 * Return: a pointer to the newly added node
 */
Node *list_push_back(LinkedList &list, const std::string &line)
{
    Node *new_node = make_node(line); // Allocate memory for the new node and initialize it with the given text line
    if (!list.head)
    {
        list.head = new_node; // If the list is empty, set the new node as the head
    }
    else
    {
        Node *last = list.head;
        while (last->next)
        {
            last = last->next; // Traverse the list to find the last node
        }
        last->next = new_node; // Set the next pointer of the last node to the new node
    }
    return new_node;
}

/* @Name: list_erase_next
 * @Description: Removes the next node after the given node from the linked list and deallocates its memory.
 * @Parameters:
 *     - node: A pointer to the node whose next node should be removed.
 */
void list_erase_next(Node *&node)
{
    if (node->next)
    {
        Node *tmp = node->next; // Store a pointer to the next node
        node->next = tmp->next; // Update the current node's next pointer to skip over the next node
        destroy_node(tmp);      // Deallocate the memory used by the removed node
    }
}

/* @Name: list_clear
 * @Description: Deallocates all nodes in a linked list and sets its head pointer to NULL.
 * @Parameters:
 *     - list: The linked list to clear.
 */
void list_clear(LinkedList &list)
{
    Node *current = list.head;
    while (current)
    {
        Node *tmp = current->next; // Store a pointer to the next node
        destroy_node(current);     // Deallocate the memory used by the current node
        current = tmp;             // Move to the next node
    }
    list.head = NULL; // Set the list's head pointer to NULL
}

/* @Name: list_size
 * @Description: Returns the number of nodes in a linked list.
 * @Parameters:
 *     - list: The linked list to measure.
 */
size_t list_size(LinkedList &list)
{
    size_t size = 0;
    Node *current = list.head;
    while (current)
    {
        size++;                  // Increment the size count
        current = current->next; // Move to the next node
    }
    return size;
}

/* @Name: list_advance
 * @Description: Returns a pointer to the node n positions after the given node in a linked list.
 * @Parameters:
 *     - node: A pointer to the starting node.
 *     - n: The number of positions to advance.
 */
Node *list_advance(Node *node, int n)
{
    while (n-- > 0 && node)
    {
        node = node->next; // Move to the next node n times (or until the end of the list is reached)
    }
    return node;
}

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

/* @Name: save_file
 * @Description: Writes the contents of a linked list to a file.
 * @Parameters:
 *     - filename: The name of the file to write to.
 *     - lines: The linked list containing the lines to write.
 */
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
        mvprintw(0, 0, "Macro");
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
            search_str = get_user_input("Search: ");
            attroff(A_BOLD | A_REVERSE);
            search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
            move(cursor_y, cursor_x);
            refresh();
            break;
        case 20: // Ctrl+T (replace)
            attron(A_BOLD | A_REVERSE);
            search_str = get_user_input("Search for: ");
            replace_str = get_user_input("Replace with: ");
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
            memory += sizeof(Node);
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
            if (ch >= 32 && ch <= 126)
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
