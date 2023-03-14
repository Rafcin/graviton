/*
 * Test driver for "factorial"
 */

.data
    // Prompt for user input
    prompt: .asciz "Enter an integer "

    // Strings to display before and after the result
    string_prompt_of: .asciz "Factorial of "
    string_prompt_is: .asciz " is "

    // Space to store the user input as a string
    string_n: .skip 8

    // Newline character
    strin_nl: .ascii "\n"

    // Space to store the user input as an integer
    integer_n: .quad 0

    // Space to store the result as a string
    answer: .skip 8

.text
.global main
    main:
        // Prompt the user to enter an integer
        ldr x0,=prompt  
        bl putstring    

        // Read the user input as a string
        ldr x0,=string_n     
        bl getstring    

        // Convert the user input from string to integer
        ldr x0,=string_n     
        bl ascint64     
        ldr x1,=integer_n      
        str x0,[x1]    

        // Print the input value and the prompt string
        ldr x0,=string_prompt_of  
        bl putstring   
        ldr x0,=string_n     
        bl putstring    

        // Print the prompt string for the result
        ldr x0,=string_prompt_is  
        bl putstring    

        // Call the fact function with the input value
        ldr x0,=integer_n      
        ldr x0,[x0]     
        bl fact         

        // Convert the result from integer to string
        ldr x1,=answer  
        bl int64asc     

        // Print the result
        ldr x0,=answer  
        bl putstring    

        // Print a newline character
        ldr x0,=strin_nl    
        bl putch        

        // Exit
        mov x0, 0       // Move 0 to x0 to indicate successful termination
        mov X8, #93     // Set x8 to 93 to indicate the "exit" system call
        svc 0           // Call the "exit" system call to terminate the program
