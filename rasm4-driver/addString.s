    .equ R, 00
    .equ W, 01
    .equ RW, 02
    .equ T_RW, 01002
    .equ C_W, 0101

    .equ RW_RW____, 0660
    .equ AT_FDCWD, -100
    .data
szInvalid:   .asciz "File invalid. Try again.\n"
//ptr:         .quad 0
szEnterFile: .asciz "Enter file name: "
szEnterStr:  .asciz "Enter string: " 
szFileName:  .skip 64
szFile:      .asciz "input.txt"
szEOL:       .asciz "end of line"
fileBuf:     .skip 512
fileBufCpy:  .skip 512
iFD:         .byte 0
    .global addString
    .text

addString:
    cmp w0, #'a'
    b.eq fromText   // goto fromText
    cmp w0, #'b'
    b.eq fromFile   // goto fromFile
    ret lr          // if for some reason the input is incorrect it will return

    fromText:
            str lr, [sp, #-16]!
            stp x1, x2, [sp, #-16]!

            mov x20, x1
            mov x21, x2

            ldr x0,=szEnterStr
            bl putstring
            
            ldr x0,=fileBuf
            mov x1, #1024
            bl getstring

            ldr x19,=fileBuf
            bl ll
            b exit

    fromFile:
            str lr, [sp, #-16]!
            stp x1, x2, [sp, #-16]!

            mov x20, x1
            mov x21, x2

            //ldr x2,=ptr
            //str x2,[x1]
            // printing enter file prompt :
            ldr x0,=szEnterFile
            bl putstring
            // ------

            // getting user input:
            ldr x0,=szFileName  // loading filename str
            mov x1, #64          // 64 bytes max input
            bl getstring        // getting input
            ldr x1,=szFileName
            // ------

            // open the textfile for reading
            mov x0, #AT_FDCWD
            mov x8, #56
            //ldr x1,=szFile
            mov x2, #R
            mov x3, #RW_RW____
            svc 0
            // ------

            cmp w0, #0
            b.le invalidFile
            ldr x4,=iFD
            strb w0,[x4]
            
            top1:
                ldr x1,=fileBuf
                bl getline

                cmp x0, #0
                beq last
                
                //ldr x0,=fileBuf
                //bl putstring
                ldr x19,=fileBuf
                bl ll

                ldr x0,=iFD
                ldrb w0,[x0]
                
                b top1
            last:
                ldr x0,=iFD
                ldrb w0,[x0]
                mov x8, #57
                svc 0
                b exit
            invalidFile:
                ldr x0,=szInvalid
                bl putstring
            exit:
                ldp x1, x2, [sp], 16
                ldr lr, [sp], 16
                mov x0, x21
                ret
            getchar:
                ldr x0,=iFD
                ldrb w0,[x0]
                mov x2, #1
                mov x8, #63
                svc 0
                ret
            getline:
                str x30, [sp, #-16]!
            top:
                bl getchar
                ldrb w2, [x1]
                cmp w2, #0xa
                b.eq EOLINE

                cmp w0, #0x0
                b.eq EOF

                cmp w0, #0x0
                b.lt ERROR

                add x1, x1, #1

                ldr x0,=iFD
                ldrb w0,[x0]
                b top
            EOLINE:
                add x1, x1, #1
                mov w2, #0
                strb w2,[x1]
                //ldr x0,=szEOL
                //bl putstring
                b skip
            EOF:
                mov x19, x0
                mov x0, x19
                b skip
            ERROR:
                mov x19, x0
                mov x0, x19
                b skip
            skip:
                ldr x30, [sp], #16
                ret


// PRINT NODES:
// PARAM @ X0: HEADPTR
printNodes:
        stp x0, x21, [sp, #-16]!
        mov x19, x21
        ldr x19, [x19]
            .printLoop:
                ldr x0, [x19, #0]
                cmp x0, #0
                b.eq .exitLoop

                //ldr x0,[x0]
                bl putstring

                ldr x19, [x19, #8]
                cmp x19, #0
                b.eq .exitLoop
                b .printLoop
            .exitLoop:
                ldp x0, x21, [sp], 16
                b exit

