/**
 * length - counts the number of characters in a string
 * @param x0: pointer to the string to count
 * @param x1: maximum number of characters to count
 * @return x0: number of characters counted, including null terminator
 *
 * This function counts the number of characters in a string pointed to by x0, up
 * to a maximum of x1 characters. The count includes the null terminator. If the
 * string is longer than x1 characters, the function stops counting at x1
 * characters.
 *
 * Registers used: x0, x1, x2, x3, w3
 * Registers saved: x19-x30, lr
 */

.text
.global length

// Entry point for the `length` subroutine
length:
    // Save the input string pointer
    mov x9, x0

    // Initialize the counter to zero
    mov x2, #0

// Top of the loop to count characters
top:
    // Load the next byte of the string
    ldrb w1, [x9, x2]

    // Check if the byte is the null terminator
    cmp w1, #0

    // If the byte is the null terminator, jump to the bottom of the loop
    b.eq bottom

    // Increment the counter by one
    add x2, x2, #1

    // Jump back to the top of the loop
    b top

// Bottom of the loop to return the length
bottom:
    // Return the length of the string, including the null terminator
    mov x0, x2
    ret
