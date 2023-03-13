/**
 * equals.s
 */

// ******************************************
// *        string_equals subroutine        *
// * > This routine takes in two string par-*
// * > -ameters in X1 and X2, and returns a *
// * > boolean comparison (case sensitive)  *
// * > into X0. It preserves all registers  *
// * > except X0.                           *
// ******************************************

.data
    example: .asciz "Example"

.text
.global equals
    equals:
        STR X19, [SP, #-16]!
        STP X1, X2, [SP, #-32]!
    loop:
        LDRB W0,  [X1], #1
        LDRB W19, [X2], #1
        CMP W0, W19
        B.NE false
        CMP W0, #0
        B.NE loop
    true:
        MOV X0, #1
        B end
    false:
        MOV X0, #0
    end:
        LDP X1, X2, [SP], #32
        LDR X19, [SP], #16
        RET
