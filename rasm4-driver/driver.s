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
        bl printNodes
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
        b .exitInput
.input5:
        // string search
        b .exitInput
.input6:
        // save file
        ldr x0,=szFileName
        bl putstring

        ldr x0,=szFile
        mov x1, #64
        bl getstring

        bl saveFile

        b .exitInput
.input7:
        mov x0, #0
.exitInput:
        ldr lr, [sp], #16
        ret lr

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

        ldr x15,=headPtr
        ldr x15,[x15]
        ldr x2,=currNode
        str x15,[x2]
        ldr x2,=currNode

    writeLoop:
        cmp x2, #0
        b.eq closeFile
        mov x1, x0 // file descriptor
        ldr x0,=currNode
        ldr x0,[x0]
        stp x1, x2, [sp, #-16]!
        stp x3, x4, [sp, #-16]!
        bl String_length
        ldp x3, x4, [sp], 16
        ldp x1, x2, [sp], 16
        mov x2, x0
        ldr x0,=iFD
        ldrb w0, [x0]
        ldr x1,=currNode
        ldr x1,[x1]

        ldr x8, #64
        svc 0
        cmp w0, #0
        b.le invalidFile
        //ldr x1,=iFD
        //strb w0,[x1]
        ldr x3,=currNode
        add x2, x2, #8
        cmp x2, #0
        b.eq closeFile
        ldr x2,[x2]
        str x2,[x3]
        ldr x2,=currNode
        b writeLoop


closeFile:
        mov x1, #0
        mov x8, #57
        svc 0
        b saveExit
invalidFile:
        ldr x0,=szInvalid
        bl putstring
        b saveExit
saveExit:
        ldr lr, [sp], 16
        ret 


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

    .equ R, 00
    .equ W, 01
    .equ RW, 02
    .equ T_RW, 01002
    .equ C_W, 0101

    .equ RW_RW____, 0660
    .equ AT_FDCWD, -100

    .data
iFD:        .byte 0
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
sz1:        .asciz "hello"
sz2:        .asciz "there"
inc:        .skip  10000
bBuffer:    .skip  1024
bBufferR:   .skip  1024
iLimitNum:  .skip  21
szMenu:     .asciz "\n<1> View all strings\n\n<2> Add string\n    <a> from Keyboard\n    <b> from File. Static file named input.txt\n\n<3> Delete string. Given an index #, delete the entire string and de-allocate memory (including the node).\n\n<4> Edit string. Given an index #, replace old string w/ new string. Allocate/De-allocate as needed.\n\n<5> String search. Regardless of case, return all strings that match the substring given.\n\n<6> Save File (output.txt)\n\n<7> Quit\n\n>"
szHeader:   .asciz "        MASM4 TEXT EDITOR\n    Data Structure Heap Memory Consumption:"
szBytes:    .asciz "bytes\n"
szNumNodes: .asciz "Number of Nodes: "
chCr:       .byte  0xa
szInput:    .quad  0

