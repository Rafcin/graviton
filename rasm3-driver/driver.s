    .global _start
    .text
_start:
                // getting user input ...
        ldr x0,=szPromptInput1
        bl  putstring
        ldr x0,=sz1     // loading first string
        mov x1, 64      // setting max bytes in buffer to 64
        bl getstring    // calling getstring

        ldr x0,=szPromptInput2
        bl  putstring
        ldr x0,=sz2     // loading x0 with second string
        mov x1, 64      // setting max bytes in buffer to 64
        bl getstring    // calling getstring

        ldr x0,=szPromptInput3
        bl  putstring
        ldr x0,=sz3     // loading x0 with third string
        mov x1, 64      // setting max bytes in buffer to 64
        bl getstring    // calling getstring

        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        // **************************************************

                // printing length of s1, s2, s3
        mov x0, #1
        bl printNum
        ldr x0,=szNumbering 
        bl putstring

        ldr x0,=szLength1       // loading string for length 
        bl putstring            // printing 
        ldr x0,=sz1             // loading s1 into x1
        mov x1, #100            // setting max count
        bl length               // getting length
        bl printNum             // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing

        ldr x0,=szLength2       // loading string for length 
        bl putstring            // printing 
        ldr x0,=sz2             // loading s1 into x1
        mov x1, #100            // setting max count
        bl length               // getting length
        bl printNum             // printing
        ldr x0,= chCr           // loading carriage return
        bl putch                // printing

        ldr x0,=szLength3       // loading string for length 
        bl putstring            // printing 
        ldr x0,=sz3             // loading s1 into x1
        mov x1, #100            // setting max count
        bl length               // getting length
        bl printNum             // printing

        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        // **************************************************

                // determining equality of s1,s3 and s1,s1
        mov x0, #2
        bl printNum
        ldr x0,=szNumbering 
        bl putstring

        ldr x0,=szEq    // print string equals msg
        bl putstring    // printing
        ldr x1,=sz1     // loading sz1 into x1
        ldr x2,=sz3     // loading sz2 into x2
        bl equals       // getting equality
        bl trueOrFalse  // printing boolean comparison
        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        ldr x0,=chCr           // loading carriage return
        bl putch                // printing

        mov x0, #3
        bl printNum
        ldr x0,=szNumbering 
        bl putstring
        
        ldr x0,=szEq2    // print string equals msg
        bl putstring    // printing
        ldr x1,=sz1     // loading sz1 into x1
        ldr x2,=sz1     // loading sz2 into x2
        bl equals       // getting equality
        bl trueOrFalse  // printing boolean comparison

        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        // **************************************************

        // **************************************************

                // determining equality (CASE INSENSITIVE) of s1,s3; s1,s2
        mov x0, #4
        bl printNum
        ldr x0,=szNumbering 
        bl putstring

        ldr x0,=szEqInCas       // print string equals msg
        bl putstring            // printing
        ldr x1,=sz1             // loading sz1 into x1
        ldr x2,=sz3             // loading sz2 into x2
        bl eqincas              // getting equality
        bl trueOrFalse          // printing boolean comparison
        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        ldr x0,=chCr
        bl putch
        mov x0, #5
        bl printNum
        ldr x0,=szNumbering 
        bl putstring

        ldr x0,=szEqInCas2      // print string equals msg
        bl putstring            // printing
        ldr x1,=sz1             // loading sz1 into x1
        ldr x2,=sz2             // loading sz2 into x2
        bl eqincas              // getting equality
        bl trueOrFalse          // printing boolean comparison

        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        ldr x0,=chCr           // loading carriage return
        bl putch                // printing
        // **************************************************
                // strcpy s4 = s1
        mov x0, #6
        bl printNum
        ldr x0,=szNumbering 
        bl putstring

        ldr x0,=szPromptInput4
        bl putstring
        ldr x0,=szCopy
        bl putstring
        ldr x0,=chCr
        bl putch

        ldr x0,=szPromptInput1
        bl putstring
        ldr x0,=sz1
        bl putstring
        ldr x0,=chCr
        bl putch

        ldr x0,=sz1
        bl strcpy

        ldr x1,=sz4
        str x0,[x1]

        ldr x0,=szPromptInput4  
        bl putstring
        ldr x0,=sz4
        ldr x0,[x0]
        bl putstring
        ldr x0,=sz4             // preparing to free
        ldr x0,[x0]             // deref x0
        bl free                 // freeing memory
        ldr x0,=chCr
        bl putch
        ldr x0,=chCr
        bl putch
        
        // **************************************************
                // substring_1 s2,4,14
        mov x0, #7              // printing 7
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szSub          // loading szSub string
        bl putstring            // printing

        ldr x0,=sz3
        mov x1, #4
        mov x2, #14
        bl substr

        ldr x1,=szDyn
        str x0,[x1]
        ldr x0,=szDyn
        ldr x0,[x0]
        bl putstring

        ldr x0,=szDyn
        ldr x0,[x0]
        bl free

        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // substring_2 s3, 7
        mov x0, #8              // printing 8
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szSub2          // loading szSub string
        bl putstring            // printing

        ldr x0,=sz3
        mov x1, #7
        bl substr

        ldr x1,=szDyn
        str x0,[x1]
        ldr x0,=szDyn
        ldr x0,[x0]
        bl putstring

        ldr x0,=szDyn
        ldr x0,[x0]
        bl free

        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing

        // **************************************************
        mov x0, #9              // printing 9
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szCharAt        // printing char at
        bl putstring            // printing

        ldr x0,=sz2
        mov x1, #4
        bl chrat

        ldr x0,=szTemp
        bl putstring

        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
        mov x0, #10             // printing 10
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szStartsWith1   // printing startswith
        bl putstring            // printing

        ldr x0,=sz1
        mov x1, #11
        ldr x2,=szSw1
        bl strtwthpos
        bl trueOrFalse
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
        mov x0, #11             // printing 11
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szStartsWith2   // printing startswith2
        bl putstring            // printing

        ldr x0,=sz1
        ldr x1,=szSw2
        bl strtwth
        bl trueOrFalse
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************


        // ending program
        MOV X8, #93
        SVC 0



