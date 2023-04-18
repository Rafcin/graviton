    .global _start

    .text

_start:
.menuLoop:
        ldr x0,=szMenu
        bl putstring
        bl .getMenuInput  
        bl .inputHandling
        cmp x0, #0
        b.ne .menuLoop
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
        b .exitInput

    .addInput:
        // requirement : x1 = head, x2 = tail
        ldr x1,=headPtr
        bl addString
        b .exitInput
    .addFile:
        // requirement : x1 = head, x2 = tail
        ldr x1,=headPtr
        bl addString
        b .exitInput
.input3:
        // delete string given an index #
        b .exitInput
.input4:
        // edit string given an index #.
        b .exitInput
.input5:
        // string search
        b .exitInput
.input6:
        // save file
        b .exitInput
.input7:
        mov x0, #0
.exitInput:
        ldr lr, [sp], #16
        ret lr

    .data
szInvalid:  .asciz "\nInvalid input.\n"
szInputF:   .quad 0
szOutputF:  .quad 0
szDefInput: .asciz "input.txt"
szDefOut:   .asciz "output.txt"
headPtr:    .quad 0
sz1:        .asciz "hello"
sz2:        .asciz "there"
bBuffer:    .skip  512
bBufferR:   .skip  512
iLimitNum:  .skip  21
szMenu:     .asciz "\n<1> View all strings\n\n<2> Add string\n    <a> from Keyboard\n    <b> from File. Static file named input.txt\n\n<3> Delete string. Given an index #, delete the entire string and de-allocate memory (including the node).\n\n<4> Edit string. Given an index #, replace old string w/ new string. Allocate/De-allocate as needed.\n\n<5> String search. Regardless of case, return all strings that match the substring given.\n\n<6> Save File (output.txt)\n\n<7> Quit\n\n>"
szHeader:   .asciz "        MASM4 TEXT EDITOR\n    Data Structure Heap Memory Consumption:"
szBytes:    .asciz "bytes\n"
szNumNodes: .asciz "Number of Nodes: "
chCr:       .byte  0xa
szInput:    .quad  0

