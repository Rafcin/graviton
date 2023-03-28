/**
 * strtwth - Returns true if the given string starts with the specified prefix
 *
 * @param x0: Address of the target string to check.
 * @param x1: Prefix string to check for.
 * @return x0: 1 if the target string starts with the prefix, 0 otherwise.
 *
 * Registers used: x0, x1, x2, x3, x4, x5, lr
 * Registers saved: none
 */
.text
.global strtwth
    strtwth:
            mov x2, #0      // Initialize the search index to 0
            bl strtwthpos   // Call strtwthpos to check if the string starts with the prefix
            cmp x0, #1      // Compare the return value of strtwthpos with 1
            cset x0, eq     // Set x0 to 1 if the prefix was found, 0 otherwise
            ret