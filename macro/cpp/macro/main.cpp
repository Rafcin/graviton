#include <iostream>
#include <curses.h>
#include <string>
#include <fstream>

// ASM_LABEL_START: global_constants
const char *CONTROLS = "^X:Exit  ^O:Save  ^W:Search  ^T:Replace";
// ASM_LABEL_END: global_constants

// ASM_LABEL_START: node
struct Node
{
    std::string line;
    Node *next;
};
// ASM_LABEL_END: node

// ASM_LABEL_START: make_node
Node *make_node(const std::string &line)
{
    Node *new_node = (Node *)malloc(sizeof(Node));
    if (new_node == NULL)
    {
        throw std::bad_alloc();
    }
    new (&new_node->line) std::string(line); // Using placement new to construct string
    new_node->next = NULL;
    return new_node;
}
// ASM_LABEL_END: make_node

// ASM_LABEL_START: destroy_node
void destroy_node(Node *node)
{
    node->line.~basic_string(); // Manually calling string destructor
    free(node);
}
// ASM_LABEL_END: destroy_node

// ASM_LABEL_START: LinkedList
struct LinkedList
{
    Node *head;
    LinkedList() : head(NULL) {}
};
// ASM_LABEL_END: LinkedList

// ASM_LABEL_START: display_memory_info
void display_memory_info(size_t memory, size_t nodes)
{
    attron(A_BOLD);
    mvprintw(1, 0, "Heap Memory Consumption: %zu bytes | Number of Nodes: %zu", memory, nodes);
    attroff(A_BOLD);
}
// ASM_LABEL_END: display_memory_info

// ASM_LABEL_START: list_push_back
Node *list_push_back(LinkedList &list, const std::string &line)
{
    Node *new_node = make_node(line);
    if (!list.head)
    {
        list.head = new_node;
    }
    else
    {
        Node *last = list.head;
        while (last->next)
        {
            last = last->next;
        }
        last->next = new_node;
    }
    return new_node;
}
// ASM_LABEL_END: list_push_back

// ASM_LABEL_START: list_erase_next
void list_erase_next(Node *&node)
{
    if (node->next)
    {
        Node *tmp = node->next;
        node->next = tmp->next;
        destroy_node(tmp);
    }
}
// ASM_LABEL_END: list_erase_next

// ASM_LABEL_START: list_clear
void list_clear(LinkedList &list)
{
    Node *current = list.head;
    while (current)
    {
        Node *tmp = current->next;
        destroy_node(current);
        current = tmp;
    }
    list.head = NULL;
}
// ASM_LABEL_END: list_clear

// ASM_LABEL_START: list_size
size_t list_size(LinkedList &list)
{
    size_t size = 0;
    Node *current = list.head;
    while (current)
    {
        size++;
        current = current->next;
    }
    return size;
}
// ASM_LABEL_END: list_size

// ASM_LABEL_START: list_advance
Node *list_advance(Node *node, int n)
{
    while (n-- > 0 && node)
    {
        node = node->next;
    }
    return node;
}
// ASM_LABEL_END: list_advance

// ASM_LABEL_START: open_file
void open_file(const char *filename, LinkedList &lines, size_t &memory, size_t &nodes)
{
    std::ifstream infile(filename);
    if (!infile.is_open())
    {
        return;
    }

    std::string line;
    while (std::getline(infile, line))
    {
        Node *new_node = list_push_back(lines, line);
        memory += new_node->line.size() * sizeof(char) + sizeof(Node);
        nodes++;
    }
    infile.close();
}
// ASM_LABEL_END: open_file

// ASM_LABEL_START: save_file
void save_file(const char *filename, const LinkedList &lines)
{
    std::ofstream outfile(filename);
    if (!outfile.is_open())
    {
        return;
    }

    Node *current = lines.head;
    while (current)
    {
        outfile << current->line << '\n';
        current = current->next;
    }
    outfile.close();
}
// ASM_LABEL_END: save_file

// ASM_LABEL_START: get_user_input
std::string get_user_input(const char *prompt)
{
    nocbreak();
    echo();
    curs_set(TRUE);

    char input[256];
    mvprintw(LINES - 1, 0, "%s", prompt);
    getstr(input);

    curs_set(FALSE);
    noecho();
    cbreak();

    return std::string(input);
}
// ASM_LABEL_END: get_user_input

// ASM_LABEL_START: highlight_search
void highlight_search(size_t found_pos, size_t search_length, int y)
{
    attron(COLOR_PAIR(1));
    for (size_t i = 0; i < search_length; i++)
    {
        chtype original_char = mvinch(y, found_pos + i);
        chtype new_char = (original_char & A_CHARTEXT) | (COLOR_PAIR(1));
        mvaddch(y, found_pos + i, new_char);
    }
    attroff(COLOR_PAIR(1));
}
// ASM_LABEL_END: highlight_search

// ASM_LABEL_START: search_text
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
                highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
            }

            found_pos += search_str.length();
        }

        ++line_idx;
        line_it = line_it->next;
    }
}
// ASM_LABEL_END: search_text

// ASM_LABEL_START: replace_text
void replace_text(LinkedList &lines, const std::string &search_str, const std::string &replace_str)
{
    if (search_str.empty())
        return;

    Node *current = lines.head;
    while (current)
    {
        size_t found_pos = current->line.find(search_str);

        if (found_pos != std::string::npos)
        {
            current->line.replace(found_pos, search_str.length(), replace_str);
            break;
        }
        current = current->next;
    }
}
// ASM_LABEL_END: replace_text

// ASM_LABEL_START: handle_mouse
void handle_mouse(int x, int y, int &cursor_x, int &cursor_y, int &scroll_offset, LinkedList &lines)
{
    if (y == 1)
    {
        return;
    }

    int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
    if (y >= 3 && y <= max_y)
    {
        cursor_x = x;
        cursor_y = y;
    }
    else if (y > max_y)
    {
        cursor_x = x;
        cursor_y = max_y;
    }
}
// ASM_LABEL_END: handle_mouse

// ASM_LABEL_START: main
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

    if (has_colors())
    {
        start_color();
        init_pair(1, COLOR_YELLOW, COLOR_BLACK);
    }

    init_pair(1, COLOR_WHITE, COLOR_BLUE);
    mousemask(ALL_MOUSE_EVENTS | REPORT_MOUSE_POSITION, NULL);

    while (true)
    {
        clear();

        attron(A_REVERSE);
        mvprintw(0, 0, "Macro");
        attroff(A_REVERSE);

        display_memory_info(memory, nodes);

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

        search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
        move(cursor_y, cursor_x);

        attron(A_BOLD | A_REVERSE);
        mvprintw(LINES - 1, 0, CONTROLS);
        attroff(A_BOLD | A_REVERSE);
        move(cursor_y, cursor_x);

        ch = getch();

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
// ASM_LABEL_END: main