// ******************************************
//          TRUE OR FALSE ROUTINE
//   This routine takes a number in X0, and
//   prints FALSE if n == 0. All other
//   values result in TRUE. 
// ******************************************
trueOrFalse:
        STR LR, [SP, #-16]! // push lr
        cmp x0, #0          // compare x0 with 0
        b.eq tOfFalse       // if x0 == 0, it's false

tOfTrue:
        ldr x0,=szTrue      // load x0 with true string
        bl putstring        // print
        b tOfEnd            // branch to end
tOfFalse:
        ldr x0,=szFalse     // load x0 with false
        bl putstring        // print
tOfEnd:
        LDR LR, [SP], #16   // popping stack
        RET LR              // returning to caller

// *******************************************


// ******************************************
//                  PRINT NUM
//    This routine will simply convert an int
//    to ascii and then print the result.  
//    PARAM: X0 is an integer.
// ******************************************
printNum:
        STR X1, [SP, #-16]! // push lr
        STR LR, [SP, #-16]! // push lr
        ldr x1,=szTemp      // loading szTemp into x1
        bl int64asc         // converting into to ascii
        ldr x0,=szTemp      // loading szTemp into X0
        bl putstring        // printing
        LDR LR, [SP], #16   // popping stack
        LDR X1, [SP], #16   // popping stack
        RET LR              // returning to caller

// *******************************************

/**
 * length - counts the number of characters in a string
 * @param x0: pointer to the string to count
 * @param x1: maximum number of characters to count
 * @return x0: number of characters counted, not including null terminator
 *
 * This function counts the number of characters in a string pointed to by x0, up
 * to a maximum of x1 characters. The count excludes the null terminator. If the
 * string is longer than x1 characters, the function stops counting at x1
 * characters.
 *
 * Registers used: x0, x1, x2, x3, w3
 * Registers saved: x19-x30, lr
 */

// Entry point for the `length` subroutine
length:
    // Point to the first byte of the string to count
    mov x7, x0

    // Initialize the counter to zero
    mov x2, #0

// Top of the loop to count characters
lengthTop:
    // Load the next byte of the string and update the pointer
    ldrb w1, [x7], #1

    // Check if the byte is the null terminator
    cmp w1, #0

    // If the byte is the null terminator, jump to the bottom of the loop
    b.eq lengthBottom

    // Increment the counter by one
    add x2, x2, #1

    // Jump back to the top of the loop
    b lengthTop

// Bottom of the loop to return the length
lengthBottom:
    // Return the length of the string
    mov x0, x2
    ret lr

// ******************************************
// *        string_equals subroutine        *
// * > This routine takes in two string par-*
// * > -ameters in X1 and X2, and returns a *
// * > boolean comparison (case sensitive)  *
// * > into X0. It preserves all registers  *
// * > except X0.                           *
// ******************************************
equals:
        STR X19, [SP, #-16]!            // pushing x19 to stack
        STP X1, X2, [SP, #-32]!         // pushing x1 and x2 to stack
eqloop:
        LDRB W0,  [X1], #1              // loading byte into w0
        LDRB W19, [X2], #1              // loading byte into w19
        CMP W0, W19                     // comparing bytes
        B.NE eqfalse                    // if byte isn't equal, it's false
        CMP W0, #0                      // check if null
        B.NE eqloop                     // if not null, reloop
eqtrue:
        MOV X0, #1                      // put boolean true into x0
        B eqend                         // goto end
eqfalse:
        MOV X0, #0                      // move 0 into x0
eqend:
        LDP X1, X2, [SP], #32           // popping x1 and x2
        LDR X19, [SP], #16              // popping x19
        RET LR                          // returnign to caller

// *******************************************

// ******************************************
// *        string_equals subroutine        *
// * > This routine takes in two string par-*
// * > -ameters in X1 and X2, and returns a *
// * > boolean comparison (case insensitive)*
// * > into X0. It preserves all registers  *
// * > except X0.                           *
// ******************************************
eqincas:
        STR X19, [SP, #-16]!            // pushing x19 to stack
        STP X1, X2, [SP, #-32]!         // pushing x1 and x2 to stack
        B eqinLoop                      // go to loop
eqinlowerCheck:
        ADD W0, W0, #32                 // add w0 and #32
        B eqincaseCont                  // continue check
eqincaseCheck:      
        CMP W0, #'a'                    // compare w0 and 'a'
        B.LT eqinlowerCheck             // if less than, go to beginning of check
        CMP W19, #'{'                   // compare w19 and '{'
        B.GE eqincaseFalse              // if w19 >= '{', then return false
        ADD W19, W19, #32               // add 32 to w19
eqincaseCont:   
        CMP W0, W19                     // compare w0 and w19
        B.NE eqincaseFalse              // if !=, then return false
eqinLoop:
        LDRB W0,  [X1], #1              // load byte into w0
        LDRB W19, [X2], #1              // load byte into w19
        CMP W0, W19                     // compare bytes
        B.NE eqincaseCheck              // if they're not equal, goto case check
        CMP W0, #0                      // check if null
        B.NE eqinLoop                   // if not null, reloop
eqincaseTrue:               
        MOV X0, #1                      // return 1 if true
        B eqincaseEnd                   // returning
eqincaseFalse:
        MOV X0, #0                      // return 0 if false
eqincaseEnd:
        LDP X1, X2, [SP], #32           // popping stack
        LDR X19, [SP], #16              // popping stack
        RET                             // returning
 // *******************************************

/**
 * strcpy.s
 * PARAMETERS: X0 (STRING TO BE COPIED)
 * OUTPUT    : X0 (POINTER TO COPIED STRING)
 * The purpose of this function is to copy a string dynamically using malloc.
 * It is up to the user to free the memory when done.
 * ALL REGISTERS PRESERVED EXCEPT X0
 */
strcpy:
        // storing X0-X19 registers, as malloc will not preserve most of these
        str X1,     [sp, -16]!
        stp X2, X3, [sp, -16]!
        stp X4, X5, [sp, -16]!
        stp X6, X7, [sp, -16]!
        stp X8, X9, [sp, -16]!
        stp X10, X11, [sp, -16]!
        stp X12, X13, [sp, -16]!
        stp X14, X15, [sp, -16]!
        stp X16, X17, [sp, -16]!
        stp X18, X19, [sp, -16]!
        stp X20, X21, [sp, -16]!
        str lr, [sp, -16]!
        mov x1, #10000  // setting a theoretical max string value, can be adjusted accordingly
        mov x19, x0     // storing a copy of x0 into x19
        bl  length      // calling length to fulfill malloc's parameter of requested bytes
        add x0, x0, #1
        mov x21, x0     // move length into x21
        bl  malloc      // call malloc
        mov x20, #0     // setting variable to 0 for loop count
strcpyLoop:
        ldrb w17, [x19, x20]    // loading byte of given string into w17
        strb w17, [x0, x20]     // storing w17 into new string 
        add x20, x20, #1        // incrementing
        cmp x20, x21            // comparing x19 to x20
        b.ge strcpyend                // if it's greater than the length, goto end
        b strcpyLoop
strcpyend:
         // popping registers back from stack 
        ldr lr, [sp], 16
        ldp X20, X21, [sp], 16
        ldp X18, X19, [sp], 16
        ldp X16, X17, [sp], 16
        ldp X14, X15, [sp], 16
        ldp X12, X13, [sp], 16
        ldp X10, X11, [sp], 16
        ldp X8, X9, [sp], 16
        ldp X6, X7, [sp], 16
        ldp X4, X5, [sp], 16
        ldp X2, X3, [sp], 16
        ldr X1,     [sp], 16
        ret lr
// *******************************************      
/**
 * substr.s
 * PARAMETERS: X0 (STRING)
 *             X1 (RANGE BEGIN)
 *             X2 (RANGE END)
 * OUTPUT    : X0 (POINTER TO SUBSTRING)
 * ALL REGISTERS PRESERVED EXCEPT X0
 */
substr:
            // storing X0-X19 registers, as malloc will not preserve most of these
            str X1,     [sp, -16]!
            stp X2, X3, [sp, -16]!
            stp X4, X5, [sp, -16]!
            stp X6, X7, [sp, -16]!
            stp X8, X9, [sp, -16]!
            stp X10, X11, [sp, -16]!
            stp X12, X13, [sp, -16]!
            stp X14, X15, [sp, -16]!
            stp X16, X17, [sp, -16]!
            stp X18, X19, [sp, -16]!
            stp X20, X21, [sp, -16]!
            str lr, [sp, -16]!
            
            mov x19, x0     // copying string in x19
            mov x20, x1     // copying begin in x20
            mov x21, x2     // copying end in x21
            mov x0, x21
            sub x0, x0, x20
            sub x0, x2, x1  // using difference for malloc
            cmp x0, #0      // if the difference is less or equal to 0, input is invalid. exit routine
            b.ge substrPreLoop
            mov x0, #0      // invalid input, throw null
            b substrdone
            
substrPreLoop:
            add x0, x0, #1  // need one extra byte for null
            bl malloc       // calling malloc with requests bytes
            mov x1, #0
substrLoop:
            ldrb w17, [x19, x20]    // loading byte of given string into w17
            strb w17, [x0, x1]      // storing w17 into new string 
            add x1, x1, #1
            add x20, x20, #1        // incrementing
            cmp x20, x21            // comparing x19 to x20
            b.lt substrLoop         // if increment >= end, goto end label
            mov w17, #0             // storing null
            strb w17, [x0, x1]
substrdone:
            // popping registers back from stack 
            ldr lr, [sp], 16
            ldp X20, X21, [sp], 16
            ldp X18, X19, [sp], 16
            ldp X16, X17, [sp], 16
            ldp X14, X15, [sp], 16
            ldp X12, X13, [sp], 16
            ldp X10, X11, [sp], 16
            ldp X8, X9, [sp], 16
            ldp X6, X7, [sp], 16
            ldp X4, X5, [sp], 16
            ldp X2, X3, [sp], 16
            ldr X1,     [sp], 16
            ret lr
// *******************************************      

/**
 * substrend.s
 * PARAMETERS: X0 (STRING)
 *             X1 (RANGE BEGIN)
 * OUTPUT    : X0 (POINTER TO SUBSTRING)
 * This routine goes from the begin index in X1 to the end of a given string in X0,
 * and returns the resulting substring in X0.
 * ALL REGISTERS PRESERVED EXCEPT X0
 */
substrend:
        // storing X0-X19 registers, as malloc will not preserve most of these
        str X1,     [sp, -16]!
        stp X2, X3, [sp, -16]!
        stp X4, X5, [sp, -16]!
        stp X6, X7, [sp, -16]!
        stp X8, X9, [sp, -16]!
        stp X10, X11, [sp, -16]!
        stp X12, X13, [sp, -16]!
        stp X14, X15, [sp, -16]!
        stp X16, X17, [sp, -16]!
        stp X18, X19, [sp, -16]!
        stp X20, X21, [sp, -16]!
        str lr, [sp, -16]! 
        mov x20, x1     // copying begin in x20
        mov x19, x0     // copying string in x19
        mov x1, #10000  // our string maximum for length routine
        bl length       // need length of string for malloc
        add x0, x0, #1  // accounting for null terminator
        sub x0, x0, x20
        
substrendPreLoop:
        bl malloc       // calling malloc with requests bytes
        mov x21, #0
substrendLoop:
        ldrb w17, [x19, x20]    // loading byte of given string into w17
        strb w17, [x0, x21]     // storing w17 into new string 
        add x21, x21, #1        // incrementing
        add x20, x20, #1        // incrementing
        cmp w17, #0
        b.ne substrendLoop      // if increment >= end, goto end label
substrenddone:
         // popping registers back from stack 
        ldr lr, [sp], 16
        ldp X20, X21, [sp], 16
        ldp X18, X19, [sp], 16
        ldp X16, X17, [sp], 16
        ldp X14, X15, [sp], 16
        ldp X12, X13, [sp], 16
        ldp X10, X11, [sp], 16
        ldp X8, X9, [sp], 16
        ldp X6, X7, [sp], 16
        ldp X4, X5, [sp], 16
        ldp X2, X3, [sp], 16
        ldr X1,     [sp], 16
        ret lr
// *******************************************  
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
chrat:
        // Load the character from memory into w0
        ldr x3,=szTemp
        ldrb w0, [x0, x1]
        strb w0, [x3, 0]
        ldr x0,=szTemp
        ret     
// *******************************************  

// strtwthpos subroutine:
// X0 given string
// X1 start pos of first string
// X2 string to check if matched
// x0 will return boolean answer to equality
strtwthpos:
        stp X10, X11, [sp, -16]!
        stp X12, X13, [sp, -16]!
        stp X14, X15, [sp, -16]!
        stp X16, X17, [sp, -16]!
        stp X18, X19, [sp, -16]!
        stp X20, X21, [sp, -16]!
        mov x19, x1
        mov x20, #0
strtwthposloop:
        LDRB W10,  [X0, X19]            // loading byte into w0
        LDRB W11,  [X2, x20]            // loading byte into w19
        add x19, x19, #1
        add x20, x20, #1
        CMP W10, W11                    // comparing bytes
        B.NE strtwthposfalse            // if byte isn't equal, it's false
        CMP W10, #0                      // check if null
        B.NE strtwthposloop             // if not null, reloop
strtwthpostrue:
        MOV X0, #1                      // put boolean true into x0
        B strtwthposend                 // goto end
strtwthposfalse:
        MOV X0, #0                      // move 0 into x0
strtwthposend:
        ldp X20, X21, [sp], 16
        ldp X18, X19, [sp], 16
        ldp X16, X17, [sp], 16
        ldp X14, X15, [sp], 16
        ldp X12, X13, [sp], 16
        ldp X10, X11, [sp], 16
        ret
// *******************************************  

// strtwth subroutine:
// X0 given string
// X1 string to check if matched
// x0 will return boolean answer to equality
strtwth:
        stp X10, X11, [sp, -16]!
        stp X12, X13, [sp, -16]!
        stp X14, X15, [sp, -16]!
        stp X16, X17, [sp, -16]!
        stp X18, X19, [sp, -16]!
        stp X20, X21, [sp, -16]!
        mov x20, #0
strtwthloop:
        LDRB W10,  [X0, x20]            // loading byte into w0
        LDRB W11,  [X1, x20]            // loading byte into w19
        add x20, x20, #1
        CMP W10, W11                    // comparing bytes
        B.NE strtwthfalse               // if byte isn't equal, it's false
        B.NE strtwthloop                // if not null, reloop
strtwthtrue:
        MOV X0, #1                      // put boolean true into x0
        B strtwthend                    // goto end
strtwthfalse:
        CMP W11, #0                     // check if null
        B.EQ strtwthtrue
        MOV X0, #0                      // move 0 into x0
strtwthend:
        ldp X20, X21, [sp], 16
        ldp X18, X19, [sp], 16
        ldp X16, X17, [sp], 16
        ldp X14, X15, [sp], 16
        ldp X12, X13, [sp], 16
        ldp X10, X11, [sp], 16
        ret
        


    .data
szNumbering:    .asciz ". "
szPromptInput1: .asciz "s1 = "
szPromptInput2: .asciz "s2 = "
szPromptInput3: .asciz "s3 = "
szPromptInput4: .asciz "s4 = "
szSw1:          .asciz "hat."
szSw2:          .asciz "Cat"
szLength1:      .asciz "s1.length() = "
szLength2:      .asciz "s2.length() = "
szLength3:      .asciz "s3.length() = "
szEq:           .asciz "String_equals(s1,s3) = "
szEq2:          .asciz "String_equals(s1,s1) = "
szEqInCas:      .asciz "String_equalsIgnoreCase(s1,s3) = "
szEqInCas2:     .asciz "String_equalsIgnoreCase(s1,s2) = "
szCopy:         .asciz "String_copy(s1)"
szSub:          .asciz "String_substring_1(s3,4,14) = "
szSub2:         .asciz "String_substring_2(s3,7) = "
szCharAt:       .asciz "String_charAt(s2,4) = "
szStartsWith1:  .asciz "String_startsWith_1(s1,11,'hat.') = "
szStartsWith2:  .asciz "String_startsWith_2(s1,'Cat') = "
szendsWith:     .asciz "String_endsWith(s1,'in the hat.') = "
szIndexOf1:     .asciz "String_indexOf_1(s2,'g') = "
szIndexOf2:     .asciz "String_indexOf_2(s2,'g',9) = "
szIndexOf3:     .asciz "String_indexOf_3(s2,'eggs') = "
szLastIndexOf1: .asciz "String_lastIndexOf_1(s2,'g') = "
szLastIndexOf2: .asciz "String_lastIndexOf_2(s2,'g',6) = "
szLastIndexOf3: .asciz "String_lastIndexOf_3(s2,'egg') = "
szReplace:      .asciz "String_replace(s1,'a','o') = "
sztoLower:      .asciz "String_toLowerCase(s1) = "
sztoUpper:      .asciz "String_toLowerCase(s1) = "
szConcat:       .asciz "String_concat(s1, ' '\nString_concat(s1, s2) = "
szTrue:         .asciz "TRUE"
szFalse:        .asciz "FALSE"
szDyn:          .quad 0
sz1:            .skip 64
sz2:            .skip 64
sz3:            .skip 64
sz4:            .skip 64
szTemp:         .skip 4
chCr:           .byte 10
