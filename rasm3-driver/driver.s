// **************************************************
// AUTHORS       : James Johnson, Rafael Szuminski
// LAB           : RASM-3
// DATE MODIFIED : 3/28/2023
// **************************************************
        .global _start
        .text
_start:
        ldr x0,=szAuthors      // loading header
        bl putstring           // printing
        ldr x0,=chCr           // loading carriage return
        bl putch               // printing
                // getting user input ...
        ldr x0,=szPromptInput1  // loading prompt1
        bl  putstring   // printing
        ldr x0,=sz1     // loading first string
        mov x1, 64      // setting max bytes in buffer to 64
        bl getstring    // calling getstring

        ldr x0,=szPromptInput2  // loading prompt2
        bl  putstring   // printing
        ldr x0,=sz2     // loading x0 with second string
        mov x1, 64      // setting max bytes in buffer to 64
        bl getstring    // calling getstring

        ldr x0,=szPromptInput3
        bl  putstring   // printing
        ldr x0,=sz3     // loading x0 with third string
        mov x1, 64      // setting max bytes in buffer to 64
        bl getstring    // calling getstring

        ldr x0,=chCr           // loading carriage return
        bl putch               // printing
        // **************************************************
        // printing length of s1, s2, s3
        mov x0, #1              // moving #1 into x0
        bl printNum             // printing num
        ldr x0,=szNumbering     // loading sznumbering
        bl putstring            // printing

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
        mov x0, #2              // moving #2 into x0
        bl printNum             // printing num
        ldr x0,=szNumbering     // loading sznumbering into x0
        bl putstring            // printing

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

        mov x0, #3              // moving 3 into x0
        bl printNum             // printing num
        ldr x0,=szNumbering     // loading sznumbering into x0
        bl putstring            // printing
        
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
        // determining equality (CASE INSENSITIVE) of s1,s3; s1,s2
        mov x0, #4              // moving 4 into x0
        bl printNum             // printing num
        ldr x0,=szNumbering     // loading sznumbering into x0
        bl putstring            // printing

        ldr x0,=szEqInCas       // print string equals msg
        bl putstring            // printing
        ldr x1,=sz1             // loading sz1 into x1
        ldr x2,=sz3             // loading sz2 into x2
        bl eqincas              // getting equality
        bl trueOrFalse          // printing boolean comparison
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        mov x0, #5              // loading #5 into x0
        bl printNum             // printing
        ldr x0,=szNumbering     // loading sznumbering into x0
        bl putstring            // printing

        ldr x0,=szEqInCas2      // print string equals msg
        bl putstring            // printing
        ldr x1,=sz1             // loading sz1 into x1
        ldr x2,=sz2             // loading sz2 into x2
        bl eqincas              // getting equality
        bl trueOrFalse          // printing boolean comparison

        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // strcpy s4 = s1
        mov x0, #6              // loading 6 into x0
        bl printNum             // printing
        ldr x0,=szNumbering     // loading sznumbering into x0
        bl putstring            // printing

        ldr x0,=szPromptInput4  // loading prompt into x0
        bl putstring            // printing
        ldr x0,=szCopy          // loading szcopy prompt into x0
        bl putstring            // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing

        ldr x0,=szPromptInput1  // loading prompt1 into x0
        bl putstring            // printing
        ldr x0,=sz1             // loading sz2 into x0
        bl putstring            // printing
        ldr x0,=chCr            // loading carriage return into x0
        bl putch                // printing

        ldr x0,=sz1             // loading sz1 into x0
        bl strcpy               // caling strcpy

        ldr x1,=sz4             // loading sz4 into x1
        str x0,[x1]             // storing x0 into x1

        ldr x0,=szPromptInput4  // loading szpromptinput4 into x0
        bl putstring            // printing
        ldr x0,=sz4             // loading sz4 into x0
        ldr x0,[x0]             // deref x4
        bl putstring            // printing
        ldr x0,=sz4             // preparing to free
        ldr x0,[x0]             // deref x0
        bl free                 // freeing memory
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        
        // **************************************************
                // substring_1 s2,4,14
        mov x0, #7              // printing 7
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szSub           // loading szSub string
        bl putstring            // printing

        ldr x0,=sz3             // loading sz3 into x0
        mov x1, #4              // moving 4 into x1
        mov x2, #14             // moving 14 into x2
        bl substr               // calling substring

        ldr x1,=szDyn           // loading szDyn into x1 (dynamic string)
        str x0,[x1]             // storing x0 into x1
        ldr x0,=szDyn           // loading szDyn into x0
        ldr x0,[x0]             // dereferencing x0
        bl putstring            // printing

        ldr x0,=szDyn           // loading x0 with szDyn
        ldr x0,[x0]             // deref x0
        bl free                 // freeing szDyn's memory

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

        ldr x0,=sz3             // loading x0 with sz3
        mov x1, #7              // moving 7 into x1
        bl substr               // calling substr

        ldr x1,=szDyn           // loading x1 with szdyn
        str x0,[x1]             // storing x0 into szdyn
        ldr x0,=szDyn           // loading x0 with szdyn
        ldr x0,[x0]             // deref x0
        bl putstring            // printing

        ldr x0,=szDyn           // loading x0 with szdyn
        ldr x0,[x0]             // deref x0
        bl free                 // freeing szdyn

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

        ldr x0,=sz2             // loading x0 with sz2
        mov x1, #4              // moving 4 into x1
        bl chrat                // calling chrat

        ldr x0,=szTemp          // loading szTemp into x0
        bl putstring            // printing

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

        ldr x0,=sz1             // loading sz1 into x0
        mov x1, #11             // moving 11 into x1
        ldr x2,=szSw1           // loading szsw1 into x2
        bl strtwthpos           // calling strtwthpos
        bl trueOrFalse          // calling trueorfalse
        
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

        ldr x0,=sz1             // loading sz1 into x0
        ldr x1,=szSw2           // loading szsw2 into x1
        bl strtwth              // calling strtwth
        bl trueOrFalse          // calling ToF
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                //String_endsWith(s1,"in the hat.") = TRUE
        mov x0, #12             // printing 12
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szendsWith      // printing startswith2
        bl putstring            // printing

        ldr x0,=sz1             // loading sz1 into x0
        ldr x1,=suffix          // loading x1 with "in the hat"
        bl endwth               // calling endwth function
        bl trueOrFalse          // calling true or false

        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
        // indexOf_1(s2,'g') = 7
        mov x0, #13             // printing 13
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szIndexOf1      // printing startswith2
        bl putstring            // printing

        ldr x0,=sz2             // loading sz2 into x0
        mov x1, #'g'            // moving 'g' into x1
        bl indxof               // calling indxof

        bl printNum             // printing num
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // String_indexOf_2(s2,'g',9) = -1
        mov x0, #14             // printing 14
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szIndexOf2      // printing startswith2
        bl putstring            // printing

        ldr x0,=sz2             // loading sz2 into x0
        mov x1, #'g'            // moving 'g' into x1
        mov x2, 9               // loading 9 into x2
        bl indxoffrm            // calling indxoffrm

        bl printNum             // printing num
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // String_indexOf_3(s2,"eggs") = 6
        mov x0, #15             // printing 15
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szIndexOf3      // printing startswith2
        bl putstring            // printing

        ldr x0,=sz2             // loading sz2 into x0
        ldr x1,=szFindIndx      // loading szFindIndx into x1
        bl indxofstr            // calling indxofstr

        bl printNum             // printing num
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // String_lastIndexOf_1(s2,'g') = 8
        mov x0, #16             // printing 16 
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szLastIndexOf1  // printing startswith2
        bl putstring            // printing

        ldr x0,=sz2             // loading sz2 into x0
        mov x1, #'g'            // moving 'g' into x1
        bl lstindxof            // calling lstindxof

        add x0, x0, #1          // adding #1 to x0
        bl printNum             // printing num
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // String_lastIndexOf_2(s2,'g',6) = -1
        mov x0, #17             // printing 17
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szLastIndexOf2  // printing startswith2
        bl putstring            // printing

        ldr x0,=sz2             // loading sz2 into x0
        mov x1, #'g'            // moving 'g' into x1   
        mov x2, #6              // moving #6 into x2
        bl lstindxoffrm         // calling lstindxoffrm

        bl printNum             // printing num
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // String_lastIndexOf_3(s2,"egg") = 6
        mov x0, #18             // printing 18
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szLastIndexOf3  // printing startswith2
        bl putstring            // printing

        ldr x0,=sz2             // loading sz2 into x0
        ldr x1,=szLstIndex      // loading szlstindex into x1
        bl lstindxofstr         // calling lstindxofstr

        bl printNum             // printing num
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // String_replace(s1,'a','o') = "Cot in the hot."
        mov x0, #19             // printing 19
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=szReplace       // printing startswith2
        bl putstring            // printing

        ldr x0,=sz1             // loading sz1
        mov x1, #'a'            // replacing 'a'
        mov x2, #'o'            // with 'o'
        bl replace              // calling replace

        ldr x1,=sz1             // loading x1 with sz1
        str x0,[x1]             // store x0 into x1
        ldr x0,=sz1             // load sz1 into x0
        ldr x0,[x0]             // deref x0
        bl putstring            // print (REMEMBER TO FREE MEMORY!)
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // String_toLowerCase(s1) = "cot in the hot." 
        mov x0, #20             // printing 20
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=sztoLower       // printing startswith2
        bl putstring            // printing

        ldr x0,=sz1             // loading sz1
        ldr x0,[x0]             // dereffing x0
        bl tolwr                // calling tolwr

        ldr x0,=sz1             // loading sz1 into x0
        ldr x0,[x0]             // dereffing x0
        bl putstring            // print
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // String_toUpperCase(s1) = "COT IN THE HOT."
        mov x0, #21             // printing 21
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing

        ldr x0,=sztoUpper       // printing startswith2
        bl putstring            // printing

        ldr x0,=sz1             // loading sz1
        ldr x0,[x0]             // dereffing x0
        bl toupr                // calling toupr

        ldr x0,=sz1             // loading sz1 into x0
        ldr x0,[x0]             // derefing x0
        bl putstring            // print
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
                // 22. String_concat(s1, " ");  String_concat(s1, s2);
        mov x0, #21             // printing 21
        bl printNum             // calling printNum
        ldr x0,=szNumbering     // printing separation
        bl putstring            // printing
        ldr x0,=szConcat        // printing startswith2
        bl putstring            // printing
        ldr x0,=sz1             // loading sz1
        ldr x0,[x0]             // deref x0
        ldr x1,=szEmpty         // loading x1 with ' '
        bl concat               // calling concat
        ldr x1,=sz1             // loading x1 with sz1
        str x0,[x1]             // storing x0 into x1
        ldr x0,=sz1             // loading sz1
        ldr x0,[x0]             // deref x0
        ldr x1,=sz2             // loading sz2 into x1
        bl concat               // calling concat
        ldr x1,=sz1             // loading sz1 into x1
        str x0,[x1]             // storing x0 into x1


        ldr x0,=sz1             // loading sz1 into x0
        ldr x0,[x0]             // deref x0
        bl putstring            // print
        
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        ldr x0,=chCr            // loading carriage return
        bl putch                // printing
        // **************************************************
        // ending program && freeing memory
        ldr x0,=sz1             // loading sz1 into x0
        ldr x0,[x0]             // deref x0
        bl free                 // you are now free.
        MOV X8, #93             // preparing linux to terminate
        SVC 0                   // service call



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
        CMP W10, #0                     // check if null
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
// ******************************************* 
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
 
