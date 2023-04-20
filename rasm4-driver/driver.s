    .global _start

    .text

_start:
// Start of a loop that displays a menu to the user and allows them to select an option.
.menuLoop:
    // Load the memory address of a string constant into register x0 and call putstring to display it.
    ldr x0,=szMASM4
    bl putstring
    // Load the memory address of another string constant into register x0 and call putstring to display it.
    ldr x0,=szData1
    bl putstring

    // Call the usage function to display the current usage of the program.
    bl usage

    // Load the memory address of the menu string constant into register x0 and call putstring to display it.
    ldr x0,=szMenu
    bl putstring
    // Call the getMenuInput function to get user input for the menu selection and store the result in x0.
    bl .getMenuInput  
    // Call the inputHandling function to handle the user input.
    bl .inputHandling
    // Compare the result of the input handling to 0, and branch to the .menuLoop label if it's not equal to 0.
    cmp x0, #0
    b.ne .menuLoop

// This label marks the end of the program's execution.
exitA:
    // Load the memory address of the headPtr variable into register x0, load its value into x0, and store the value in currNode.
    ldr x0,=headPtr
    ldr x0,[x0]
    ldr x1,=currNode
    str x0,[x1]

// Start of a loop that frees memory allocated for the linked list.
exitLoop:
    // Compare the value in x0 to 0, and branch to exitEnd if it's equal to 0.
    cmp x0, #0
    b.eq exitEnd
    // Load the value pointed to by x0 into x0, and call the free function to free the memory.
    ldr x0,[x0]
    bl free

    // Load the value pointed to by currNode into x1, add 8 to it to get the next node's address, and load the value pointed to by that address into x1.
    ldr x1,=currNode
    ldr x1,[x1]
    add x1, x1, #8
    ldr x1,[x1]

    // Store the value in x1 into currNode, and set x0 to the value in x1 to prepare for the next iteration of the loop.
    ldr x0,=currNode
    str x1,[x0]
    mov x0, x1
    // Branch back to the start of the exitLoop.
    b exitLoop

// This label marks the end of the program's execution.

exitEnd:
        mov x8, #93
        svc 0

