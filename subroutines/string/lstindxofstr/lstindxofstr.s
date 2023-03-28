/**
 * lstindxofstr - Returns the index of the last occurrence of string str in a given String.
 * 
 * This function searches for the last occurrence of the specified string str in the target string,
 * starting from the specified index "fromIndex" and working backwards. The function returns the
 * index of the last occurrence of the string str in the target string after the specified index
 * "fromIndex". The search starts from the index x2 in the target string, where x2 is the specified
 * index "fromIndex". The function returns -1 if the string str is not found in the target string.
 *
 * @param x0: Address of the target string to search.
 * @param x1: Address of the string to find in the target string.
 * @param x2: Index to start the search at.
 * @return x0: Integer index of the last occurrence of string str in the target string after the
 *             specified index "fromIndex". If the string is not found, returns -1.
 * 
 * Registers used: x0, x1, x2, x3, w4, w5, w6, lr
 * Registers saved: none
 */

.text
.global lstindxofstr
    lstindxofstr:
        // Save the return address and the input parameters
        str lr, [sp, #-16]!
        stp x0, x1, [sp, #-16]!
        
        // Get the length of the target string
        bl length
        mov x2, x0
        
        // Set the last index of the target string
        sub x2, x2, #1
        ldp x1, x0, [sp], #16
        add x2, x2, x1
        
        // Get the length of the string to find
        bl length
        mov x3, x0
        
        // Set the last index of the string to find
        sub x3, x3, #1
        ldp x0, x1, [sp], #16
        add x3, x3, x1
        
        // Load the last character of the string to find
        ldrb w4, [x3], #-1
        
    loop:
        // Compare the current index with the starting index
        cmp x2, x0
        
        // If the current index is less than the starting index, then the string was not found
        b.lt cherror
        
        // Load the byte at the current index
        ldrb w5, [x2], #-1
        
        // Compare the byte with the last character of the string to find
        cmp w4, w5
        
        // If the byte matches the last character of the string to find, then the string was found
        b.eq chfound
        
        // If the byte does not match the last character of the string to find, then continue searching backwards
        b loop
        
    chfound:
        // Save the last index of the target string and the last index of the string to find
        stp x2, x3, [sp, #-16]!
    sloop:
        // Compare the current index of the string to find with the starting index of the string to find
        cmp x3, x1
        
        // If the current index of the string to find is less than the starting index of the string to find,
        // then the string was found
        b.lt strfound
        cmp x2, x0
        b.lt strerror
        ldrb w5, [x2], #-1
        ldrb w6, [x3], #-1
        cmp w5, w6
        b.eq sloop
        ldp x2, x3, [sp], #16
        b loop
    strfound:
        // Free the stack space used for storing the pointers to the strings
        add sp, sp, #16
        
        // Add 1 to the index of the found string to get the last occurrence
        add x2, x2, #1
        
        // Calculate the index of the last occurrence relative to the start of the string
        sub x0, x2, x0
        
        // Subtract 1 to convert from 1-based indexing to 0-based indexing
        sub x0, x0, #1
        
        // Return the index of the last occurrence
        ret
    
    // Handle the case where the search character is not found
    strerror:
        // Free the stack space used for storing the pointers to the strings
        add sp, sp, #16
    
    // Handle the case where the search character is not a valid ASCII character
    cherror:
        // Set the return value to -1
        mov x0, #-1
        
        // Return the value -1
        ret