lstindxoffrm:
        // Change the last index to a pointer
        add x2, x2, x0
        sub x2, x2, #1
        
lstindxloop:
        // Compare the current index with the starting index
        cmp x2, x0
        
        // If the current index is less than the starting index, then the character was not found
        b.lt lstindxerror
        
        // Load the byte at the current index
        ldrb w3, [x2], #-1
        
        // Compare the byte with the search character
        cmp w3, w1
        
        // If the byte matches the search character, then the character was found
        b.eq lstindxfound
        
        // If the byte does not match the search character, then continue searching backwards
        b lstindxloop
        
lstindxfound:
        // Add 1 to the index of the found character to get the last occurrence
        add x2, x2, #1
        
        // Calculate the index of the last occurrence relative to the start of the string
        sub x0, x2, x0
        
        // Subtract 1 to convert from 1-based indexing to 0-based indexing
        sub x0, x0, #1
        
        ret
        
lstindxerror:
        // Character not found, return -1
        mov x0, #-1
        ret

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

/**
 * indxofstr - Returns the index of string str in a particular String.
 * 
 * This function searches for the first occurrence of the specified string str in the target 
 * string and returns the index of the first occurrence of the string str in the target string. 
 * The search starts from the beginning of the target string. If the string str is not found 
 * in the target string, the function returns -1. 
 *
 * @param x0: Address of the target string to search.
 * @param x1: String to find in the target string.
 *
 * Registers used: x0, x1, x2, x3, x4
 * Registers saved: x0, x1
 */
     
