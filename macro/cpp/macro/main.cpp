#include <iostream>
#include <curses.h>
#include <string>
#include <list>
#include <fstream>
#include <algorithm>

void display_memory_info(size_t memory, size_t nodes) {
    attron(A_BOLD);
    mvprintw(1, 0, "Heap Memory Consumption: %zu bytes | Number of Nodes: %zu", memory, nodes);
    attroff(A_BOLD);
}

void open_file(const char *filename, std::list<std::string> &lines, size_t &memory, size_t &nodes) {
    std::ifstream infile(filename);
    if (!infile.is_open()) {
        return;
    }

    std::string line;
    while (std::getline(infile, line)) {
        lines.push_back(line);
        memory += line.size() * sizeof(char) + sizeof(std::string);
        nodes++;
    }
    infile.close();
}

void save_file(const char *filename, const std::list<std::string> &lines) {
    std::ofstream outfile(filename);
    if (!outfile.is_open()) {
        return;
    }

    for (const auto &line : lines) {
        outfile << line << '\n';
    }
    outfile.close();
}

int main(int argc, char *argv[]) {
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

    std::list<std::string> lines;
    std::string filename;

    if (argc > 1) {
        filename = argv[1];
        open_file(filename.c_str(), lines, memory, nodes);
    }

    if (lines.empty()) {
        lines.push_back("");
        nodes++;
    }

    std::list<std::string>::iterator current_line = lines.begin();

    while (true) {
        clear();

        // Display header
        attron(A_REVERSE);
        mvprintw(0, 0, " C++ Nano Clone (Ctrl+X: Exit, Ctrl+O: Save) ");
        attroff(A_REVERSE);

        // Display linked list memory usage
        display_memory_info(memory, nodes);

        // Display text editor area
        int y = 3;
        int line_count = 0;
        for (const auto &line : lines) {
            if (line_count >= scroll_offset && y < LINES - 1) {
                mvprintw(y++, 0, "%s", line.c_str());
            }
            line_count++;
        }

        // Display controls
        mvprintw(LINES - 1, 0, "^X:Exit  ^O:Save");

        // Position the cursor
        move(cursor_y, cursor_x);

        ch = getch();

        switch (ch) {
        case 24: // Ctrl+X
            endwin();
            return 0;
        case 15: // Ctrl+O
            save_file(filename.c_str(), lines);
            break;
        case KEY_DC: // Delete key
            if (cursor_x < static_cast<int>((*current_line).size())) {
                memory -= sizeof(char);
                (*current_line).erase(cursor_x, 1);
            } else if (std::next(current_line) != lines.end()) {
                memory -= sizeof(std::string);
                nodes--;

                auto next_line = std::next(current_line);
                memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
                (*current_line) += *next_line;
                lines.erase(next_line);
            }
            break;
        case 10: // Enter key
            {
                std::string new_line = (*current_line).substr(cursor_x);
                (*current_line).erase(cursor_x);

                auto inserted_line = lines.insert(std::next(current_line), new_line);
                memory += new_line.size() * sizeof(char) + sizeof(std::string);
                nodes++;

                current_line = inserted_line;
                cursor_y++;
                cursor_x = 0;
            }
            break;
        case KEY_BACKSPACE: // Backspace key
            if (cursor_x > 0) {
                memory -= sizeof(char);
                (*current_line).erase(--cursor_x, 1);
            } else if (cursor_y > 3) {
                memory -= sizeof(std::string);
                nodes--;

                auto prev_line = std::prev(current_line);
                cursor_x = (*prev_line).size();
                memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
                (*prev_line) += *current_line;
                lines.erase(current_line);
                current_line = prev_line;
                cursor_y--;
            }
            break;
        case KEY_LEFT:
            if (cursor_x > 0) {
                cursor_x--;
            } else if (cursor_y > 3) {
                current_line = std::prev(current_line);
                cursor_y--;
                cursor_x = (*current_line).size();
            }
            break;
        case KEY_RIGHT:
            if (cursor_x < static_cast<int>((*current_line).size())) {
                cursor_x++;
            } else if (std::next(current_line) != lines.end()) {
                current_line = std::next(current_line);
                cursor_y++;
                cursor_x = 0;
            }
            break;
        case KEY_UP:
            if (cursor_y > 3) {
                current_line = std::prev(current_line);
                cursor_y--;

                if (cursor_x > static_cast<int>((*current_line).size())) {
                    cursor_x = (*current_line).size();
                }
            } else if (scroll_offset > 0) {
                scroll_offset--;
            }
            break;
        case KEY_DOWN:
            if (std::next(current_line) != lines.end()) {
                current_line = std::next(current_line);

                if (cursor_y < LINES - 2) {
                    cursor_y++;
                } else {
                    scroll_offset++;
                }

                if (cursor_x > static_cast<int>((*current_line).size())) {
                    cursor_x = (*current_line).size();
                }
            }
            break;
        default:
            if (ch >= 32 && ch <= 126) {
                (*current_line).insert(cursor_x, 1, static_cast<char>(ch));
                memory += sizeof(char);
                cursor_x++;
            }
            break;
        }
    }
}