.verifyInput:
        stp lr, x1, [sp, #-16]! // pushing lr and x1
        ldp lr, x1, [sp], #16   // popping lr and x1
        ret lr              // returning
.getMenuInput:
        str lr, [sp, #-16]! // pushing lr
        ldr x0,=bBuffer     // loading 512 buffer
        ldr x2,=bBufferR    // loading x2 with buffer copy
        ldr x2,[x2]         // deref buffer reset
        str x2,[x0]         // storing empty buffer into buffer (x0)
        mov x1, #512        // loading 512 bytes into getstring param
        bl getstring        // calling getstring
        ldr lr, [sp], #16   // popping lr
        ret lr              // returning

.inputHandling:
        str lr, [sp, #-16]!
        mov x0, #1          // setting default return of 1
        ldr x1,=bBuffer
        ldrb w0, [x1, #0]

        // check if exit
        cmp w0, #'7'
        b.eq .input7
        cmp w0, #'6'
        b.eq .input6
        cmp w0, #'5'
        b.eq .input5
        cmp w0, #'4'
        b.eq .input4
        cmp w0, #'3'
        b.eq .input3
        cmp w0, #'2'
        b.eq .input2
        cmp w0, #'1'
        b.eq .input1
        ldr x0,=szInvalid
        bl putstring
        b .exitInput

.input1:
        // view all strings
        bl printNodes
        mov x0, #1
        b .exitInput
.input2:
        // add string
        // 2a == add string from input
        // 2b == add string from file
        ldrb w0, [x1, #1]
        cmp w0, #'a'
        b.eq .addInput
        cmp w0, #'b'
        b.eq .addFile
        ldr x0,=szInvalid
        bl putstring
        mov x0, #1
        b .exitInput

    .addInput:
        // requirement : x1 = head, x2 = tail
        ldr x1,=headPtr
        ldr x2,=tailPtr
        bl addString
        b .exitInput
    .addFile:
        // requirement : x1 = head, x2 = tail
        ldr x1,=headPtr
        ldr x2,=tailPtr
        bl addString
        b .exitInput
.input3:
        // delete string given an index #
        ldr x0,=szDelNode
        bl putstring

        ldr x0,=szIndex
        mov x1, #64
        bl getstring


        ldr x0,=szIndex
        bl ascint64
        mov x8, x0
        mov x9, #2 // telling ll routine to delete node
        ldr x20,=headPtr
        ldr x21,=tailPtr
        bl ll
        mov x0, #1
        b .exitInput
.input4:
        // edit string given an index #.
        ldr x0,=szEditNode
        bl putstring

        ldr x0,=szIndex
        mov x1, #64
        bl getstring

        ldr x0,=szEdit
        bl putstring

        ldr x0,=bBuffer
        mov x1, #1024
        bl getstring

        ldr x0,=szIndex
        bl ascint64

        mov x8, x0
        mov x9, #1 // telling ll routine to edit node
        ldr x19,=bBuffer
        ldr x20,=headPtr
        ldr x21,=tailPtr

        bl ll
        mov x0, #1
        b .exitInput
.input5:
        // string search
        ldr x0,=szFileSearch
        bl putstring

        ldr x0,=szSearchL
        mov x1, #64
        bl getstring

        ldr x0,=szSearchL
        ldr x0,[x0]
        ldr x1,=szSearch
        str x0,[x1]

        ldr x0,=szSearchL
        bl tolwr


        bl searchNodes
        mov x0, #1
        b .exitInput
.input6:
        // save file
        ldr x0,=szFileName
        bl putstring

        ldr x0,=szFile
        mov x1, #64
        bl getstring

        bl saveFile

        mov x0, #1
        b .exitInput
.input7:
        mov x0, #0
.exitInput:
        ldr lr, [sp], #16
        ret lr


// SUBROUTINE:
// SAVES TO A FILE THE CURRENT NODES POINTED TO BY THE HEAD.
saveFile:
        str lr, [sp, #-16]!

        ldr x1,=szFile
        mov x0, #AT_FDCWD
        mov x8, #56
        mov x2, #W
        mov x3, #RW_RW____
        svc 0


        ldr x1,=iFD
        strb w0,[x1]

        cmp w0, #0
        b.le invalidFile

        ldr x0,=headPtr
        ldr x0,[x0]
        ldr x20,=currNode
        str x0,[x20]

        // LOOP PERFORMS WRITING IN FILE REQUESTED BY USER
    writeLoop: 
        cmp x20, #0
        b.eq closeFile

        
        ldr x0,=currNode
        ldr x0,[x0]
        ldr x1,=nextNode
        str x0,[x1]
        ldr x0,[x0, #0]
        bl String_length
        mov x2, x0
        ldr x0,=iFD
        ldrb w0,[x0]

        ldr x1,=nextNode
        ldr x1,[x1]
        ldr x1,[x1, #0]

        mov x8, #64
        svc 0

        ldr x0,=currNode
        ldr x1,=nextNode
        ldr x1,[x1]
        add x1, x1, #8
        cmp x1, #0
        b.eq closeFile
        ldr x1,[x1]
        cmp x1, #0
        b.eq closeFile
        str x1,[x0]

        b writeLoop
    
    // CLOSE THE FILE
closeFile:
        mov x1, #0
        mov x8, #57
        svc 0
        b saveExit
    // INVALID FILE, TELL USER
invalidFile:
        ldr x0,=szInvalid
        bl putstring
        b saveExit
    // return the lr
saveExit:
        ldr lr, [sp], 16
        ret 


    // SUBROUTINE:
    // DELETE NODE AT REQUESTED INDEX
deleteNode:
        ldr x0,=szDelNode
        bl ascint64

        mov x7, x0
    
        str lr, [sp, #-16]!
        stp x0, x19, [sp, #-16]!
        str x20, [sp, #-16]!
        ldr x0,=headPtr
        ldr x0,[x0]
        ldr x1,=currNode
        str x0,[x1]
        mov x20, #-1
            .delLoop:
                cmp x0, #0
                b.eq .invalidDel
                add x20, x20, #1
                cmp x20, x7
                ldr x0,[x0]
                ldr x1,=currNode
                ldr x1,[x1]
                add x1, x1, #8
                ldr x1, [x1]
                ldr x0,=currNode
                str x1, [x0]
                b.ne .delLoop

                
                ldr x0,[x0]
                ldr x1,=currNode
                ldr x1,[x1]
                add x1, x1, #8
                ldr x1,[x1]

                ldr x0,=currNode
                str x1,[x0]

                mov x0, x1
                b .printLoop
                
            .invalidDel:
                ldr x0,=szInvalidDel
                bl putstring
            .exitDelLoop:
                ldr x20, [sp], 16
                ldp x0, x19, [sp], 16
                ldr lr, [sp], 16
                ret

    // find current byte usage
usage:      
            str lr, [sp, #-16]!
            ldr x0,=headPtr
            ldr x0,[x0]
            ldr x1,=currNode
            str x0,[x1]
            mov x20, #0 // num nodes
            mov x21, #0 // bytes

            findBytes:
                cmp x0, #0
                b.eq printBytes
                add x20, x20, #1
                add x21, x21, #16
                ldr x0,=currNode
                ldr x0,[x0]
                ldr x0,[x0, #0]
                bl String_length
                add x21, x0, x21

                ldr x1,=currNode
                ldr x1,[x1]
                add x1, x1, #8
                cmp x1, #0
                b.eq printBytes
                ldr x1,[x1]
                ldr x0,=currNode
                str x1,[x0]
                mov x0, x1
                b findBytes

        printBytes:
                ldr x0,=chCr
                bl putch
                ldr x0,=szUsage1
                bl putstring
                mov x0, x21
                ldr x1,=numBytes
                bl int64asc

                ldr x0,=numBytes
                bl putstring

            
            mov x0, x20
            ldr x1,=numNodes
            bl int64asc

            ldr x0,=szData3
            bl putstring

            ldr x0,=numNodes
            bl putstring

            ldr lr, [sp], 16
            ret lr


searchNodes:
            stp x19, x20, [sp, #-16]!
            stp x21, x22, [sp, #-16]!
            stp x23, x24, [sp, #-16]!
            stp x25, x26, [sp, #-16]!
            stp x27, x28, [sp, #-16]!
            stp x29, x30, [sp, #-16]!

            ldr x0,=headPtr
            ldr x0,[x0]
            ldr x1,=currNode
            str x0,[x1]
            mov x21, #0 // HITS
            mov x19, #0 // LINE NUMBER

        // will just use strcpy to save some time here. feels like a waste of memory but oh well, can just free right after usage. a superior approach would be to have a routine which simply checks for a given substring without regards to case sensitivity.

        findHits:
                cmp x0, #0
                b.eq printHits
                ldr x0,=currNode
                ldr x0,[x0]
                ldr x0,[x0]
                ldr x1,=szSearchL
                bl timesfound
                
                add x21, x21, x0

                
                ldr x1,=currNode
                ldr x1,[x1]
                add x1, x1, #8
                cmp x1, #0
                b.eq printHits
                ldr x1,[x1]
                ldr x0,=currNode
                str x1,[x0]
                mov x0,x1

                b findHits
        printHits:
                mov x0, x21
                ldr x1,=szNum
                bl int64asc

                ldr x0,=szSearch1
                bl putstring

                ldr x0,=chQuote
                bl putch

                ldr x0,=szSearch
                bl putstring

                ldr x0,=chQuote
                bl putch

                ldr x0,=szSearch2
                bl putstring

                ldr x0,=szNum
                bl putstring

                ldr x0,=szSearch3
                bl putstring

                ldr x0,=chCr
                bl putch

        findLines:
            ldr x0,=headPtr
            ldr x0,[x0]
            ldr x1,=currNode
            str x0,[x1]
            mov x21, #0 // HITS
            mov x19, #0 // LINE NUMBER
            linesLoop:
                cmp x0, #0
                b.eq exitSearch
                ldr x0,=currNode
                ldr x0,[x0]
                ldr x0,[x0]
                ldr x1,=szSearchL
                bl timesfound

                cmp x0, #0
                b.gt printLine
            linesLoopCont:
                ldr x1,=currNode
                ldr x1,[x1]
                add x1,x1, #8
                cmp x1, #0
                b.eq exitSearch
                ldr x1,[x1]
                ldr x0,=currNode
                str x1,[x0]
                mov x0,x1
                add x19, x19, #1
                b linesLoop
        
        printLine:
                ldr x0,=szLine
                bl putstring

                mov x0, x19
                ldr x1,=szNum
                bl int64asc

                ldr x0,=szNum
                bl putstring

                ldr x0,=chColon
                bl putch
                
                ldr x0,=chSpace
                bl putch

                ldr x0,=currNode
                ldr x0,[x0]
                ldr x0,[x0]
                bl putstring

                b linesLoopCont
                
        exitSearch:
            ldp x29, x30, [sp], 16
            ldp x27, x28, [sp], 16
            ldp x25, x26, [sp], 16
            ldp x23, x24, [sp], 16
            ldp x21, x22, [sp], 16
            ldp x19, x20, [sp], 16
            ret


// PRINT NODES:
// PARAM @ X0: HEADPTR
printNodes:
        str lr, [sp, #-16]!
        stp x0, x19, [sp, #-16]!
        str x20, [sp, #-16]!
        ldr x0,=headPtr
        ldr x0,[x0]
        ldr x1,=currNode
        str x0,[x1]
        mov x20, #0
            .printLoop:
                cmp x0, #0
                b.eq .exitLoop

                stp x0, x1, [sp, #-16]!
                stp x2, x8, [sp, #-16]!
                ldr x0,=szOpenB
                bl putstring
                ldp x2, x8, [sp], 16
                ldp x0, x1, [sp], 16

                stp x0, x1, [sp, #-16]!
                stp x2, x8, [sp, #-16]!
                mov x0, x20
                ldr x1,=inc
                bl int64asc
                ldr x0,=inc
                bl putstring
                ldp x2, x8, [sp], 16
                ldp x0, x1, [sp], 16

                add x20, x20, #1

                stp x0, x1, [sp, #-16]!
                stp x2, x8, [sp, #-16]!
                ldr x0,=szCloseB
                bl putstring
                ldp x2, x8, [sp], 16
                ldp x0, x1, [sp], 16



                ldr x0,[x0]
                bl putstring

                ldr x1,=currNode
                ldr x1,[x1]
                add x1, x1, #8
                cmp x1, #0
                b.eq .exitLoop
                ldr x1,[x1]

                ldr x0,=currNode
                str x1,[x0]

                mov x0, x1
                b .printLoop
                
            .exitLoop:
                ldr x20, [sp], 16
                ldp x0, x19, [sp], 16
                ldr lr, [sp], 16
                ret

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
        mov x1, #1024  // setting a theoretical max string value, can be adjusted accordingly
        mov x19, x0     // storing a copy of x0 into x19
        bl String_length   // calling length to fulfill malloc's parameter of requested bytes
        add x0, x0, #1
        mov x21, x0     // move length into x21
        sub x21, x21, #1
        bl  malloc      // call malloc
        mov x20, #0     // setting variable to 0 for loop count
strcpyLoop:
        ldrb w17, [x19, x20]    // loading byte of given string into w17
        strb w17, [x0, x20]     // storing w17 into new string 
        add x20, x20, #1        // incrementing
        cmp x20, x21            // comparing x19 to x20
        b.lt strcpyLoop
        cmp w17, 0xa
        b.eq strcpyend
        mov w17, 0xa
        strb w17, [x0, x20]
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
        ret

    .equ R, 00
    .equ W, 01
    .equ RW, 02
    .equ T_RW, 01002
    .equ C_W, 0101

    .equ RW_RW____, 0660
    .equ AT_FDCWD, -100

    .data
iFD:        .byte  0
szFileSearch: .asciz "Search: "
szSearch:   .skip  64
szSearchL:  .skip  64
szSearch1:  .asciz "Search "
chQuote:    .byte  0x22
szSearch2:  .asciz " ("
szSearch3:  .asciz " hits in 1 file of 1 searched)"
szLine:     .asciz "Line "
chColon:    .byte  0x3a
szNum:      .skip 21
szInvalid:  .asciz "\nInvalid input.\n"
szEditNode: .asciz "Enter node index to edit: "
szEdit:     .asciz "Enter string: "
szFileName: .asciz "Enter file name: "
szFile:     .skip 64
szDelNode:  .asciz "Enter node index to delete: "
szInvalidDel: .asciz "Node element is invalid.\n"
szIndex:    .skip  64
szOpenB:    .asciz "["
szCloseB:   .asciz "] "
szInputF:   .quad 0
szOutputF:  .quad 0
szDefInput: .asciz "input.txt"
szDefOut:   .asciz "output.txt"
headPtr:    .quad 0
tailPtr:    .quad 0
currNode:   .quad 0
lastNode:   .quad 0
nextNode:   .quad 0
numNodes:   .skip 21
numBytes:   .skip 21
inc:        .skip  10000
bBuffer:    .skip  1024
bBufferR:   .skip  1024
iLimitNum:  .skip  21
szMASM4:    .asciz "\n       RASM4 TEXT EDITOR"
szUsage1:   .asciz "Data structure Heap Memory Consumption: "
szData1:    .asciz " "
szData2:    .asciz " bytes"
szData3:    .asciz "\n    Number of nodes: "
szMenu:     .asciz "\n<1> View all strings\n\n<2> Add string\n    <a> from Keyboard\n    <b> from File\n\n<3> Delete string. Given an index #, delete the entire string and de-allocate memory (including the node).\n\n<4> Edit string. Given an index #, replace old string w/ new string. Allocate/De-allocate as needed.\n\n<5> String search. Regardless of case, return all strings that match the substring given.\n\n<6> Save File\n\n<7> Quit\n\n>"
szHeader:   .asciz "        MASM4 TEXT EDITOR\n"
szBytes:    .asciz "bytes\n"
szNumNodes: .asciz "    Number of Nodes: "
chCr:       .byte  0xa
chSpace:    .byte 0x20
szInput:    .quad  0

