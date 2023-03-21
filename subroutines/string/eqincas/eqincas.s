/**
 * eqincas.s
 */
// This routine will compare two strings with no case sensitivity.
// x1, x2: inputs
// x0    : boolean output

.data
    example: .asciz "Example"

.text
.global eqincas
    eqincas:
        STR X19, [SP, #-16]!
        STP X1, X2, [SP, #-32]!
        B eqinLoop
    lowerCheck:
        ADD W0, W0, #32
        B caseCont
    caseCheck:
        CMP W0, #'a'
        B.LT lowerCheck
        CMP W19, #'{'
        B.GE eqincaseFalse
        ADD W19, W19, #32
        caseCont: 
        CMP W0, W19
        B.NE eqincaseFalse
    eqinLoop:
        LDRB W0,  [X1], #1
        LDRB W19, [X2], #1
        CMP W0, W19
        B.NE caseCheck
        CMP W0, #0
        B.NE eqinLoop
    eqincaseTrue:
        MOV X0, #1
        B eqincaseEnd
    eqincaseFalse:
        MOV X0, #0
    eqincaseEnd:
        LDP X1, X2, [SP], #32
        LDR X19, [SP], #16
        RET
