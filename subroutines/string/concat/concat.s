/**
 * concat - concatenates two strings
 * @param x0: address of the target string
 * @param x1: address of the string to add
 * @return x0: address of the new concatenated string
 *
 * This function concatenates the second string at the end of the first string
 * and returns the combined string. The function allocates memory for the new
 * concatenated string using malloc,  which needs to be freed by the caller.
 */

.text
.global concat

// Save the return address and the target string pointer on the stack
// before updating the stack pointer.
concat:
    stp lr,x0,[sp,#-16]!

    // Store the string to add on the stack
    str x1,[sp,#-16]!

    // Call the `length` subroutine to determine the length of the target string
    bl  length

    // Store the length of the target string in x1
    mov x1,x0

    // Restore the target string and the string to add from the stack
    ldr x0,[sp],#16
    ldp x0,x1,[sp,#-16]!

    // Call the `length` subroutine to determine the length of the string to add
    bl  length

    // Restore the string to add and the target string length from the stack
    ldp x1,x2,[sp],#16

    // Add the length of the string to add to the length of the target string,
    // plus one for the terminating null byte.
    add x0,x0,x2
    add x0,x0,#1

    // Store the string to add on the stack
    str x1,[sp,#-16]!

    // Call the `malloc` subroutine to allocate memory for the new concatenated string
    bl  malloc

    // Restore the return address and the target string pointer from the stack
    ldr x2,[sp],#16
    ldp lr,x1,[sp],#16

    // Save the return address and the new concatenated string pointer on the stack
    stp lr,x0,[sp,#-16]!

first:
    // Load the next byte of the target string
    ldrb w3,[x1],#1

    // Check if the byte is the terminating null byte
    cmp  w3,#0
    b.eq second

    // Store the byte in the new concatenated string
    strb w3,[x0],#1

    // Jump back to the beginning of the loop
    b    first

second:
    // Load the next byte of the string to add
    ldrb w3,[x2],#1

    // Check if the byte is the terminating null byte
    cmp  w3,#0
    b.eq end

    // Store the byte in the new concatenated string
    strb w3,[x0],#1

    // Jump back to the beginning of the loop
    b    second

end:
    // Restore the return address and the new concatenated string pointer from the stack
    ldp lr,x0,[sp],#16

    // Return the new concatenated string pointer
    ret
