/*
  _____                       ______    _ _ _             
 |  __ \                     |  ____|  | (_) |            
 | |  | |_ __ __ ___      __ | |__   __| |_| |_ ___  _ __ 
 | |  | | '__/ _` \ \ /\ / / |  __| / _` | | __/ _ \| '__|
 | |__| | | | (_| |\ V  V /  | |___| (_| | | || (_) | |   
 |_____/|_|  \__,_| \_/\_/   |______\__,_|_|\__\___/|_|   

*/
.data
file_fmt:
	.string	"File: %s"
	.align	3
out_fmt:
	.string	"%3d %s"
	.align	3
editor_controls:
	.string	"Ctrl-X (Exit) Ctrl-O (Open) Ctrl-S (Save) Ctrl-F (Find) Ctrl-R (Replace) Ctrl-I(Insert)"
	.text
	.align	2

.global	draw_editor
.type	draw_editor, %function
draw_editor:
draw_editor_start:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	w2, [sp, 44]
	str	w3, [sp, 40]
	str	w4, [sp, 36]
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
	ldr	x0, [sp, 56]
	bl	strlen
	sub	x0, x19, x0
	lsr	x0, x0, 1
	mov	w1, w0
	ldr	x3, [sp, 56]
	adrp	x0, file_fmt
	add	x2, x0, :lo12:file_fmt
	mov	w0, 1
	bl	mvprintw
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	mov	x2, 0
	mov	w1, 2097152
	bl	wattr_off
	str	wzr, [sp, 76]
	b	draw_editor_loop_start
draw_editor_check_cursor:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	draw_editor_attron
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	mov	x2, 0
	mov	w1, 262144
	bl	wattr_on
draw_editor_attron:
	ldr	w0, [sp, 76]
	add	w5, w0, 3
	ldr	w0, [sp, 76]
	add	w2, w0, 1
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 10
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	mov	x4, x0
	mov	w3, w2
	adrp	x0, out_fmt
	add	x2, x0, :lo12:out_fmt
	mov	w1, 2
	mov	w0, w5
	bl	mvprintw
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	draw_editor_attroff
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	mov	x2, 0
	mov	w1, 262144
	bl	wattr_off
draw_editor_attroff:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
draw_editor_loop_start:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	draw_editor_check_cursor
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	mov	x2, 0
	mov	w1, 2097152
	bl	wattr_on
	adrp	x0, :got:LINES
	ldr	x0, [x0, #:got_lo12:LINES]
	ldr	w0, [x0]
	sub	w3, w0, #1
	adrp	x0, editor_controls
	add	x2, x0, :lo12:editor_controls
	mov	w1, 0
	mov	w0, w3
	bl	mvprintw
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	mov	x2, 0
	mov	w1, 2097152
	bl	wattr_off
	ldr	w0, [sp, 40]
	add	w2, w0, 3
	ldr	w0, [sp, 36]
	add	w0, w0, 5
	mov	w1, w0
	mov	w0, w2
	bl	move
	bl	refresh
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
draw_editor_end:
	.size	draw_editor, .-draw_editor
	.section	.rodata
	.align	3
