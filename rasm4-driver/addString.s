    .equ R, 00
    .equ W, 01
    .equ RW, 02
    .equ T_RW, 01002
    .equ C_W, 0101

    .equ RW_RW____, 0660
    .equ AT_FDCWD, -100
    .data
ptr:         .quad 0
szEnterFile: .asciz "Enter file name: "
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
            ret lr
    fromFile:
            str lr, [sp, -16]
            stp x1, x2, [sp, -16]
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
            b.le exit
            ldr x4,=iFD
            strb w0,[x4]
            
            top1:
                ldr x1,=fileBuf
                bl getline

                cmp x0, #0
                beq last
                
                ldr x0,=fileBuf
                bl putstring
                ldr x0,=ptr
                bl ll

                ldr x0,=iFD
                ldrb w0,[x0]
                
                b top1
            last:
                ldr x0,=iFD
                ldrb w0,[x0]
                mov x8, #57
                svc 0
                //b printNodes
            exit:
                ldp x1, x2, [sp, -16]
                ldr lr, [sp], 16
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
