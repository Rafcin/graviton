.section .data
    .align 8
test_list:
    .quad 0            // head (ptr)        

    .align 8
ListNode:
    .quad 0            // value
    .quad 0            // next (ptr)        

    .align 8
print_node_format:
    .asciz "%d\n"

.section .text
.global _start
_start:
    // Initialize the list
    ldr x0, =test_list
    bl linked_list_create

    // Append some elements to the list
    ldr x0, =test_list
    mov w1, #10
    bl linked_list_append

    ldr x0, =test_list
    mov w1, #20
    bl linked_list_append

    ldr x0, =test_list
    mov w1, #30
    bl linked_list_append

    // Print the list
    ldr x0, =test_list
    bl linked_list_print

    // Free the list
    ldr x0, =test_list
    bl linked_list_free

    // Print a message indicating the end of the program
    ldr x0, =end_message
    bl putstr

    // Exit the program
    mov x0, #0
    mov w8, #93
    svc 0

end_message:
    .ascii "Program finished.\n"
    .byte 0
