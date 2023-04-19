#include "linked_list.h"
#include <cstdlib>
#include <new>

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