/**
 * chrat - retrieves the character at a given position in a string
 * @param x0: pointer to the string
 * @param x1: index of the character to retrieve
 * @return w0: the character at the specified position
 *
 * This function retrieves the character at the index specified by x1 in the
 * string pointed to by x0. If the index is out of bounds, the function returns
 * the null terminator.
 *
 * Registers used: x0, x1, x2, w0, w3
 * Registers saved: none
 */

.text
.global chrat
    chrat:
        // Load the maximum number of characters to count into x2 (1 character)
        mov x2, #1
        
        // Compute the memory address of the character at the specified index
        add x0, x0, x1
        
        // Load the character from memory into w0
        ldrb w0, [x0]
        
        // If the character is the null terminator, return it
        cbz w0, done
        
        // Otherwise, return the character
        ret
        
    done:
        // Return the null terminator
        mov w0, #0
        ret