indxofstr:
        str x0, [sp, #-16]!    // Save the address of the target string on the stack
        ldrb w3, [x1], #1      // Load the first character of the string to search and move the pointer
        
indxofstrloop:
        ldrb w2, [x0], #1      // Load the next character of the target string and move the pointer
        cmp w2, #0             // Check if the end of the target string has been reached
        b.eq indxcherror           // If so, the character to search was not found in the target string, so return -1
        cmp w2, w3             // Compare the current character of the target string with the first character of the string to search
        b.eq indxofstrchfound           // If they match, start searching for the rest of the string to search
        
        b indxofstrloop                 // If they don't match, keep searching for the character to search in the target string
    
indxofstrchfound:
        stp x0, x1, [sp, #-16]! // Save the current target string and string to search pointers on the stack
        
indxofstrsloop:
        ldrb w2, [x0], #1      // Load the next character of the target string and move the pointer
        ldrb w4, [x1], #1      // Load the next character of the string to search and move the pointer
        cmp w4, #0             // Check if the end of the string to search has been reached
        b.eq indxstrfound          // If so, the entire string to search was found in the target string, so return the index
        cmp w2, #0             // Check if the end of the target string has been reached
        b.eq indxstrerror          // If so, the string to search was not found in the target string, so return -1
        cmp w2, w4             // Compare the current character of the target string with the current character of the string to search
        b.eq indxofstrsloop             // If they match, continue searching for the rest of the string to search
        
        ldp x0, x1, [sp], #16  // If they don't match, pop the saved target string and string to search pointers off the stack
        b indxofstrloop                 // and continue searching for the character to search in the target string

indxstrfound:
        // Pop the stack frame to restore the saved registers
        ldp x0, x1, [sp], #16
        // Calculate the index of the found string in the target string
        ldr x1, [sp], #16
        sub x0, x0, x1
        sub x0, x0, #1
        // Return the index
        ret

indxcherror:
        // No string match found, so pop the stack frame to restore the saved registers
        add sp, sp, #16
        // Return -1
        mov x0, #-1
        ret

indxstrerror:
        // No string match found, so pop the stack frame to restore the saved registers
        add sp, sp, #16
        // Return -1
        mov x0, #-1
        ret    
/**
 * indxoffrm - Returns the index of the first occurrence of character ch in the given string 
 *             after the specified index "fromIndex".
 * 
 * @param x0: Address of the target string to search.
 * @param x1: Character to find in the target string.
 * @param x2: Index to start the search in the target string.
 * 
 * @return x0: Integer index of the first occurrence of character ch in the target string 
 *             after the specified index "fromIndex". If the character is not found, 
 *             returns -1.
 *
 * This function searches for the first occurrence of the specified character ch in the 
 * target string starting from the specified index "fromIndex" onwards. The function returns 
 * the index of the first occurrence of the character ch in the target string after the 
 * specified index "fromIndex". The search starts from the index x2+1 in the target string, 
 * where x2 is the specified index "fromIndex". The function returns -1 if the character ch 
 * is not found in the target string.
 *
 * Registers used: x0, x1, x2, w2
 * Registers saved: none
 */

indxoffrm:
        // Save the target string pointer on the stack
        str x0, [sp, #-16]!
        
        // Calculate the starting index for the search
        add x0, x0, x2
        add x0, x0, #1
        
indxloop:
        // Load a byte from the target string
        ldrb w2, [x0], #1
        
        // Check if the byte is the terminating null byte
        cmp w2, #0
        b.eq indxerror
        
        // Check if the byte is the character to find
        cmp w2, w1
        b.eq indxfound
        
        // Jump back to the beginning of the loop
        b indxloop
    
indxfound:
        // Restore the target string pointer from the stack
        ldr x1, [sp], #16
        
        // Calculate and return the index of the found character
        sub x0, x0, x1
        sub x0, x0, #1
        ret
    
indxerror:
        // Remove the saved target string pointer from the stack
        add sp, sp, #16
        
        // Return -1 to indicate that the character was not found
        mov x0, #-1
        ret

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
        ldr lr, [sp], #16
        mov x0, #6
        ret
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
        
    .lloop:
        // Compare the current index with the starting index
        cmp x2, x0
        
        // If the current index is less than the starting index, then the string was not found
        b.lt .lcherror
        
        // Load the byte at the current index
        ldrb w5, [x2], #-1
        
        // Compare the byte with the last character of the string to find
        cmp w4, w5
        
        // If the byte matches the last character of the string to find, then the string was found
        b.eq .lchfound
        
        // If the byte does not match the last character of the string to find, then continue searching backwards
        b .lloop
        
    .lchfound:
        // Save the last index of the target string and the last index of the string to find
        stp x2, x3, [sp, #-16]!
    .lsloop:
        // Compare the current index of the string to find with the starting index of the string to find
        cmp x3, x1
        
        // If the current index of the string to find is less than the starting index of the string to find,
        // then the string was found
        b.lt .lstrfound
        cmp x2, x0
        b.lt .lstrerror
        ldrb w5, [x2], #-1
        ldrb w6, [x3], #-1
        cmp w5, w6
        b.eq .lsloop
        ldp x2, x3, [sp], #16
        b .lloop
    .lstrfound:
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
    .lstrerror:
        // Free the stack space used for storing the pointers to the strings
        add sp, sp, #16
    
    // Handle the case where the search character is not a valid ASCII character
    .lcherror:
        // Set the return value to -1
        mov x0, #-1
        
        // Return the value -1
        ret

// *******************************************  
/**
 * replace - Replaces all occurrences of character 'old' in the given string with character 'new'.
 *
 * This function creates a new string in memory, with all occurrences of the character 'old' in the input
 * string replaced with the character 'new'. The input string remains unchanged. The new string is created
 * dynamically in memory using the malloc() function. The function returns a pointer to the new string.
 *
 * @param x0: Address of the input string to be modified.
 * @param x1: Character to be replaced.
 * @param x2: Character to replace 'old' with.
 * @return x0: Pointer to the newly created string.
 *
 * Registers used: x0, x1, x2, x3, w4
 * Registers saved: lr
 */
replace:
        // Save the link register and the input string pointer on the stack
        stp lr, x0, [sp, #-16]!     
        
        // Save the 'old' and 'new' characters on the stack
        stp x1, x2, [sp, #-16]!     
        
        // Get the length of the input string
        bl  length              
        
        // Increment the length by 1 to make space for the null terminator
        add x0, x0, #1             
        
        // Allocate memory for the new string using malloc
        bl  malloc               
        
        // Restore the 'old' and 'new' characters from the stack
        ldp x2, x3, [sp], #16       
        ldp lr, x1, [sp], #16       
        stp lr, x0, [sp, #-16]!     

chrloop:
        // Load the next character from the input string
        ldrb w4, [x1], #1          
        
        // If the character is null, we have reached the end of the string
        cmp  w4, #0               
        b.eq chrend                 
        
        // If the character is the 'old' character, replace it with the 'new' character
        cmp  w4, w2               
        b.eq chrswap                
        
        // Otherwise, copy the character to the new string
        strb w4, [x0], #1          
        b chrloop                  

chrswap:
        // Copy the 'new' character to the new string
        strb w3, [x0], #1         
        b chrloop                   

chrend:
        // Restore the input string pointer and the link register from the stack
        ldp lr, x0, [sp], #16       
        ret               
// *******************************************  
/**
 * tolwr.s
 * PARAMETERS: X0 (INPUT STRING OF SIZE N)
 * OUTPUT    : X0 (STRING, CONVERTED)
 * The purpose of this function is to convert all uppercase letters
 * to lowercase.
 * ALL REGISTERS PRESERVED EXCEPT X0
 */
    tolwr:
        stp x19,x20, [sp, -16]! // pushing x19 and x20 to stack pointer
        mov x19, #-1            // setting increment
        b   toLwrLoop           // branch to 'toLwrLoop'
    toLwrConvert:
        add w20, w20, #32       // converts the char from uppercase to lowercase
        strb w20, [x0, x19]     // storing byte in w0 string
    toLwrLoop:
        add  x19, x19, #1       // x19++
        ldrb w20, [x0, x19]     // load byte from str and post increment
        cmp  w20, #0            // compare loaded byte and null
        b.eq toLwrEnd           // if null, goto 'toLwrEnd'
        cmp  w20, #'A'          // if char is less than 'Z'...
        b.lt toLwrLoop          // then return to toLwrLoop
        cmp  w20, #'Z'          // else, if w20 is less than 'Z'
        b.le toLwrConvert       // you're lowercase, so go to the convert label
        b    toLwrLoop          // go back to lwr :)
    toLwrEnd:
        ldp x19, x20, [sp], 16  // popping x19 and x20 from stack
        ret lr                  // return to caller
// ******************************************* 
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
    b.eq cend

    // Store the byte in the new concatenated string
    strb w3,[x0],#1

    // Jump back to the beginning of the loop
    b    second

cend:
    // Restore the return address and the new concatenated string pointer from the stack
    ldp lr,x0,[sp],#16

    // Return the new concatenated string pointer
    ret
//***************************************************
/**
 * toupr.s
 * PARAMETERS: X0 (INPUT STRING OF SIZE N)
 * OUTPUT    : X0 (STRING, CONVERTED)
 * The purpose of this function is to convert all lowercase letters
 * to uppercase.
 * ALL REGISTERS PRESERVED EXCEPT X0
 */

    toupr:
        stp x19,x20, [sp, -16]! // pushing x19 and x20 to stack pointer
        mov x19, #-1            // setting increment
        b   toUprLoop           // branch to 'toUprLoop'
    toUprConvert:
        sub w20, w20, #32       // converts the char from lowercase to uppercase
        strb w20, [x0, x19]     // storing byte in w0 string
    toUprLoop:
        add  x19, x19, #1       // x19++
        ldrb w20, [x0, x19]     // load byte from str and post increment
        cmp  w20, #0            // compare loaded byte and null
        b.eq toUprEnd           // if null, goto 'toUprEnd'
        cmp  w20, #'a'          // if char is less than 'a'...
        b.lt toUprLoop          // then return to toUprLoop
        cmp  w20, #'z'          // else, if w20 is less than 'z'
        b.le toUprConvert       // you're lowercase, so go to the convert label
        b    toUprLoop          // you're one of the few weird chars, go back to upr :)
    toUprEnd:
        ldp x19, x20, [sp], 16  // popping x19 and x20 from stack
        ret lr                  // return to caller
// ******************************************* 
/**
 * endwth.s
 * PARAMETERS: X0 (STRING)
 *             X1 (STRING TO CHECK)
 * OUTPUT    : X0 (BOOLEAN VALUE)
 * This routine checks whether the string in X0 ends with the suffix string in X1.
 * If the suffix is found at the end of the string, it returns true, otherwise it returns false.
 * ALL REGISTERS PRESERVED EXCEPT X0
 */
    endwth:
        // storing X0-X19 registers, as malloc will not preserve most of these
        str X1, [sp, -16]!
        stp X2, X3, [sp, -16]!
        stp X4, X5, [sp, -16]!
        stp X6, X7, [sp, -16]!
        stp X8, X9, [sp, -16]!
        stp X10, X11, [sp, -16]!
        stp X12, X13, [sp, -16]!
        stp X14, X15, [sp, -16]!
        stp X16, X17, [sp, -16]!
        stp X18, X19, [sp, -16]!
        str lr, [sp, -16]!
        
        // finding length of the suffix
        mov x2, #0
    suffixLoop:
        ldrb w3, [x1, x2]
        cmp w3, #0
        b.eq stringEnd
        add x2, x2, #1
        b suffixLoop
    stringEnd:
        mov x3, x0
        add x4, x0, x2

        // finding length of the string
        mov x2, #0
    stringLoop:
        ldrb w3, [x0, x2]
        cmp w3, #0
        b.eq checkSuffix
        add x2, x2, #1
        b stringLoop
    checkSuffix:
        sub x2, x2, x4
        cmp x2, #0
        b.lt efalse
        add x0, x0, x2
        
        // checking if suffix matches
    suffixCheckLoop:
        ldrb w2, [x0], #1
        ldrb w3, [x1], #1
        cmp w2, w3
        b.ne efalse
        cmp w3, #0
        b.ne suffixCheckLoop
        
        etrue:
            mov x0, #1
            b eend
        efalse:
            mov x0, #1
    eend:
        // popping registers back from stack
        ldr lr, [sp], 16
        ldp X18, X19, [sp], 16
        ldp X16, X17, [sp], 16
        ldp X14, X15, [sp], 16
        ldp X12, X13, [sp], 16
        ldp X10, X11, [sp], 16
        ldp X8, X9, [sp], 16
        ldp X6, X7, [sp], 16
        ldp X4, X5, [sp], 16
        ldp X2, X3, [sp], 16
        ldr X1, [sp], 16

        ret lr
// ******************************************* 
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

    .data
szNumbering:    .asciz ". "
szPromptInput1: .asciz "s1 = "
szPromptInput2: .asciz "s2 = "
szPromptInput3: .asciz "s3 = "
szPromptInput4: .asciz "s4 = "
szSw1:          .asciz "hat."
szSw2:          .asciz "Cat"
szFindIndx:     .asciz "eggs"
szLstIndex:     .asciz "egg"
suffix:         .asciz "in the hat."
szLength1:      .asciz "s1.length() = "
szEmpty:        .asciz " "
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
szConcat:       .asciz "String_concat(s1, ' ')\nString_concat(s1, s2) = "
szTrue:         .asciz "TRUE"
szFalse:        .asciz "FALSE"
szAuthors:      .asciz "AUTHORS       - James Johnson, Rafael Szuminski\nLAB           - RASM-3\nDATE MODIFIED - 3/28/2023\n"
szDyn:          .quad 0
sz1:            .skip 64
sz2:            .skip 64
sz3:            .skip 64
sz4:            .skip 64
szTemp:         .skip 4
chCr:           .byte 10
