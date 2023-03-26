/**
 * indxof - Returns the index of the first occurrence of character ch in a given String.
 *
 * This function searches for the first occurrence of the specified character ch in the target 
 * string and returns the index of the first occurrence of the character ch in the target string. 
 * The search starts from the beginning of the target string. If the character ch is not found 
 * in the target string, the function returns -1. 
 *
 * @param x0: address of the target string to search.
 * @param x1: Character to find in the target string.
 * @return x0: Integer index of the first occurrence of character ch in the target string. 
 *             If the character is not found, returns -1.
 *
 * Registers used: x0, x1, x2, lr
 * Registers saved: none
 */
.text
.global indxof
    indxof:
        // Save the return address on the stack
        str lr, [sp, #-16]!

        // Set the search starting index to -1
        mov x2, #-1

        // Call the `indxoffrm` subroutine to find the index of the first occurrence of the character
        // starting from index 0.
        bl indxoffrm

        // Restore the return address and return the result in x0
        ldr lr, [sp], #16
        ret
