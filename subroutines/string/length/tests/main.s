/*
 * Test driver for "length"
 */
.data
	targ:	.asciz	"This is a string."
	out:	.asciz	"Length is - "
	result:	.skip	21
    nl: .asciz "\n"
.text
.global main
    main:
        //Load and calc string len
        ldr	x0,	=targ
        bl	length
        //Conv to s
        ldr	x1,	=result
        bl	int64asc
        //Print output text
        ldr	x0,	=out
        bl	putstring
        //Print result
        ldr	x0,	=result
        bl	putstring
        //Print newline
        ldr	x0,	=nl
        bl	putstring
        
        // Setup the parameters to exit the program and then call Linux to do it.
        mov	x0,	#0	// Sets return code to 0
        mov	x8,	#93	// Service command code 93 terminates
        svc	0	// Call linux to terminate the program
