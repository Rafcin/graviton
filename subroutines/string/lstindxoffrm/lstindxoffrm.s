/**
 * lstindxoffrm - Returns the last occurrence of character ch in the given String.
 *
 * This function searches for the last occurrence of the specified character ch in the target 
 * string starting from the specified index "fromIndex" and working backwards. The function 
 * returns the index of the last occurrence of the character ch in the target string after 
 * the specified index "fromIndex". The search starts from the index x2 in the target string, 
 * where x2 is the specified index "fromIndex". The function returns -1 if the character ch 
 * is not found in the target string.
 *
 * @param x0: Address of the target string to search.
 * @param x1: Char to find in the target string
 * @param x2: Index to start the search at
 * @return x0: Index of the last occurrence of character ch in the target string after the 
 *             specified index "fromIndex". If the character is not found, returns -1.
 *
 * Registers used: x0, x1, x2, w3
 * Registers saved: none
 */
 
.text
.global lstindxoffrm
    lstindxoffrm:
        // Change the last index to a pointer
        add x2, x2, x0
        sub x2, x2, #1
        
    loop:
        // Compare the current index with the starting index
        cmp x2, x0
        
        // If the current index is less than the starting index, then the character was not found
        b.lt error
        
        // Load the byte at the current index
        ldrb w3, [x2], #-1
        
        // Compare the byte with the search character
        cmp w3, w1
        
        // If the byte matches the search character, then the character was found
        b.eq found
        
        // If the byte does not match the search character, then continue searching backwards
        b loop
        
    found:
        // Add 1 to the index of the found character to get the last occurrence
        add x2, x2, #1
        
        // Calculate the index of the last occurrence relative to the start of the string
        sub x0, x2, x0
        
        // Subtract 1 to convert from 1-based indexing to 0-based indexing
        sub x0, x0, #1
        
        ret
        
    error:
        // Character not found, return -1
        mov x0, #-1
        ret
