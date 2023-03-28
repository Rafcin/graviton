/**
 * lstindxof - Returns the last index of a given substring in a target string.
 *
 * This function finds the last occurrence of the given substring in the target string
 * using the lstindxoffrm function, which searches for the last occurrence of a single
 * character in the target string. The function then returns the index of the last 
 * occurrence of the substring in the target string, or -1 if the substring is not found.
 *
 * @param x0: Address of the target string to search.
 * @param x1: Address of the substring to find in the target string.
 * @return x0: Integer index of the last occurrence of the substring in the target string, 
 *             or -1 if the substring is not found.
 *
 * Registers used: x0, x1, x2, lr
 * Registers saved: none
 */

.text
.global lstindxof
    lstindxof:
        // Save the return address on the stack
        str lr, [sp, #-16]!
        // Save the parameters on the stack
        stp x0, x1, [sp, #-16]!
        // Call the length function to get the length of the target string
        bl length
        // Save the length of the target string in x2
        mov x2, x0
        // Restore the parameters from the stack
        ldp x0, x1, [sp], #16
        // Call the lstindxoffrm function to find the last occurrence of the substring in the target string
        bl lstindxoffrm
        // Restore the return address from the stack
        ldr lr, [sp], #16
        // Return the index of the last occurrence of the substring in the target string
        ret
