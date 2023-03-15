/*
 * Test driver for "concat"
 */
.data
    str1: .asciz "Hello, "
    str2: .asciz "world!"
    out: .asciz "Concatenated string - "
    nl: .asciz "\n"

.text
.global main
    main:
        //Load str 1
        ldr x0, =str1      
        //Load str 2   
        ldr x1, =str2
        //Concatenate 2 strings 
        bl  concat    
        //Str adr   
        str x0, [sp, #-16]!       
        //Print
        bl putstring     
        //Load adr       
        ldr x0, [sp], #16
        //Free
        bl  free
        //Print newline
        ldr	x0,	=nl
        bl	putstring
        
        // Setup the parameters to exit the program and then call Linux to do it.
        mov	x0,	#0	// Sets return code to 0
        mov	x8,	#93	// Service command code 93 terminates
        svc	0	// Call linux to terminate the program