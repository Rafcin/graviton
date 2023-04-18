.data
app_name: .asciz "Macro"
app_description: .asciz "Macro is a Nano-like app that lets you create, edit, and delete text files."
untitled_string:
	.string	"Untitled"
	.align	3
empty_string:
	.string	""
	.text
	.align	2
/*
  __  __       _       
 |  \/  |     (_)      
 | \  / | __ _ _ _ __  
 | |\/| |/ _` | | '_ \ 
 | |  | | (_| | | | | |
 |_|  |_|\__,_|_|_| |_|
                       
*/
.global	main
.type	main, %function
// main function
main:
    .LFB0:
    .cfi_startproc

    stp x29, x30, [sp, -32]!
    .cfi_def_cfa_offset 32
    .cfi_offset 29, -32
    .cfi_offset 30, -24
    mov x29, sp

    // Initialization
    bl  initscr
    bl  start_color
    mov w2, 4
    mov w1, 7
    mov w0, 1
    bl  init_pair
    adrp    x0, :got:stdscr
    ldr x0, [x0, #:got_lo12:stdscr]
    ldr x0, [x0]
    mov w1, 1
    bl  keypad
    bl  cbreak
    bl  noecho

main_loop:
    adrp    x0, app_description
    add x1, x0, :lo12:app_description
    adrp    x0, app_name
    add x0, x0, :lo12:app_name

    bl  front_page
    str w0, [sp, 28]

    ldr w0, [sp, 28]
    cmp w0, 3
    beq exit

    ldr w0, [sp, 28]
    cmp w0, 3
    bgt main_loop

    ldr w0, [sp, 28]
    cmp w0, 1
    beq create_new_file

    ldr w0, [sp, 28]
    cmp w0, 2
    beq open_existing_file

main_loop_continue:
    b   main_loop

// Create new file
create_new_file:
    adrp    x0, untitled_string
    add x0, x0, :lo12:untitled_string
    bl  text_editor
    b   main_loop_continue

// Open existing file
open_existing_file:
    adrp    x0, empty_string
    add x0, x0, :lo12:empty_string
    bl  text_editor
    b   main_loop_continue

// Exit application
exit:
    bl  endwin
    mov w0, 0

main_cleanup:
    ldp x29, x30, [sp], 32
    .cfi_restore 30
    .cfi_restore 29
    .cfi_def_cfa_offset 0
    ret
    .cfi_endproc

main_end:
    .size   main, .-main
    .section    .rodata
    .align  3