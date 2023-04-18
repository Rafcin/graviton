/*
  ______               _     _____                 
 |  ____|             | |   |  __ \                
 | |__ _ __ ___  _ __ | |_  | |__) |_ _  __ _  ___ 
 |  __| '__/ _ \| '_ \| __| |  ___/ _` |/ _` |/ _ \
 | |  | | | (_) | | | | |_  | |  | (_| | (_| |  __/
 |_|  |_|  \___/|_| |_|\__| |_|   \__,_|\__, |\___|
                                         __/ |     
                                        |___/      
*/
.data
main_menu_controls:
	.string	"1. Create new file    2. Open existing file    3. Quit"
	.text
	.align	2
psfmt:
	.string	"%s"
	.align	3

.global	front_page
.type	front_page, %function
front_page:
front_page_start:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	bl	clear
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	mov	w2, 0
	mov	w1, 0
	bl	box
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	mov	x2, 0
	mov	w1, 2097152
	bl	wattr_on
	adrp	x0, :got:COLS
	ldr	x0, [x0, #:got_lo12:COLS]
	ldr	w0, [x0]
	sxtw	x19, w0
	ldr	x0, [sp, 40]
	bl	strlen
	sub	x0, x19, x0
	lsr	x0, x0, 1
	mov	w1, w0
	ldr	x3, [sp, 40]
	adrp	x0, psfmt
	add	x2, x0, :lo12:psfmt
	mov	w0, 1
	bl	mvprintw
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	mov	x2, 0
	mov	w1, 2097152
	bl	wattr_off
	ldr	x3, [sp, 32]
	adrp	x0, psfmt
	add	x2, x0, :lo12:psfmt
	mov	w1, 0
	mov	w0, 3
	bl	mvprintw
	adrp	x0, :got:LINES
	ldr	x0, [x0, #:got_lo12:LINES]
	ldr	w0, [x0]
	sub	w3, w0, #1
	adrp	x0, main_menu_controls
	add	x2, x0, :lo12:main_menu_controls
	mov	w1, 0
	mov	w0, w3
	bl	mvprintw
	adrp	x0, :got:LINES
	ldr	x0, [x0, #:got_lo12:LINES]
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 0
	bl	move
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	bl	wgetch
	str	w0, [sp, 60]
	b	front_page_key_check_loop
front_page_key_not_valid:
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	bl	wgetch
	str	w0, [sp, 60]
front_page_key_check_loop:
	ldr	w0, [sp, 60]
	cmp	w0, 49
	beq	front_page_key_valid
	ldr	w0, [sp, 60]
	cmp	w0, 50
	beq	front_page_key_valid
	ldr	w0, [sp, 60]
	cmp	w0, 51
	bne	front_page_key_not_valid
front_page_key_valid:
	ldr	w0, [sp, 60]
	sub	w0, w0, #48
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
front_page_end:
	.size	front_page, .-front_page
	.align	2
    