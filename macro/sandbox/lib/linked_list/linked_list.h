#ifndef LINKED_LIST_H
#define LINKED_LIST_H

#include <string>

struct Node
{
    std::string line;
    Node *next;
};

struct LinkedList
{
    Node *head;
    LinkedList() : head(NULL) {}
};

Node *make_node(const std::string &line);
void destroy_node(Node *node);
Node *list_push_back(LinkedList &list, const std::string &line);
void list_erase_next(Node *&node);
void list_clear(LinkedList &list);
size_t list_size(LinkedList &list);
Node *list_advance(Node *node, int n);

#endif // LINKED_LIST_H
