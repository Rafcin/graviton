/**
 * timesfound.s : returns occurences of substr in given str
 * 
 * This function searches for the last occurrence of the specified string str in the target string,
 * starting from the specified index "fromIndex" and working backwards. The function returns the
 * index of the last occurrence of the string str in the target string after the specified index
 * "fromIndex". The search starts from the index x2 in the target string, where x2 is the specified
 * index "fromIndex". The function returns -1 if the string str is not found in the target string.
 *
 * @param x0: Address of the target string to search.
 * @param x1: Address of the string to find in the target string.
 * @return x0: Integer index of the last occurrence of string str in the target string after the
 *             specified index "fromIndex". If the string is not found, returns -1.
 * 
 * Registers used: x0, x1, x2, x3, w4, w5, w6, lr
 * Registers saved: none
 */

.text
.global timesfound
    timesfound:
        // Save the return address and the input parameters
        str lr, [sp, #-16]!
        stp x0, x1, [sp, #-16]!
        
        // Get the length of the target string
        bl String_length
        mov x25, x0
        
        ldp x0, x1, [sp], #16 
        stp x0, x1, [sp, #-16]!
        mov x0, x1
        
        // Get the length of the string to find
        bl String_length
        //add x0, x0, #1
        mov x3, x0
        mov x2, x25
        
        ldp x0, x1, [sp], #16
        // length of target in x2
        // length of string to find in x3
        
        mov x25, #0 // target string index. only increments
        mov x26, #0 // current find string index
        mov x27, #0 // hits
        // Load the last character of the string to find
        b loop
    
    lower:
        add w5, w5, #32
        b caseCont

    check:
        cmp w5, #'a'
        b.lt lower
        cmp w6, #'{'
        b.ge notFound
        add w6, w6, #32

    caseCont:
        cmp w5, w6
        b.ne notFound
    chfound:
        add x26, x26, #1
        cmp x26, x3
        b.ge strFound
        b loop
    strFound:
        add x27, x27, #1
        mov x26, #0
    loop:
        cmp x25, x2
        b.ge done
        
        ldrb w5, [x0, x25]
        add x25, x25, #1
        
        ldrb w6, [x1, x26]
        cmp w5, w6
        b.eq chfound
        // make sure the case isn't the issue here
        b check
        notFound:
        mov x26, #0
        b loop
        
        done:
            mov x0, x27
            ldr lr, [sp], 16
            ret lr
