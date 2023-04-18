	.arch armv8-a
	.file	"main.cpp"
// GNU C++11 (Ubuntu 11.3.0-1ubuntu1~22.04) version 11.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -std=c++11 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB38:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.5179, D.5179
	str	x1, [sp]	// __p, __p
// /usr/include/c++/11/new:175: { return __p; }
	ldr	x0, [sp]	// _2, __p
// /usr/include/c++/11/new:175: { return __p; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.align	2
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, %function
_ZdlPvS_:
.LFB40:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.5187, D.5187
	str	x1, [sp]	// D.5188, D.5188
// /usr/include/c++/11/new:180: inline void operator delete  (void*, void*) _GLIBCXX_USE_NOEXCEPT { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE40:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.rodata
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.text._ZNSt8__detail17_List_node_headerC2Ev,"axG",@progbits,_ZNSt8__detail17_List_node_headerC5Ev,comdat
	.align	2
	.weak	_ZNSt8__detail17_List_node_headerC2Ev
	.type	_ZNSt8__detail17_List_node_headerC2Ev, %function
_ZNSt8__detail17_List_node_headerC2Ev:
.LFB1550:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:110:       { _M_init(); }
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt8__detail17_List_node_header7_M_initEv		//
// /usr/include/c++/11/bits/stl_list.h:110:       { _M_init(); }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1550:
	.size	_ZNSt8__detail17_List_node_headerC2Ev, .-_ZNSt8__detail17_List_node_headerC2Ev
	.weak	_ZNSt8__detail17_List_node_headerC1Ev
	.set	_ZNSt8__detail17_List_node_headerC1Ev,_ZNSt8__detail17_List_node_headerC2Ev
	.section	.text._ZNSt8__detail17_List_node_header7_M_initEv,"axG",@progbits,_ZNSt8__detail17_List_node_header7_M_initEv,comdat
	.align	2
	.weak	_ZNSt8__detail17_List_node_header7_M_initEv
	.type	_ZNSt8__detail17_List_node_header7_M_initEv, %function
_ZNSt8__detail17_List_node_header7_M_initEv:
.LFB1556:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/bits/stl_list.h:151: 	this->_M_next = this->_M_prev = this;
	ldr	x1, [sp, 8]	// _1, this
	ldr	x0, [sp, 8]	// tmp94, this
	str	x1, [x0, 8]	// _1, this_3(D)->D.40775._M_prev
// /usr/include/c++/11/bits/stl_list.h:151: 	this->_M_next = this->_M_prev = this;
	ldr	x0, [sp, 8]	// tmp95, this
	ldr	x1, [x0, 8]	// _2, this_3(D)->D.40775._M_prev
// /usr/include/c++/11/bits/stl_list.h:151: 	this->_M_next = this->_M_prev = this;
	ldr	x0, [sp, 8]	// tmp96, this
	str	x1, [x0]	// _2, this_3(D)->D.40775._M_next
// /usr/include/c++/11/bits/stl_list.h:153: 	this->_M_size = 0;
	ldr	x0, [sp, 8]	// tmp97, this
	str	xzr, [x0, 16]	//, this_3(D)->_M_size
// /usr/include/c++/11/bits/stl_list.h:155:       }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1556:
	.size	_ZNSt8__detail17_List_node_header7_M_initEv, .-_ZNSt8__detail17_List_node_header7_M_initEv
	.section	.rodata
	.align	3
.LC0:
	.string	"Heap Memory Consumption: %zu bytes | Number of Nodes: %zu"
	.text
	.align	2
	.global	_Z19display_memory_infomm
	.type	_Z19display_memory_infomm, %function
_Z19display_memory_infomm:
.LFB2077:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// memory, memory
	str	x1, [sp, 16]	// nodes, nodes
// main.cpp:9:     attron(A_BOLD);
	adrp	x0, :got:stdscr	// tmp95,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp94, tmp95,
	ldr	x0, [x0]	// stdscr.0_1, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_on		//
// main.cpp:10:     mvprintw(1, 0, "Heap Memory Consumption: %zu bytes | Number of Nodes: %zu", memory, nodes);
	ldr	x4, [sp, 16]	//, nodes
	ldr	x3, [sp, 24]	//, memory
	adrp	x0, .LC0	// tmp96,
	add	x2, x0, :lo12:.LC0	//, tmp96,
	mov	w1, 0	//,
	mov	w0, 1	//,
	bl	mvprintw		//
// main.cpp:11:     attroff(A_BOLD);
	adrp	x0, :got:stdscr	// tmp98,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp97, tmp98,
	ldr	x0, [x0]	// stdscr.1_2, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_off		//
// main.cpp:12: }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2077:
	.size	_Z19display_memory_infomm, .-_Z19display_memory_infomm
	.align	2
	.global	_Z9open_filePKcRNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEERmSB_
	.type	_Z9open_filePKcRNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEERmSB_, %function
_Z9open_filePKcRNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEERmSB_:
.LFB2078:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2078
	sub	sp, sp, #640	//,,
	.cfi_def_cfa_offset 640
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -640
	.cfi_offset 30, -632
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -624
	str	x0, [sp, 56]	// filename, filename
	str	x1, [sp, 48]	// lines, lines
	str	x2, [sp, 40]	// memory, memory
	str	x3, [sp, 32]	// nodes, nodes
// main.cpp:14: void open_file(const char *filename, std::list<std::string> &lines, size_t &memory, size_t &nodes) {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp109, tmp110,
	ldr	x1, [x0]	// tmp136,
	str	x1, [sp, 632]	// tmp136, D.57281
	mov	x1, 0	// tmp136
// main.cpp:15:     std::ifstream infile(filename);
	add	x0, sp, 104	// tmp111,,
	mov	w2, 8	//,
	ldr	x1, [sp, 56]	//, filename
.LEHB0:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode		//
.LEHE0:
// main.cpp:16:     if (!infile.is_open()) {
	add	x0, sp, 104	// tmp112,,
.LEHB1:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv		//
.LEHE1:
	and	w0, w0, 255	// _1, tmp113
// main.cpp:16:     if (!infile.is_open()) {
	eor	w0, w0, 1	// tmp114, _1,
	and	w0, w0, 255	// retval.2_24, tmp114
// main.cpp:16:     if (!infile.is_open()) {
	cmp	w0, 0	// retval.2_24,
	beq	.L8		//,
// main.cpp:17:         return;
	mov	w19, 0	// finally_tmp.4_12,
	b	.L9		//
.L8:
// main.cpp:20:     std::string line;
	add	x0, sp, 72	// tmp115,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:21:     while (std::getline(infile, line)) {
	b	.L10		//
.L11:
// main.cpp:22:         lines.push_back(line);
	add	x0, sp, 72	// tmp116,,
	mov	x1, x0	//, tmp116
	ldr	x0, [sp, 48]	//, lines
.LEHB2:
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_		//
// main.cpp:23:         memory += line.size() * sizeof(char) + sizeof(std::string);
	add	x0, sp, 72	// tmp117,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:23:         memory += line.size() * sizeof(char) + sizeof(std::string);
	add	x1, x0, 32	// _38, _2,
// main.cpp:23:         memory += line.size() * sizeof(char) + sizeof(std::string);
	ldr	x0, [sp, 40]	// tmp118, memory
	ldr	x0, [x0]	// _3, *memory_39(D)
	add	x1, x1, x0	// _4, _38, _3
	ldr	x0, [sp, 40]	// tmp119, memory
	str	x1, [x0]	// _4, *memory_39(D)
// main.cpp:24:         nodes++;
	ldr	x0, [sp, 32]	// tmp120, nodes
	ldr	x0, [x0]	// _5, *nodes_41(D)
// main.cpp:24:         nodes++;
	add	x1, x0, 1	// _6, _5,
	ldr	x0, [sp, 32]	// tmp121, nodes
	str	x1, [x0]	// _6, *nodes_41(D)
.L10:
// main.cpp:21:     while (std::getline(infile, line)) {
	add	x1, sp, 72	// tmp122,,
	add	x0, sp, 104	// tmp123,,
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE		//
// main.cpp:21:     while (std::getline(infile, line)) {
	ldr	x1, [x0]	// _7, _28->_vptr.basic_istream
	sub	x1, x1, #24	// _8, _7,
	ldr	x1, [x1]	// _9, MEM[(long int *)_8]
	add	x0, x0, x1	// _11, _27, _10
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv		//
// main.cpp:21:     while (std::getline(infile, line)) {
	and	w0, w0, 255	// _30, tmp124
	cmp	w0, 0	// _30,
	bne	.L11		//,
// main.cpp:26:     infile.close();
	add	x0, sp, 104	// tmp125,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv		//
.LEHE2:
// main.cpp:27: }
	add	x0, sp, 72	// tmp126,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	w19, 1	// finally_tmp.4_12,
.L9:
// main.cpp:27: }
	add	x0, sp, 104	// tmp127,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev		//
	cmp	w19, 1	// finally_tmp.4_12,
	adrp	x0, :got:__stack_chk_guard	// tmp135,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp134, tmp135,
	ldr	x2, [sp, 632]	// tmp137, D.57281
	ldr	x1, [x0]	// tmp138,
	subs	x2, x2, x1	// tmp137, tmp138
	mov	x1, 0	// tmp138
	beq	.L16		//,
	b	.L19		//
.L18:
// main.cpp:27: }
	mov	x19, x0	// tmp130,
	add	x0, sp, 72	// tmp128,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L15		//
.L17:
	mov	x19, x0	// tmp129,
.L15:
	add	x0, sp, 104	// tmp133,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev		//
	mov	x0, x19	// D.57280, tmp129
.LEHB3:
	bl	_Unwind_Resume		//
.LEHE3:
.L19:
	bl	__stack_chk_fail		//
.L16:
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 640	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2078:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2078:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2078-.LLSDACSB2078
.LLSDACSB2078:
	.uleb128 .LEHB0-.LFB2078
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2078
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L17-.LFB2078
	.uleb128 0
	.uleb128 .LEHB2-.LFB2078
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L18-.LFB2078
	.uleb128 0
	.uleb128 .LEHB3-.LFB2078
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2078:
	.text
	.size	_Z9open_filePKcRNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEERmSB_, .-_Z9open_filePKcRNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEERmSB_
	.align	2
	.global	_Z9save_filePKcRKNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE
	.type	_Z9save_filePKcRKNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE, %function
_Z9save_filePKcRKNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE:
.LFB2080:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2080
	sub	sp, sp, #608	//,,
	.cfi_def_cfa_offset 608
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -608
	.cfi_offset 30, -600
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -592
	str	x0, [sp, 40]	// filename, filename
	str	x1, [sp, 32]	// lines, lines
// main.cpp:29: void save_file(const char *filename, const std::list<std::string> &lines) {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp98, tmp99,
	ldr	x1, [x0]	// tmp119,
	str	x1, [sp, 600]	// tmp119, D.57285
	mov	x1, 0	// tmp119
// main.cpp:30:     std::ofstream outfile(filename);
	add	x0, sp, 80	// tmp100,,
	mov	w2, 16	//,
	ldr	x1, [sp, 40]	//, filename
.LEHB4:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode		//
.LEHE4:
// main.cpp:31:     if (!outfile.is_open()) {
	add	x0, sp, 80	// tmp101,,
.LEHB5:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv		//
	and	w0, w0, 255	// _1, tmp102
// main.cpp:31:     if (!outfile.is_open()) {
	eor	w0, w0, 1	// tmp103, _1,
	and	w0, w0, 255	// retval.12_15, tmp103
// main.cpp:31:     if (!outfile.is_open()) {
	cmp	w0, 0	// retval.12_15,
	beq	.L21		//,
// main.cpp:32:         return;
	mov	w19, 0	// finally_tmp.14_3,
	b	.L22		//
.L21:
// main.cpp:35:     for (const auto &line : lines) {
	ldr	x0, [sp, 32]	// tmp104, lines
	str	x0, [sp, 64]	// tmp104, __for_range
	ldr	x0, [sp, 64]	//, __for_range
	bl	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv		//
	str	x0, [sp, 48]	// tmp105, __for_begin
	ldr	x0, [sp, 64]	//, __for_range
	bl	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 56]	// tmp106, __for_end
// main.cpp:35:     for (const auto &line : lines) {
	b	.L23		//
.L24:
// main.cpp:35:     for (const auto &line : lines) {
	add	x0, sp, 48	// tmp107,,
	bl	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	str	x0, [sp, 72]	//, line
// main.cpp:36:         outfile << line << '\n';
	add	x0, sp, 80	// tmp108,,
	ldr	x1, [sp, 72]	//, line
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE		//
	mov	w1, 10	//,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c		//
// main.cpp:35:     for (const auto &line : lines) {
	add	x0, sp, 48	// tmp109,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv		//
.L23:
// main.cpp:35:     for (const auto &line : lines) {
	add	x1, sp, 56	// tmp110,,
	add	x0, sp, 48	// tmp111,,
	bl	_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.13_21, tmp112
	cmp	w0, 0	// retval.13_21,
	bne	.L24		//,
// main.cpp:38:     outfile.close();
	add	x0, sp, 80	// tmp113,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv		//
.LEHE5:
// main.cpp:39: }
	mov	w19, 1	// finally_tmp.14_3,
.L22:
// main.cpp:39: }
	add	x0, sp, 80	// tmp114,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev		//
	cmp	w19, 1	// finally_tmp.14_3,
	adrp	x0, :got:__stack_chk_guard	// tmp118,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp117, tmp118,
	ldr	x2, [sp, 600]	// tmp120, D.57285
	ldr	x1, [x0]	// tmp121,
	subs	x2, x2, x1	// tmp120, tmp121
	mov	x1, 0	// tmp121
	beq	.L28		//,
	b	.L30		//
.L29:
// main.cpp:39: }
	mov	x19, x0	// tmp116,
	add	x0, sp, 80	// tmp115,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev		//
	mov	x0, x19	// D.57284, tmp116
.LEHB6:
	bl	_Unwind_Resume		//
.LEHE6:
.L30:
	bl	__stack_chk_fail		//
.L28:
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 608	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2080:
	.section	.gcc_except_table
.LLSDA2080:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2080-.LLSDACSB2080
.LLSDACSB2080:
	.uleb128 .LEHB4-.LFB2080
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2080
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L29-.LFB2080
	.uleb128 0
	.uleb128 .LEHB6-.LFB2080
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2080:
	.text
	.size	_Z9save_filePKcRKNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE, .-_Z9save_filePKcRKNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE
	.section	.rodata
	.align	3
.LC1:
	.string	"%s"
	.text
	.align	2
	.global	_Z14get_user_inputB5cxx11PKc
	.type	_Z14get_user_inputB5cxx11PKc, %function
_Z14get_user_inputB5cxx11PKc:
.LFB2081:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2081
	stp	x29, x30, [sp, -320]!	//,,,
	.cfi_def_cfa_offset 320
	.cfi_offset 29, -320
	.cfi_offset 30, -312
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -304
	mov	x19, x8	// <retval>,
	str	x0, [sp, 40]	// prompt, prompt
// main.cpp:41: std::string get_user_input(const char *prompt) {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp97, tmp98,
	ldr	x1, [x0]	// tmp114,
	str	x1, [sp, 312]	// tmp114, D.57287
	mov	x1, 0	// tmp114
.LEHB7:
// main.cpp:42:     nocbreak();
	bl	nocbreak		//
// main.cpp:43:     echo();
	bl	echo		//
// main.cpp:44:     curs_set(TRUE);
	mov	w0, 1	//,
	bl	curs_set		//
// main.cpp:47:     mvprintw(LINES - 1, 0, "%s", prompt);
	adrp	x0, :got:LINES	// tmp100,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp99, tmp100,
	ldr	w0, [x0]	// LINES.15_1, LINES
	sub	w4, w0, #1	// _2, LINES.15_1,
	ldr	x3, [sp, 40]	//, prompt
	adrp	x0, .LC1	// tmp101,
	add	x2, x0, :lo12:.LC1	//, tmp101,
	mov	w1, 0	//,
	mov	w0, w4	//, _2
	bl	mvprintw		//
// main.cpp:48:     getstr(input);
	adrp	x0, :got:stdscr	// tmp103,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp102, tmp103,
	ldr	x0, [x0]	// stdscr.16_3, stdscr
	add	x1, sp, 56	// tmp104,,
	mov	w2, -1	//,
	bl	wgetnstr		//
// main.cpp:50:     curs_set(FALSE);
	mov	w0, 0	//,
	bl	curs_set		//
// main.cpp:51:     noecho();
	bl	noecho		//
// main.cpp:52:     cbreak();
	bl	cbreak		//
.LEHE7:
// main.cpp:54:     return std::string(input);
	add	x0, sp, 48	// tmp105,,
	bl	_ZNSaIcEC1Ev		//
	add	x1, sp, 48	// tmp106,,
	add	x0, sp, 56	// tmp107,,
	mov	x2, x1	//, tmp106
	mov	x1, x0	//, tmp107
	mov	x0, x19	//, <retval>
.LEHB8:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE8:
	add	x0, sp, 48	// tmp108,,
	bl	_ZNSaIcED1Ev		//
// main.cpp:55: }
	adrp	x0, :got:__stack_chk_guard	// tmp113,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp112, tmp113,
	ldr	x2, [sp, 312]	// tmp115, D.57287
	ldr	x1, [x0]	// tmp116,
	subs	x2, x2, x1	// tmp115, tmp116
	mov	x1, 0	// tmp116
	beq	.L34		//,
	b	.L36		//
.L35:
// main.cpp:54:     return std::string(input);
	mov	x19, x0	// tmp111,
	add	x0, sp, 48	// tmp110,,
	bl	_ZNSaIcED1Ev		//
	mov	x0, x19	// D.57286, tmp111
.LEHB9:
	bl	_Unwind_Resume		//
.LEHE9:
.L36:
// main.cpp:55: }
	bl	__stack_chk_fail		//
.L34:
	mov	x0, x19	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 320	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2081:
	.section	.gcc_except_table
.LLSDA2081:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2081-.LLSDACSB2081
.LLSDACSB2081:
	.uleb128 .LEHB7-.LFB2081
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB2081
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L35-.LFB2081
	.uleb128 0
	.uleb128 .LEHB9-.LFB2081
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2081:
	.text
	.size	_Z14get_user_inputB5cxx11PKc, .-_Z14get_user_inputB5cxx11PKc
	.align	2
	.global	_Z16highlight_searchmmi
	.type	_Z16highlight_searchmmi, %function
_Z16highlight_searchmmi:
.LFB2082:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -64
	str	x0, [sp, 56]	// found_pos, found_pos
	str	x1, [sp, 48]	// search_length, search_length
	str	w2, [sp, 44]	// y, y
// main.cpp:58:     attron(COLOR_PAIR(1));
	adrp	x0, :got:stdscr	// tmp111,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp110, tmp111,
	ldr	x0, [x0]	// stdscr.24_1, stdscr
	mov	x2, 0	//,
	mov	w1, 256	//,
	bl	wattr_on		//
// main.cpp:59:     for (size_t i = 0; i < search_length; i++) {
	str	xzr, [sp, 72]	//, i
// main.cpp:59:     for (size_t i = 0; i < search_length; i++) {
	b	.L38		//
.L42:
// main.cpp:60:         mvaddch(y, found_pos + i, mvinch(y, found_pos + i) & A_CHARTEXT);
	adrp	x0, :got:stdscr	// tmp113,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp112, tmp113,
	ldr	x0, [x0]	// stdscr.25_2, stdscr
	ldr	x1, [sp, 56]	// tmp114, found_pos
	mov	w2, w1	// _3, tmp114
	ldr	x1, [sp, 72]	// tmp115, i
	add	w1, w2, w1	// _5, _3, _4
	mov	w2, w1	//, _6
	ldr	w1, [sp, 44]	//, y
	bl	wmove		//
	cmn	w0, #1	// _7,
	beq	.L39		//,
// main.cpp:60:         mvaddch(y, found_pos + i, mvinch(y, found_pos + i) & A_CHARTEXT);
	adrp	x0, :got:stdscr	// tmp117,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp116, tmp117,
	ldr	x19, [x0]	// stdscr.26_8, stdscr
	adrp	x0, :got:stdscr	// tmp119,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp118, tmp119,
	ldr	x0, [x0]	// stdscr.28_9, stdscr
	ldr	x1, [sp, 56]	// tmp120, found_pos
	mov	w2, w1	// _10, tmp120
	ldr	x1, [sp, 72]	// tmp121, i
	add	w1, w2, w1	// _12, _10, _11
	mov	w2, w1	//, _13
	ldr	w1, [sp, 44]	//, y
	bl	wmove		//
	cmn	w0, #1	// _14,
	beq	.L40		//,
// main.cpp:60:         mvaddch(y, found_pos + i, mvinch(y, found_pos + i) & A_CHARTEXT);
	adrp	x0, :got:stdscr	// tmp123,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp122, tmp123,
	ldr	x0, [x0]	// stdscr.29_15, stdscr
	bl	winch		//
	and	w0, w0, 255	// iftmp.27_19, _16,
	b	.L41		//
.L40:
// main.cpp:60:         mvaddch(y, found_pos + i, mvinch(y, found_pos + i) & A_CHARTEXT);
	mov	w0, 255	// iftmp.27_19,
.L41:
// main.cpp:60:         mvaddch(y, found_pos + i, mvinch(y, found_pos + i) & A_CHARTEXT);
	mov	w1, w0	//, iftmp.27_19
	mov	x0, x19	//, stdscr.26_8
	bl	waddch		//
.L39:
// main.cpp:59:     for (size_t i = 0; i < search_length; i++) {
	ldr	x0, [sp, 72]	// tmp125, i
	add	x0, x0, 1	// tmp124, tmp125,
	str	x0, [sp, 72]	// tmp124, i
.L38:
// main.cpp:59:     for (size_t i = 0; i < search_length; i++) {
	ldr	x1, [sp, 72]	// tmp126, i
	ldr	x0, [sp, 48]	// tmp127, search_length
	cmp	x1, x0	// tmp126, tmp127
	bcc	.L42		//,
// main.cpp:62:     attroff(COLOR_PAIR(1));
	adrp	x0, :got:stdscr	// tmp129,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp128, tmp129,
	ldr	x0, [x0]	// stdscr.30_17, stdscr
	mov	x2, 0	//,
	mov	w1, 256	//,
	bl	wattr_off		//
// main.cpp:63:     refresh();
	bl	refresh		//
// main.cpp:64: }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2082:
	.size	_Z16highlight_searchmmi, .-_Z16highlight_searchmmi
	.align	2
	.global	_Z11search_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_RiSB_SB_RSt14_List_iteratorIS5_E
	.type	_Z11search_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_RiSB_SB_RSt14_List_iteratorIS5_E, %function
_Z11search_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_RiSB_SB_RSt14_List_iteratorIS5_E:
.LFB2083:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
	str	x0, [sp, 56]	// lines, lines
	str	x1, [sp, 48]	// search_str, search_str
	str	x2, [sp, 40]	// cursor_x, cursor_x
	str	x3, [sp, 32]	// cursor_y, cursor_y
	str	x4, [sp, 24]	// scroll_offset, scroll_offset
	str	x5, [sp, 16]	// current_line, current_line
// main.cpp:66: void search_text(std::list<std::string> &lines, const std::string &search_str, int &cursor_x, int &cursor_y, int &scroll_offset, std::list<std::string>::iterator &current_line) {
	adrp	x0, :got:__stack_chk_guard	// tmp133,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp132, tmp133,
	ldr	x1, [x0]	// tmp180,
	str	x1, [sp, 120]	// tmp180, D.57289
	mov	x1, 0	// tmp180
// main.cpp:67:     if (search_str.empty()) return;
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv		//
	and	w0, w0, 255	// retval.31_52, tmp134
// main.cpp:67:     if (search_str.empty()) return;
	cmp	w0, 0	// retval.31_52,
	bne	.L54		//,
// main.cpp:69:     bool first_instance = true;
	mov	w0, 1	// tmp135,
	strb	w0, [sp, 71]	// tmp135, first_instance
// main.cpp:71:     for (size_t line_idx = 0; auto &line : lines) {
	str	xzr, [sp, 88]	//, line_idx
// main.cpp:71:     for (size_t line_idx = 0; auto &line : lines) {
	ldr	x0, [sp, 56]	// tmp136, lines
	str	x0, [sp, 104]	// tmp136, __for_range
	ldr	x0, [sp, 104]	//, __for_range
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv		//
	str	x0, [sp, 72]	// tmp137, __for_begin
	ldr	x0, [sp, 104]	//, __for_range
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 80]	// tmp138, __for_end
// main.cpp:71:     for (size_t line_idx = 0; auto &line : lines) {
	b	.L46		//
.L52:
// main.cpp:71:     for (size_t line_idx = 0; auto &line : lines) {
	add	x0, sp, 72	// tmp139,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	str	x0, [sp, 112]	//, line
// main.cpp:72:         size_t found_pos = 0;
	str	xzr, [sp, 96]	//, found_pos
// main.cpp:74:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos) {
	b	.L47		//
.L51:
// main.cpp:75:             if (first_instance) {
	ldrb	w0, [sp, 71]	// tmp140, first_instance
	cmp	w0, 0	// tmp140,
	beq	.L48		//,
// main.cpp:77:                 cursor_x = found_pos;
	ldr	x0, [sp, 96]	// tmp141, found_pos
	mov	w1, w0	// _1, tmp141
	ldr	x0, [sp, 40]	// tmp142, cursor_x
	str	w1, [x0]	// _1, *cursor_x_71(D)
// main.cpp:78:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 88]	// tmp143, line_idx
	mov	w1, w0	// _2, tmp143
// main.cpp:78:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 24]	// tmp144, scroll_offset
	ldr	w0, [x0]	// _3, *scroll_offset_73(D)
// main.cpp:78:                 cursor_y = 3 - scroll_offset + line_idx;
	sub	w0, w1, w0	// _5, _2, _4
	add	w0, w0, 3	// _6, _5,
	mov	w1, w0	// _7, _6
// main.cpp:78:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 32]	// tmp145, cursor_y
	str	w1, [x0]	// _7, *cursor_y_74(D)
// main.cpp:79:                 current_line = lines.begin();
	ldr	x0, [sp, 56]	//, lines
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv		//
	mov	x1, x0	// tmp146,
	ldr	x0, [sp, 16]	// tmp147, current_line
	str	x1, [x0]	// tmp146, *current_line_76(D)
// main.cpp:80:                 std::advance(current_line, line_idx);
	ldr	x1, [sp, 88]	//, line_idx
	ldr	x0, [sp, 16]	//, current_line
	bl	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmEvRT_T0_		//
// main.cpp:83:                 if (cursor_y >= LINES - 1) {
	ldr	x0, [sp, 32]	// tmp148, cursor_y
	ldr	w1, [x0]	// _8, *cursor_y_74(D)
// main.cpp:83:                 if (cursor_y >= LINES - 1) {
	adrp	x0, :got:LINES	// tmp150,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp149, tmp150,
	ldr	w0, [x0]	// LINES.32_9, LINES
	sub	w0, w0, #1	// _10, LINES.32_9,
// main.cpp:83:                 if (cursor_y >= LINES - 1) {
	cmp	w1, w0	// _8, _10
	blt	.L49		//,
// main.cpp:84:                     scroll_offset += cursor_y - (LINES - 2);
	ldr	x0, [sp, 24]	// tmp151, scroll_offset
	ldr	w1, [x0]	// _11, *scroll_offset_73(D)
// main.cpp:84:                     scroll_offset += cursor_y - (LINES - 2);
	ldr	x0, [sp, 32]	// tmp152, cursor_y
	ldr	w2, [x0]	// _12, *cursor_y_74(D)
// main.cpp:84:                     scroll_offset += cursor_y - (LINES - 2);
	adrp	x0, :got:LINES	// tmp154,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp153, tmp154,
	ldr	w0, [x0]	// LINES.33_13, LINES
	sub	w0, w0, #2	// _14, LINES.33_13,
// main.cpp:84:                     scroll_offset += cursor_y - (LINES - 2);
	sub	w0, w2, w0	// _15, _12, _14
// main.cpp:84:                     scroll_offset += cursor_y - (LINES - 2);
	add	w1, w1, w0	// _16, _11, _15
	ldr	x0, [sp, 24]	// tmp155, scroll_offset
	str	w1, [x0]	// _16, *scroll_offset_73(D)
// main.cpp:85:                     cursor_y = LINES - 2;
	adrp	x0, :got:LINES	// tmp157,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp156, tmp157,
	ldr	w0, [x0]	// LINES.34_17, LINES
	sub	w1, w0, #2	// _18, LINES.34_17,
// main.cpp:85:                     cursor_y = LINES - 2;
	ldr	x0, [sp, 32]	// tmp158, cursor_y
	str	w1, [x0]	// _18, *cursor_y_74(D)
.L49:
// main.cpp:88:                 first_instance = false;
	strb	wzr, [sp, 71]	//, first_instance
.L48:
// main.cpp:92:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1) {
	ldr	x0, [sp, 24]	// tmp159, scroll_offset
	ldr	w0, [x0]	// _19, *scroll_offset_73(D)
	sxtw	x0, w0	// _20, _19
// main.cpp:92:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1) {
	ldr	x1, [sp, 88]	// tmp160, line_idx
	sub	x0, x1, x0	// _21, tmp160, _20
	add	x0, x0, 3	// _22, _21,
// main.cpp:92:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1) {
	cmp	x0, 2	// _22,
	bls	.L50		//,
// main.cpp:92:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1) {
	ldr	x0, [sp, 24]	// tmp161, scroll_offset
	ldr	w0, [x0]	// _23, *scroll_offset_73(D)
	sxtw	x0, w0	// _24, _23
// main.cpp:92:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1) {
	ldr	x1, [sp, 88]	// tmp162, line_idx
	sub	x0, x1, x0	// _25, tmp162, _24
	add	x1, x0, 3	// _26, _25,
// main.cpp:92:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1) {
	adrp	x0, :got:LINES	// tmp164,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp163, tmp164,
	ldr	w0, [x0]	// LINES.35_27, LINES
	sub	w0, w0, #1	// _28, LINES.35_27,
	sxtw	x0, w0	// _29, _28
// main.cpp:92:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1) {
	cmp	x1, x0	// _26, _29
	bcs	.L50		//,
// main.cpp:93:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	mov	x1, x0	// _30,
// main.cpp:93:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	ldr	x0, [sp, 88]	// tmp165, line_idx
	mov	w2, w0	// _31, tmp165
// main.cpp:93:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	ldr	x0, [sp, 24]	// tmp166, scroll_offset
	ldr	w0, [x0]	// _32, *scroll_offset_73(D)
// main.cpp:93:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	sub	w0, w2, w0	// _34, _31, _33
	add	w0, w0, 3	// _35, _34,
// main.cpp:93:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	mov	w2, w0	//, _36
	ldr	x0, [sp, 96]	//, found_pos
	bl	_Z16highlight_searchmmi		//
.L50:
// main.cpp:96:             found_pos += search_str.length();
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	mov	x1, x0	// _85,
// main.cpp:96:             found_pos += search_str.length();
	ldr	x0, [sp, 96]	// tmp168, found_pos
	add	x0, x0, x1	// tmp167, tmp168, _85
	str	x0, [sp, 96]	// tmp167, found_pos
.L47:
// main.cpp:74:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos) {
	ldr	x2, [sp, 96]	//, found_pos
	ldr	x1, [sp, 48]	//, search_str
	ldr	x0, [sp, 112]	//, line
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m		//
	str	x0, [sp, 96]	//, found_pos
// main.cpp:74:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos) {
	ldr	x0, [sp, 96]	// tmp170, found_pos
	cmn	x0, #1	// tmp170,
	cset	w0, ne	// tmp171,
	and	w0, w0, 255	// retval.36_68, tmp169
	cmp	w0, 0	// retval.36_68,
	bne	.L51		//,
// main.cpp:99:         ++line_idx;
	ldr	x0, [sp, 88]	// tmp173, line_idx
	add	x0, x0, 1	// tmp172, tmp173,
	str	x0, [sp, 88]	// tmp172, line_idx
// main.cpp:71:     for (size_t line_idx = 0; auto &line : lines) {
	add	x0, sp, 72	// tmp174,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv		//
.L46:
// main.cpp:71:     for (size_t line_idx = 0; auto &line : lines) {
	add	x1, sp, 80	// tmp175,,
	add	x0, sp, 72	// tmp176,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.37_60, tmp177
	cmp	w0, 0	// retval.37_60,
	bne	.L52		//,
	b	.L43		//
.L54:
// main.cpp:67:     if (search_str.empty()) return;
	nop	
.L43:
// main.cpp:101: }
	adrp	x0, :got:__stack_chk_guard	// tmp179,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp178, tmp179,
	ldr	x2, [sp, 120]	// tmp181, D.57289
	ldr	x1, [x0]	// tmp182,
	subs	x2, x2, x1	// tmp181, tmp182
	mov	x1, 0	// tmp182
	beq	.L53		//,
	bl	__stack_chk_fail		//
.L53:
	ldp	x29, x30, [sp], 128	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2083:
	.size	_Z11search_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_RiSB_SB_RSt14_List_iteratorIS5_E, .-_Z11search_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_RiSB_SB_RSt14_List_iteratorIS5_E
	.align	2
	.global	_Z12replace_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_SA_
	.type	_Z12replace_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_SA_, %function
_Z12replace_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_SA_:
.LFB2084:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 40]	// lines, lines
	str	x1, [sp, 32]	// search_str, search_str
	str	x2, [sp, 24]	// replace_str, replace_str
// main.cpp:103: void replace_text(std::list<std::string> &lines, const std::string &search_str, const std::string &replace_str) {
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp109,
	str	x1, [sp, 88]	// tmp109, D.57290
	mov	x1, 0	// tmp109
// main.cpp:104:     if (search_str.empty()) return;
	ldr	x0, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv		//
	and	w0, w0, 255	// retval.42_8, tmp97
// main.cpp:104:     if (search_str.empty()) return;
	cmp	w0, 0	// retval.42_8,
	bne	.L63		//,
// main.cpp:106:     for (auto &line : lines) {
	ldr	x0, [sp, 40]	// tmp98, lines
	str	x0, [sp, 64]	// tmp98, __for_range
	ldr	x0, [sp, 64]	//, __for_range
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv		//
	str	x0, [sp, 48]	// tmp99, __for_begin
	ldr	x0, [sp, 64]	//, __for_range
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 56]	// tmp100, __for_end
// main.cpp:106:     for (auto &line : lines) {
	b	.L58		//
.L61:
// main.cpp:106:     for (auto &line : lines) {
	add	x0, sp, 48	// tmp101,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	str	x0, [sp, 72]	//, line
// main.cpp:107:         size_t found_pos = line.find(search_str);
	mov	x2, 0	//,
	ldr	x1, [sp, 32]	//, search_str
	ldr	x0, [sp, 72]	//, line
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m		//
	str	x0, [sp, 80]	//, found_pos
// main.cpp:109:         if (found_pos != std::string::npos) {
	ldr	x0, [sp, 80]	// tmp102, found_pos
	cmn	x0, #1	// tmp102,
	beq	.L59		//,
// main.cpp:110:             line.replace(found_pos, search_str.length(), replace_str);
	ldr	x0, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	ldr	x3, [sp, 24]	//, replace_str
	mov	x2, x0	//, _1
	ldr	x1, [sp, 80]	//, found_pos
	ldr	x0, [sp, 72]	//, line
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_		//
// main.cpp:111:             break;
	b	.L55		//
.L59:
// main.cpp:106:     for (auto &line : lines) {
	add	x0, sp, 48	// tmp103,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv		//
.L58:
// main.cpp:106:     for (auto &line : lines) {
	add	x1, sp, 56	// tmp104,,
	add	x0, sp, 48	// tmp105,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.43_14, tmp106
	cmp	w0, 0	// retval.43_14,
	bne	.L61		//,
	b	.L55		//
.L63:
// main.cpp:104:     if (search_str.empty()) return;
	nop	
.L55:
// main.cpp:114: }
	adrp	x0, :got:__stack_chk_guard	// tmp108,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp107, tmp108,
	ldr	x2, [sp, 88]	// tmp110, D.57290
	ldr	x1, [x0]	// tmp111,
	subs	x2, x2, x1	// tmp110, tmp111
	mov	x1, 0	// tmp111
	beq	.L62		//,
	bl	__stack_chk_fail		//
.L62:
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2084:
	.size	_Z12replace_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_SA_, .-_Z12replace_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_SA_
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev:
.LFB2090:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:374:       struct _List_impl
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2090:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD1Ev
	.set	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD1Ev,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB2092:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:460:       _List_base() = default;
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC1Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2092:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB2094:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:673:       list() = default;
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2094:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB2097:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:827:       ~list() = default;
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2097:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.rodata
	.align	3
.LC2:
	.string	""
	.align	3
.LC3:
	.string	"Macro"
	.align	3
.LC4:
	.string	"^X:Exit  ^O:Save  ^W:Search  ^/:Replace"
	.align	3
.LC5:
	.string	"Search: "
	.align	3
.LC6:
	.string	"Search for: "
	.align	3
.LC7:
	.string	"Replace with: "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2085:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2085
	stp	x29, x30, [sp, -368]!	//,,,
	.cfi_def_cfa_offset 368
	.cfi_offset 29, -368
	.cfi_offset 30, -360
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -352
	str	w0, [sp, 44]	// argc, argc
	str	x1, [sp, 32]	// argv, argv
// main.cpp:116: int main(int argc, char *argv[]) {
	adrp	x0, :got:__stack_chk_guard	// tmp251,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp250, tmp251,
	ldr	x1, [x0]	// tmp465,
	str	x1, [sp, 360]	// tmp465, D.57293
	mov	x1, 0	// tmp465
.LEHB10:
// main.cpp:117:     initscr();
	bl	initscr		//
// main.cpp:118:     raw();
	bl	raw		//
// main.cpp:119:     keypad(stdscr, TRUE);
	adrp	x0, :got:stdscr	// tmp253,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp252, tmp253,
	ldr	x0, [x0]	// stdscr.44_1, stdscr
	mov	w1, 1	//,
	bl	keypad		//
// main.cpp:120:     noecho();
	bl	noecho		//
.LEHE10:
// main.cpp:122:     size_t memory = 0;
	str	xzr, [sp, 72]	//, memory
// main.cpp:123:     size_t nodes = 0;
	str	xzr, [sp, 80]	//, nodes
// main.cpp:126:     int cursor_x = 0;
	str	wzr, [sp, 48]	//, cursor_x
// main.cpp:127:     int cursor_y = 3;
	mov	w0, 3	// tmp254,
	str	w0, [sp, 52]	// tmp254, cursor_y
// main.cpp:129:     int scroll_offset = 0;
	str	wzr, [sp, 56]	//, scroll_offset
// main.cpp:131:     std::list<std::string> lines;
	add	x0, sp, 144	// tmp255,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev		//
// main.cpp:132:     std::string filename;
	add	x0, sp, 168	// tmp256,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:134:     if (argc > 1) {
	ldr	w0, [sp, 44]	// tmp257, argc
	cmp	w0, 1	// tmp257,
	ble	.L69		//,
// main.cpp:135:         filename = argv[1];
	ldr	x0, [sp, 32]	// tmp258, argv
	add	x0, x0, 8	// _2, tmp258,
	ldr	x1, [x0]	// _3, *_2
	add	x0, sp, 168	// tmp259,,
.LEHB11:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc		//
// main.cpp:136:         open_file(filename.c_str(), lines, memory, nodes);
	add	x0, sp, 168	// tmp260,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x4, x0	// _4,
	add	x2, sp, 80	// tmp261,,
	add	x1, sp, 72	// tmp262,,
	add	x0, sp, 144	// tmp263,,
	mov	x3, x2	//, tmp261
	mov	x2, x1	//, tmp262
	mov	x1, x0	//, tmp263
	mov	x0, x4	//, _4
	bl	_Z9open_filePKcRNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEERmSB_		//
.LEHE11:
.L69:
// main.cpp:139:     if (lines.empty()) {
	add	x0, sp, 144	// tmp264,,
	bl	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv		//
	and	w0, w0, 255	// retval.45_183, tmp265
// main.cpp:139:     if (lines.empty()) {
	cmp	w0, 0	// retval.45_183,
	beq	.L70		//,
// main.cpp:140:         lines.push_back("");
	add	x0, sp, 120	// tmp266,,
	bl	_ZNSaIcEC1Ev		//
	add	x0, sp, 120	// tmp267,,
	add	x3, sp, 328	// tmp268,,
	mov	x2, x0	//, tmp267
	adrp	x0, .LC2	// tmp269,
	add	x1, x0, :lo12:.LC2	//, tmp269,
	mov	x0, x3	//, tmp268
.LEHB12:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE12:
// main.cpp:140:         lines.push_back("");
	add	x1, sp, 328	// tmp270,,
	add	x0, sp, 144	// tmp271,,
.LEHB13:
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_		//
.LEHE13:
// main.cpp:140:         lines.push_back("");
	add	x0, sp, 328	// tmp272,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 120	// tmp273,,
	bl	_ZNSaIcED1Ev		//
// main.cpp:141:         nodes++;
	ldr	x0, [sp, 80]	// nodes.46_5, nodes
	add	x0, x0, 1	// _6, nodes.46_5,
	str	x0, [sp, 80]	// _6, nodes
.L70:
// main.cpp:144:     std::list<std::string>::iterator current_line = lines.begin();
	add	x0, sp, 144	// tmp274,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv		//
	str	x0, [sp, 88]	// tmp275, current_line
// main.cpp:145:     std::string search_str;
	add	x0, sp, 200	// tmp276,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:146:     std::string replace_str;
	add	x0, sp, 232	// tmp277,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
.LEHB14:
// main.cpp:148:     if (has_colors()) {
	bl	has_colors		//
	and	w0, w0, 255	// _200, tmp278
// main.cpp:148:     if (has_colors()) {
	cmp	w0, 0	// _200,
	beq	.L103		//,
// main.cpp:149:         start_color();
	bl	start_color		//
// main.cpp:150:         init_pair(1, COLOR_YELLOW, COLOR_BLACK);
	mov	w2, 0	//,
	mov	w1, 3	//,
	mov	w0, 1	//,
	bl	init_pair		//
.L103:
// main.cpp:154:         clear();
	bl	clear		//
// main.cpp:157:         attron(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp280,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp279, tmp280,
	ldr	x0, [x0]	// stdscr.48_7, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_on		//
// main.cpp:158:         mvprintw(0, 0, "Macro");
	adrp	x0, .LC3	// tmp281,
	add	x2, x0, :lo12:.LC3	//, tmp281,
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	mvprintw		//
// main.cpp:159:         attroff(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp283,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp282, tmp283,
	ldr	x0, [x0]	// stdscr.49_8, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_off		//
// main.cpp:162:         display_memory_info(memory, nodes);
	ldr	x0, [sp, 72]	// memory.50_9, memory
	ldr	x1, [sp, 80]	// nodes.51_10, nodes
	bl	_Z19display_memory_infomm		//
// main.cpp:165:         int y = 3;
	mov	w0, 3	// tmp284,
	str	w0, [sp, 60]	// tmp284, y
// main.cpp:166:         int line_count = 0;
	str	wzr, [sp, 64]	//, line_count
// main.cpp:167:         for (const auto &line : lines) {
	add	x0, sp, 144	// tmp285,,
	str	x0, [sp, 128]	// tmp285, __for_range
	ldr	x0, [sp, 128]	//, __for_range
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv		//
	str	x0, [sp, 112]	// tmp286, MEM[(struct _List_iterator *)_407]
	ldr	x0, [sp, 128]	//, __for_range
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 120]	// tmp287, MEM[(struct _List_iterator *)_406]
// main.cpp:167:         for (const auto &line : lines) {
	b	.L72		//
.L74:
// main.cpp:167:         for (const auto &line : lines) {
	add	x0, sp, 112	// tmp288,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	str	x0, [sp, 136]	//, line
// main.cpp:168:             if (line_count >= scroll_offset && y < LINES - 1) {
	ldr	w0, [sp, 56]	// scroll_offset.52_11, scroll_offset
// main.cpp:168:             if (line_count >= scroll_offset && y < LINES - 1) {
	ldr	w1, [sp, 64]	// tmp289, line_count
	cmp	w1, w0	// tmp289, scroll_offset.52_11
	blt	.L73		//,
// main.cpp:168:             if (line_count >= scroll_offset && y < LINES - 1) {
	adrp	x0, :got:LINES	// tmp291,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp290, tmp291,
	ldr	w0, [x0]	// LINES.53_12, LINES
	sub	w0, w0, #1	// _13, LINES.53_12,
// main.cpp:168:             if (line_count >= scroll_offset && y < LINES - 1) {
	ldr	w1, [sp, 60]	// tmp292, y
	cmp	w1, w0	// tmp292, _13
	bge	.L73		//,
// main.cpp:169:                 mvprintw(y++, 0, "%s", line.c_str());
	ldr	w19, [sp, 60]	// y.54_14, y
	add	w0, w19, 1	// tmp293, y.54_14,
	str	w0, [sp, 60]	// tmp293, y
	ldr	x0, [sp, 136]	//, line
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x3, x0	//, _15
	adrp	x0, .LC1	// tmp294,
	add	x2, x0, :lo12:.LC1	//, tmp294,
	mov	w1, 0	//,
	mov	w0, w19	//, y.54_14
	bl	mvprintw		//
.L73:
// main.cpp:171:             line_count++;
	ldr	w0, [sp, 64]	// tmp296, line_count
	add	w0, w0, 1	// tmp295, tmp296,
	str	w0, [sp, 64]	// tmp295, line_count
// main.cpp:167:         for (const auto &line : lines) {
	add	x0, sp, 112	// tmp297,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv		//
.L72:
// main.cpp:167:         for (const auto &line : lines) {
	add	x1, sp, 120	// tmp298,,
	add	x0, sp, 112	// tmp299,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.55_215, tmp300
	cmp	w0, 0	// retval.55_215,
	bne	.L74		//,
// main.cpp:174:         search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
	add	x5, sp, 88	// tmp301,,
	add	x4, sp, 56	// tmp302,,
	add	x3, sp, 52	// tmp303,,
	add	x2, sp, 48	// tmp304,,
	add	x1, sp, 200	// tmp305,,
	add	x0, sp, 144	// tmp306,,
	bl	_Z11search_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_RiSB_SB_RSt14_List_iteratorIS5_E		//
// main.cpp:176:         attron(A_BOLD);
	adrp	x0, :got:stdscr	// tmp308,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp307, tmp308,
	ldr	x0, [x0]	// stdscr.56_16, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_on		//
// main.cpp:178:         mvprintw(LINES - 1, 0, "^X:Exit  ^O:Save  ^W:Search  ^/:Replace");
	adrp	x0, :got:LINES	// tmp310,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp309, tmp310,
	ldr	w0, [x0]	// LINES.57_17, LINES
	sub	w3, w0, #1	// _18, LINES.57_17,
	adrp	x0, .LC4	// tmp311,
	add	x2, x0, :lo12:.LC4	//, tmp311,
	mov	w1, 0	//,
	mov	w0, w3	//, _18
	bl	mvprintw		//
// main.cpp:179:         attroff(A_BOLD);
	adrp	x0, :got:stdscr	// tmp313,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp312, tmp313,
	ldr	x0, [x0]	// stdscr.58_19, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_off		//
// main.cpp:181:         move(cursor_y, cursor_x);
	ldr	w0, [sp, 52]	// cursor_y.59_20, cursor_y
	ldr	w1, [sp, 48]	// cursor_x.60_21, cursor_x
	bl	move		//
// main.cpp:183:         ch = getch();
	adrp	x0, :got:stdscr	// tmp315,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp314, tmp315,
	ldr	x0, [x0]	// stdscr.61_22, stdscr
	bl	wgetch		//
	str	w0, [sp, 68]	// _224, ch
// main.cpp:185:         switch (ch) {
	ldr	w0, [sp, 68]	// tmp316, ch
	cmp	w0, 330	// tmp316,
	beq	.L75		//,
	ldr	w0, [sp, 68]	// tmp317, ch
	cmp	w0, 330	// tmp317,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp318, ch
	cmp	w0, 263	// tmp318,
	beq	.L77		//,
	ldr	w0, [sp, 68]	// tmp319, ch
	cmp	w0, 263	// tmp319,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp320, ch
	cmp	w0, 261	// tmp320,
	beq	.L78		//,
	ldr	w0, [sp, 68]	// tmp321, ch
	cmp	w0, 261	// tmp321,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp322, ch
	cmp	w0, 260	// tmp322,
	beq	.L79		//,
	ldr	w0, [sp, 68]	// tmp323, ch
	cmp	w0, 260	// tmp323,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp324, ch
	cmp	w0, 259	// tmp324,
	beq	.L80		//,
	ldr	w0, [sp, 68]	// tmp325, ch
	cmp	w0, 259	// tmp325,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp326, ch
	cmp	w0, 258	// tmp326,
	beq	.L81		//,
	ldr	w0, [sp, 68]	// tmp327, ch
	cmp	w0, 258	// tmp327,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp328, ch
	cmp	w0, 28	// tmp328,
	beq	.L82		//,
	ldr	w0, [sp, 68]	// tmp329, ch
	cmp	w0, 28	// tmp329,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp330, ch
	cmp	w0, 24	// tmp330,
	beq	.L83		//,
	ldr	w0, [sp, 68]	// tmp331, ch
	cmp	w0, 24	// tmp331,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp332, ch
	cmp	w0, 23	// tmp332,
	beq	.L84		//,
	ldr	w0, [sp, 68]	// tmp333, ch
	cmp	w0, 23	// tmp333,
	bgt	.L76		//,
	ldr	w0, [sp, 68]	// tmp334, ch
	cmp	w0, 10	// tmp334,
	beq	.L85		//,
	ldr	w0, [sp, 68]	// tmp335, ch
	cmp	w0, 15	// tmp335,
	beq	.L86		//,
	b	.L76		//
.L84:
// main.cpp:188:             search_str = get_user_input("Search: ");
	add	x0, sp, 264	// tmp336,,
	mov	x8, x0	//, tmp336
	adrp	x0, .LC5	// tmp337,
	add	x0, x0, :lo12:.LC5	//, tmp337,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:188:             search_str = get_user_input("Search: ");
	add	x1, sp, 264	// tmp338,,
	add	x0, sp, 200	// tmp339,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:188:             search_str = get_user_input("Search: ");
	add	x0, sp, 264	// tmp340,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:189:             search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
	add	x5, sp, 88	// tmp341,,
	add	x4, sp, 56	// tmp342,,
	add	x3, sp, 52	// tmp343,,
	add	x2, sp, 48	// tmp344,,
	add	x1, sp, 200	// tmp345,,
	add	x0, sp, 144	// tmp346,,
	bl	_Z11search_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_RiSB_SB_RSt14_List_iteratorIS5_E		//
// main.cpp:190:             move(cursor_y, cursor_x);
	ldr	w0, [sp, 52]	// cursor_y.62_23, cursor_y
	ldr	w1, [sp, 48]	// cursor_x.63_24, cursor_x
	bl	move		//
// main.cpp:191:             break;
	b	.L87		//
.L82:
// main.cpp:193:             search_str = get_user_input("Search for: ");
	add	x0, sp, 296	// tmp347,,
	mov	x8, x0	//, tmp347
	adrp	x0, .LC6	// tmp348,
	add	x0, x0, :lo12:.LC6	//, tmp348,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:193:             search_str = get_user_input("Search for: ");
	add	x1, sp, 296	// tmp349,,
	add	x0, sp, 200	// tmp350,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:193:             search_str = get_user_input("Search for: ");
	add	x0, sp, 296	// tmp351,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:194:             replace_str = get_user_input("Replace with: ");
	add	x0, sp, 328	// tmp352,,
	mov	x8, x0	//, tmp352
	adrp	x0, .LC7	// tmp353,
	add	x0, x0, :lo12:.LC7	//, tmp353,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:194:             replace_str = get_user_input("Replace with: ");
	add	x1, sp, 328	// tmp354,,
	add	x0, sp, 232	// tmp355,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:194:             replace_str = get_user_input("Replace with: ");
	add	x0, sp, 328	// tmp356,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:195:             replace_text(lines, search_str, replace_str);
	add	x2, sp, 232	// tmp357,,
	add	x1, sp, 200	// tmp358,,
	add	x0, sp, 144	// tmp359,,
	bl	_Z12replace_textRNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEERKS5_SA_		//
// main.cpp:196:             break;
	b	.L87		//
.L83:
// main.cpp:198:             endwin();
	bl	endwin		//
// main.cpp:199:             return 0;
	mov	w19, 0	// _334,
// main.cpp:304: }
	add	x0, sp, 232	// tmp360,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 200	// tmp361,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 168	// tmp362,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 144	// tmp363,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev		//
	mov	w1, w19	// <retval>, _334
	adrp	x0, :got:__stack_chk_guard	// tmp464,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp463, tmp464,
	ldr	x3, [sp, 360]	// tmp466, D.57293
	ldr	x2, [x0]	// tmp467,
	subs	x3, x3, x2	// tmp466, tmp467
	mov	x2, 0	// tmp467
	beq	.L109		//,
	b	.L115		//
.L86:
// main.cpp:201:             save_file(filename.c_str(), lines);
	add	x0, sp, 168	// tmp364,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x2, x0	// _25,
	add	x0, sp, 144	// tmp365,,
	mov	x1, x0	//, tmp365
	mov	x0, x2	//, _25
	bl	_Z9save_filePKcRKNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE		//
// main.cpp:202:             break;
	b	.L87		//
.L75:
// main.cpp:204:             if (cursor_x < static_cast<int>((*current_line).size())) {
	add	x0, sp, 88	// tmp366,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:204:             if (cursor_x < static_cast<int>((*current_line).size())) {
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:204:             if (cursor_x < static_cast<int>((*current_line).size())) {
	mov	w1, w0	// _28, _27
	ldr	w0, [sp, 48]	// cursor_x.65_29, cursor_x
	cmp	w1, w0	// _28, cursor_x.65_29
	cset	w0, gt	// tmp368,
	and	w0, w0, 255	// retval.64_228, tmp367
// main.cpp:204:             if (cursor_x < static_cast<int>((*current_line).size())) {
	cmp	w0, 0	// retval.64_228,
	beq	.L89		//,
// main.cpp:205:                 memory -= sizeof(char);
	ldr	x0, [sp, 72]	// memory.66_30, memory
	sub	x0, x0, #1	// _31, memory.66_30,
	str	x0, [sp, 72]	// _31, memory
// main.cpp:206:                 (*current_line).erase(cursor_x, 1);
	add	x0, sp, 88	// tmp369,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x3, x0	// _32,
// main.cpp:206:                 (*current_line).erase(cursor_x, 1);
	ldr	w0, [sp, 48]	// cursor_x.67_33, cursor_x
	sxtw	x0, w0	// _34, cursor_x.67_33
	mov	x2, 1	//,
	mov	x1, x0	//, _34
	mov	x0, x3	//, _32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:216:             break;
	b	.L116		//
.L89:
// main.cpp:207:             } else if (std::next(current_line) != lines.end()) {
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 96]	// tmp370, D.52600
// main.cpp:207:             } else if (std::next(current_line) != lines.end()) {
	add	x0, sp, 144	// tmp371,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 120]	// tmp372, MEM[(struct _List_iterator *)_406]
// main.cpp:207:             } else if (std::next(current_line) != lines.end()) {
	add	x1, sp, 120	// tmp373,,
	add	x0, sp, 96	// tmp374,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.68_232, tmp375
// main.cpp:207:             } else if (std::next(current_line) != lines.end()) {
	cmp	w0, 0	// retval.68_232,
	beq	.L116		//,
// main.cpp:208:                 memory -= sizeof(std::string);
	ldr	x0, [sp, 72]	// memory.69_35, memory
	sub	x0, x0, #32	// _36, memory.69_35,
	str	x0, [sp, 72]	// _36, memory
// main.cpp:209:                 nodes--;
	ldr	x0, [sp, 80]	// nodes.70_37, nodes
	sub	x0, x0, #1	// _38, nodes.70_37,
	str	x0, [sp, 80]	// _38, nodes
// main.cpp:211:                 auto next_line = std::next(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 112]	// tmp376, MEM[(struct _List_iterator *)_407]
// main.cpp:212:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	add	x0, sp, 112	// tmp377,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:212:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
	mov	x19, x0	// _40,
// main.cpp:212:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	add	x0, sp, 88	// tmp378,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:212:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:212:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	sub	x1, x19, x0	// _242, _40, _42
// main.cpp:212:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	ldr	x0, [sp, 72]	// memory.71_43, memory
	add	x0, x1, x0	// _44, _242, memory.71_43
	str	x0, [sp, 72]	// _44, memory
// main.cpp:213:                 (*current_line) += *next_line;
	add	x0, sp, 88	// tmp379,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x19, x0	// _45,
// main.cpp:213:                 (*current_line) += *next_line;
	add	x0, sp, 112	// tmp380,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x1, x0	//, _46
	mov	x0, x19	//, _45
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_		//
// main.cpp:214:                 lines.erase(next_line);
	add	x1, sp, 112	// tmp381,,
	add	x0, sp, 120	// tmp382,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E		//
	add	x0, sp, 144	// tmp383,,
	ldr	x1, [sp, 120]	//, MEM[(struct _List_const_iterator *)_406]
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E		//
// main.cpp:216:             break;
	b	.L116		//
.L85:
// main.cpp:219:                 std::string new_line = (*current_line).substr(cursor_x);
	add	x0, sp, 88	// tmp384,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x3, x0	// _47,
// main.cpp:219:                 std::string new_line = (*current_line).substr(cursor_x);
	ldr	w0, [sp, 48]	// cursor_x.72_48, cursor_x
	sxtw	x0, w0	// _49, cursor_x.72_48
	add	x1, sp, 328	// tmp385,,
	mov	x8, x1	//, tmp385
	mov	x2, -1	//,
	mov	x1, x0	//, _49
	mov	x0, x3	//, _47
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm		//
.LEHE14:
// main.cpp:220:                 (*current_line).erase(cursor_x);
	add	x0, sp, 88	// tmp386,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x3, x0	// _50,
// main.cpp:220:                 (*current_line).erase(cursor_x);
	ldr	w0, [sp, 48]	// cursor_x.73_51, cursor_x
	sxtw	x0, w0	// _52, cursor_x.73_51
	mov	x2, -1	//,
	mov	x1, x0	//, _52
	mov	x0, x3	//, _50
.LEHB15:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:222:                 auto inserted_line = lines.insert(std::next(current_line), new_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 112]	// tmp387, MEM[(struct _List_iterator *)_407]
// main.cpp:222:                 auto inserted_line = lines.insert(std::next(current_line), new_line);
	add	x1, sp, 112	// tmp388,,
	add	x0, sp, 120	// tmp389,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E		//
	add	x1, sp, 328	// tmp390,,
	add	x0, sp, 144	// tmp391,,
	mov	x2, x1	//, tmp390
	ldr	x1, [sp, 120]	//, MEM[(struct _List_const_iterator *)_406]
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_		//
.LEHE15:
// main.cpp:222:                 auto inserted_line = lines.insert(std::next(current_line), new_line);
	str	x0, [sp, 104]	// tmp392, MEM[(struct _List_iterator *)_408]
// main.cpp:223:                 memory += new_line.size() * sizeof(char) + sizeof(std::string);
	add	x0, sp, 328	// tmp393,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:223:                 memory += new_line.size() * sizeof(char) + sizeof(std::string);
	add	x1, x0, 32	// _367, _53,
// main.cpp:223:                 memory += new_line.size() * sizeof(char) + sizeof(std::string);
	ldr	x0, [sp, 72]	// memory.74_54, memory
	add	x0, x1, x0	// _55, _367, memory.74_54
	str	x0, [sp, 72]	// _55, memory
// main.cpp:224:                 nodes++;
	ldr	x0, [sp, 80]	// nodes.75_56, nodes
	add	x0, x0, 1	// _57, nodes.75_56,
	str	x0, [sp, 80]	// _57, nodes
// main.cpp:226:                 current_line = inserted_line;
	ldr	x0, [sp, 104]	// tmp394, MEM[(struct _List_iterator *)_408]
	str	x0, [sp, 88]	// tmp394, current_line
// main.cpp:227:                 cursor_y++;
	ldr	w0, [sp, 52]	// cursor_y.76_58, cursor_y
	add	w0, w0, 1	// _59, cursor_y.76_58,
	str	w0, [sp, 52]	// _59, cursor_y
// main.cpp:228:                 cursor_x = 0;
	str	wzr, [sp, 48]	//, cursor_x
// main.cpp:229:             }
	add	x0, sp, 328	// tmp395,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:230:             break;
	b	.L87		//
.L77:
// main.cpp:232:             if (cursor_x > 0) {
	ldr	w0, [sp, 48]	// cursor_x.77_60, cursor_x
// main.cpp:232:             if (cursor_x > 0) {
	cmp	w0, 0	// cursor_x.77_60,
	ble	.L91		//,
// main.cpp:233:                 memory -= sizeof(char);
	ldr	x0, [sp, 72]	// memory.78_61, memory
	sub	x0, x0, #1	// _62, memory.78_61,
	str	x0, [sp, 72]	// _62, memory
// main.cpp:234:                 (*current_line).erase(--cursor_x, 1);
	add	x0, sp, 88	// tmp396,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x3, x0	// _63,
// main.cpp:234:                 (*current_line).erase(--cursor_x, 1);
	ldr	w0, [sp, 48]	// cursor_x.79_64, cursor_x
	sub	w0, w0, #1	// _65, cursor_x.79_64,
// main.cpp:234:                 (*current_line).erase(--cursor_x, 1);
	str	w0, [sp, 48]	// _65, cursor_x
// main.cpp:234:                 (*current_line).erase(--cursor_x, 1);
	ldr	w0, [sp, 48]	// cursor_x.80_66, cursor_x
// main.cpp:234:                 (*current_line).erase(--cursor_x, 1);
	sxtw	x0, w0	// _67, cursor_x.80_66
	mov	x2, 1	//,
	mov	x1, x0	//, _67
	mov	x0, x3	//, _63
.LEHB16:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:247:             break;
	b	.L117		//
.L91:
// main.cpp:235:             } else if (cursor_y > 3) {
	ldr	w0, [sp, 52]	// cursor_y.81_68, cursor_y
// main.cpp:235:             } else if (cursor_y > 3) {
	cmp	w0, 3	// cursor_y.81_68,
	ble	.L117		//,
// main.cpp:236:                 memory -= sizeof(std::string);
	ldr	x0, [sp, 72]	// memory.82_69, memory
	sub	x0, x0, #32	// _70, memory.82_69,
	str	x0, [sp, 72]	// _70, memory
// main.cpp:237:                 nodes--;
	ldr	x0, [sp, 80]	// nodes.83_71, nodes
	sub	x0, x0, #1	// _72, nodes.83_71,
	str	x0, [sp, 80]	// _72, nodes
// main.cpp:239:                 auto prev_line = std::prev(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 112]	// tmp397, MEM[(struct _List_iterator *)_407]
// main.cpp:240:                 cursor_x = (*prev_line).size();
	add	x0, sp, 112	// tmp398,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:240:                 cursor_x = (*prev_line).size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:240:                 cursor_x = (*prev_line).size();
	str	w0, [sp, 48]	// _75, cursor_x
// main.cpp:241:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	add	x0, sp, 112	// tmp399,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:241:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
	mov	x19, x0	// _77,
// main.cpp:241:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	add	x0, sp, 88	// tmp400,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:241:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:241:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	sub	x1, x19, x0	// _265, _77, _79
// main.cpp:241:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	ldr	x0, [sp, 72]	// memory.84_80, memory
	add	x0, x1, x0	// _81, _265, memory.84_80
	str	x0, [sp, 72]	// _81, memory
// main.cpp:242:                 (*prev_line) += *current_line;
	add	x0, sp, 112	// tmp401,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x19, x0	// _82,
// main.cpp:242:                 (*prev_line) += *current_line;
	add	x0, sp, 88	// tmp402,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x1, x0	//, _83
	mov	x0, x19	//, _82
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_		//
// main.cpp:243:                 lines.erase(current_line);
	add	x1, sp, 88	// tmp403,,
	add	x0, sp, 120	// tmp404,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E		//
	add	x0, sp, 144	// tmp405,,
	ldr	x1, [sp, 120]	//, MEM[(struct _List_const_iterator *)_406]
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E		//
// main.cpp:244:                 current_line = prev_line;
	ldr	x0, [sp, 112]	// tmp406, MEM[(struct _List_iterator *)_407]
	str	x0, [sp, 88]	// tmp406, current_line
// main.cpp:245:                 cursor_y--;
	ldr	w0, [sp, 52]	// cursor_y.85_84, cursor_y
	sub	w0, w0, #1	// _85, cursor_y.85_84,
	str	w0, [sp, 52]	// _85, cursor_y
// main.cpp:247:             break;
	b	.L117		//
.L79:
// main.cpp:249:             if (cursor_x > 0) {
	ldr	w0, [sp, 48]	// cursor_x.86_86, cursor_x
// main.cpp:249:             if (cursor_x > 0) {
	cmp	w0, 0	// cursor_x.86_86,
	ble	.L93		//,
// main.cpp:250:                 cursor_x--;
	ldr	w0, [sp, 48]	// cursor_x.87_87, cursor_x
	sub	w0, w0, #1	// _88, cursor_x.87_87,
	str	w0, [sp, 48]	// _88, cursor_x
// main.cpp:256:             break;
	b	.L118		//
.L93:
// main.cpp:251:             } else if (cursor_y > 3) {
	ldr	w0, [sp, 52]	// cursor_y.88_89, cursor_y
// main.cpp:251:             } else if (cursor_y > 3) {
	cmp	w0, 3	// cursor_y.88_89,
	ble	.L118		//,
// main.cpp:252:                 current_line = std::prev(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 88]	// tmp407, current_line
// main.cpp:253:                 cursor_y--;
	ldr	w0, [sp, 52]	// cursor_y.89_90, cursor_y
	sub	w0, w0, #1	// _91, cursor_y.89_90,
	str	w0, [sp, 52]	// _91, cursor_y
// main.cpp:254:                 cursor_x = (*current_line).size();
	add	x0, sp, 88	// tmp408,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:254:                 cursor_x = (*current_line).size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:254:                 cursor_x = (*current_line).size();
	str	w0, [sp, 48]	// _94, cursor_x
// main.cpp:256:             break;
	b	.L118		//
.L78:
// main.cpp:258:             if (cursor_x < static_cast<int>((*current_line).size())) {
	add	x0, sp, 88	// tmp409,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:258:             if (cursor_x < static_cast<int>((*current_line).size())) {
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:258:             if (cursor_x < static_cast<int>((*current_line).size())) {
	mov	w1, w0	// _97, _96
	ldr	w0, [sp, 48]	// cursor_x.91_98, cursor_x
	cmp	w1, w0	// _97, cursor_x.91_98
	cset	w0, gt	// tmp411,
	and	w0, w0, 255	// retval.90_283, tmp410
// main.cpp:258:             if (cursor_x < static_cast<int>((*current_line).size())) {
	cmp	w0, 0	// retval.90_283,
	beq	.L95		//,
// main.cpp:259:                 cursor_x++;
	ldr	w0, [sp, 48]	// cursor_x.92_99, cursor_x
	add	w0, w0, 1	// _100, cursor_x.92_99,
	str	w0, [sp, 48]	// _100, cursor_x
// main.cpp:265:             break;
	b	.L119		//
.L95:
// main.cpp:260:             } else if (std::next(current_line) != lines.end()) {
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 104]	// tmp412, MEM[(struct _List_iterator *)_408]
// main.cpp:260:             } else if (std::next(current_line) != lines.end()) {
	add	x0, sp, 144	// tmp413,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 120]	// tmp414, MEM[(struct _List_iterator *)_406]
// main.cpp:260:             } else if (std::next(current_line) != lines.end()) {
	add	x1, sp, 120	// tmp415,,
	add	x0, sp, 104	// tmp416,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.93_287, tmp417
// main.cpp:260:             } else if (std::next(current_line) != lines.end()) {
	cmp	w0, 0	// retval.93_287,
	beq	.L119		//,
// main.cpp:261:                 current_line = std::next(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 88]	// tmp418, current_line
// main.cpp:262:                 cursor_y++;
	ldr	w0, [sp, 52]	// cursor_y.94_101, cursor_y
	add	w0, w0, 1	// _102, cursor_y.94_101,
	str	w0, [sp, 52]	// _102, cursor_y
// main.cpp:263:                 cursor_x = 0;
	str	wzr, [sp, 48]	//, cursor_x
// main.cpp:265:             break;
	b	.L119		//
.L80:
// main.cpp:267:             if (cursor_y > 3) {
	ldr	w0, [sp, 52]	// cursor_y.95_103, cursor_y
// main.cpp:267:             if (cursor_y > 3) {
	cmp	w0, 3	// cursor_y.95_103,
	ble	.L97		//,
// main.cpp:268:                 current_line = std::prev(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 88]	// tmp419, current_line
// main.cpp:269:                 cursor_y--;
	ldr	w0, [sp, 52]	// cursor_y.96_104, cursor_y
	sub	w0, w0, #1	// _105, cursor_y.96_104,
	str	w0, [sp, 52]	// _105, cursor_y
// main.cpp:271:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	add	x0, sp, 88	// tmp420,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:271:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:271:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	mov	w1, w0	// _108, _107
	ldr	w0, [sp, 48]	// cursor_x.98_109, cursor_x
	cmp	w1, w0	// _108, cursor_x.98_109
	cset	w0, lt	// tmp422,
	and	w0, w0, 255	// retval.97_305, tmp421
// main.cpp:271:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	cmp	w0, 0	// retval.97_305,
	beq	.L120		//,
// main.cpp:272:                     cursor_x = (*current_line).size();
	add	x0, sp, 88	// tmp423,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:272:                     cursor_x = (*current_line).size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:272:                     cursor_x = (*current_line).size();
	str	w0, [sp, 48]	// _112, cursor_x
// main.cpp:277:             break;
	b	.L120		//
.L97:
// main.cpp:274:             } else if (scroll_offset > 0) {
	ldr	w0, [sp, 56]	// scroll_offset.99_113, scroll_offset
// main.cpp:274:             } else if (scroll_offset > 0) {
	cmp	w0, 0	// scroll_offset.99_113,
	ble	.L120		//,
// main.cpp:275:                 scroll_offset--;
	ldr	w0, [sp, 56]	// scroll_offset.100_114, scroll_offset
	sub	w0, w0, #1	// _115, scroll_offset.100_114,
	str	w0, [sp, 56]	// _115, scroll_offset
// main.cpp:277:             break;
	b	.L120		//
.L81:
// main.cpp:279:             if (std::next(current_line) != lines.end()) {
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 112]	// tmp424, MEM[(struct _List_iterator *)_407]
// main.cpp:279:             if (std::next(current_line) != lines.end()) {
	add	x0, sp, 144	// tmp425,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 120]	// tmp426, MEM[(struct _List_iterator *)_406]
// main.cpp:279:             if (std::next(current_line) != lines.end()) {
	add	x1, sp, 120	// tmp427,,
	add	x0, sp, 112	// tmp428,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.101_312, tmp429
// main.cpp:279:             if (std::next(current_line) != lines.end()) {
	cmp	w0, 0	// retval.101_312,
	beq	.L121		//,
// main.cpp:280:                 current_line = std::next(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 88]	// tmp430, current_line
// main.cpp:282:                 if (cursor_y < LINES - 2) {
	adrp	x0, :got:LINES	// tmp432,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp431, tmp432,
	ldr	w0, [x0]	// LINES.102_116, LINES
	sub	w1, w0, #2	// _117, LINES.102_116,
// main.cpp:282:                 if (cursor_y < LINES - 2) {
	ldr	w0, [sp, 52]	// cursor_y.103_118, cursor_y
// main.cpp:282:                 if (cursor_y < LINES - 2) {
	cmp	w1, w0	// _117, cursor_y.103_118
	ble	.L100		//,
// main.cpp:283:                     cursor_y++;
	ldr	w0, [sp, 52]	// cursor_y.104_119, cursor_y
	add	w0, w0, 1	// _120, cursor_y.104_119,
	str	w0, [sp, 52]	// _120, cursor_y
	b	.L101		//
.L100:
// main.cpp:285:                     scroll_offset++;
	ldr	w0, [sp, 56]	// scroll_offset.105_121, scroll_offset
	add	w0, w0, 1	// _122, scroll_offset.105_121,
	str	w0, [sp, 56]	// _122, scroll_offset
.L101:
// main.cpp:288:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	add	x0, sp, 88	// tmp433,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:288:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:288:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	mov	w1, w0	// _125, _124
	ldr	w0, [sp, 48]	// cursor_x.107_126, cursor_x
	cmp	w1, w0	// _125, cursor_x.107_126
	cset	w0, lt	// tmp435,
	and	w0, w0, 255	// retval.106_320, tmp434
// main.cpp:288:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	cmp	w0, 0	// retval.106_320,
	beq	.L121		//,
// main.cpp:289:                     cursor_x = (*current_line).size();
	add	x0, sp, 88	// tmp436,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:289:                     cursor_x = (*current_line).size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:289:                     cursor_x = (*current_line).size();
	str	w0, [sp, 48]	// _129, cursor_x
// main.cpp:292:             break;
	b	.L121		//
.L76:
// main.cpp:294:             if (ch >= 32 && ch <= 126) {
	ldr	w0, [sp, 68]	// tmp437, ch
	cmp	w0, 31	// tmp437,
	ble	.L122		//,
// main.cpp:294:             if (ch >= 32 && ch <= 126) {
	ldr	w0, [sp, 68]	// tmp438, ch
	cmp	w0, 126	// tmp438,
	bgt	.L122		//,
// main.cpp:295:                 (*current_line).insert(cursor_x, 1, static_cast<char>(ch));
	add	x0, sp, 88	// tmp439,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x4, x0	// _130,
// main.cpp:295:                 (*current_line).insert(cursor_x, 1, static_cast<char>(ch));
	ldr	w0, [sp, 48]	// cursor_x.108_131, cursor_x
	sxtw	x0, w0	// _132, cursor_x.108_131
	ldr	w1, [sp, 68]	// tmp440, ch
	and	w1, w1, 255	// _133, tmp440
	mov	w3, w1	//, _133
	mov	x2, 1	//,
	mov	x1, x0	//, _132
	mov	x0, x4	//, _130
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc		//
// main.cpp:296:                 memory += sizeof(char);
	ldr	x0, [sp, 72]	// memory.109_134, memory
	add	x0, x0, 1	// _135, memory.109_134,
	str	x0, [sp, 72]	// _135, memory
// main.cpp:297:                 cursor_x++;
	ldr	w0, [sp, 48]	// cursor_x.110_136, cursor_x
	add	w0, w0, 1	// _137, cursor_x.110_136,
	str	w0, [sp, 48]	// _137, cursor_x
// main.cpp:299:             break;
	b	.L122		//
.L116:
// main.cpp:216:             break;
	nop	
	b	.L87		//
.L117:
// main.cpp:247:             break;
	nop	
	b	.L87		//
.L118:
// main.cpp:256:             break;
	nop	
	b	.L87		//
.L119:
// main.cpp:265:             break;
	nop	
	b	.L87		//
.L120:
// main.cpp:277:             break;
	nop	
	b	.L87		//
.L121:
// main.cpp:292:             break;
	nop	
	b	.L87		//
.L122:
// main.cpp:299:             break;
	nop	
.L87:
// main.cpp:301:         refresh();
	bl	refresh		//
// main.cpp:302:         move(cursor_y, cursor_x);
	ldr	w0, [sp, 52]	// cursor_y.111_138, cursor_y
	ldr	w1, [sp, 48]	// cursor_x.112_139, cursor_x
	bl	move		//
.LEHE16:
// main.cpp:303:     }
	b	.L103		//
.L112:
// main.cpp:140:         lines.push_back("");
	mov	x19, x0	// tmp444,
	add	x0, sp, 328	// tmp442,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L105		//
.L111:
	mov	x19, x0	// tmp443,
.L105:
// main.cpp:140:         lines.push_back("");
	add	x0, sp, 120	// tmp447,,
	bl	_ZNSaIcED1Ev		//
	b	.L106		//
.L114:
// main.cpp:229:             }
	mov	x19, x0	// tmp452,
	add	x0, sp, 328	// tmp450,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L108		//
.L113:
// main.cpp:304: }
	mov	x19, x0	// tmp451,
.L108:
	add	x0, sp, 232	// tmp455,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 200	// tmp458,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L106		//
.L110:
	mov	x19, x0	// tmp448,
.L106:
	add	x0, sp, 168	// tmp459,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 144	// tmp462,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev		//
	mov	x0, x19	// D.57291, tmp460
.LEHB17:
	bl	_Unwind_Resume		//
.LEHE17:
.L115:
	bl	__stack_chk_fail		//
.L109:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 368	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2085:
	.section	.gcc_except_table
.LLSDA2085:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2085-.LLSDACSB2085
.LLSDACSB2085:
	.uleb128 .LEHB10-.LFB2085
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB2085
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L110-.LFB2085
	.uleb128 0
	.uleb128 .LEHB12-.LFB2085
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L111-.LFB2085
	.uleb128 0
	.uleb128 .LEHB13-.LFB2085
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L112-.LFB2085
	.uleb128 0
	.uleb128 .LEHB14-.LFB2085
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L113-.LFB2085
	.uleb128 0
	.uleb128 .LEHB15-.LFB2085
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L114-.LFB2085
	.uleb128 0
	.uleb128 .LEHB16-.LFB2085
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L113-.LFB2085
	.uleb128 0
	.uleb128 .LEHB17-.LFB2085
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2085:
	.text
	.size	main, .-main
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_:
.LFB2332:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __x, __x
// /usr/include/c++/11/bits/stl_list.h:1212:       { this->_M_insert(end(), __x); }
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	ldr	x2, [sp, 16]	//, __x
	mov	x1, x0	//, D.56800
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_		//
// /usr/include/c++/11/bits/stl_list.h:1212:       { this->_M_insert(end(), __x); }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2332:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
	.section	.text._ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.align	2
	.weak	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.type	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, %function
_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv:
.LFB2342:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:954:       begin() const _GLIBCXX_NOEXCEPT
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp102,
	str	x1, [sp, 40]	// tmp102, D.57300
	mov	x1, 0	// tmp102
// /usr/include/c++/11/bits/stl_list.h:955:       { return const_iterator(this->_M_impl._M_node._M_next); }
	ldr	x0, [sp, 24]	// tmp97, this
	ldr	x1, [x0]	// _1, this_3(D)->D.51930._M_impl._M_node.D.40775._M_next
// /usr/include/c++/11/bits/stl_list.h:955:       { return const_iterator(this->_M_impl._M_node._M_next); }
	add	x0, sp, 32	// tmp98,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:955:       { return const_iterator(this->_M_impl._M_node._M_next); }
	ldr	x0, [sp, 32]	// D.56903, D.54782
	mov	x1, x0	// <retval>, D.56903
// /usr/include/c++/11/bits/stl_list.h:955:       { return const_iterator(this->_M_impl._M_node._M_next); }
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x3, [sp, 40]	// tmp103, D.57300
	ldr	x2, [x0]	// tmp104,
	subs	x3, x3, x2	// tmp103, tmp104
	mov	x2, 0	// tmp104
	beq	.L126		//,
	bl	__stack_chk_fail		//
.L126:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2342:
	.size	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .-_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.section	.text._ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,"axG",@progbits,_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,comdat
	.align	2
	.weak	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.type	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, %function
_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv:
.LFB2343:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:972:       end() const _GLIBCXX_NOEXCEPT
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp101,
	str	x1, [sp, 40]	// tmp101, D.57301
	mov	x1, 0	// tmp101
// /usr/include/c++/11/bits/stl_list.h:973:       { return const_iterator(&this->_M_impl._M_node); }
	ldr	x1, [sp, 24]	// _1, this
	add	x0, sp, 32	// tmp97,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:973:       { return const_iterator(&this->_M_impl._M_node); }
	ldr	x0, [sp, 32]	// D.56906, D.54784
	mov	x1, x0	// <retval>, D.56906
// /usr/include/c++/11/bits/stl_list.h:973:       { return const_iterator(&this->_M_impl._M_node); }
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x3, [sp, 40]	// tmp102, D.57301
	ldr	x2, [x0]	// tmp103,
	subs	x3, x3, x2	// tmp102, tmp103
	mov	x2, 0	// tmp103
	beq	.L129		//,
	bl	__stack_chk_fail		//
.L129:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2343:
	.size	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, .-_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.section	.text._ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_,"axG",@progbits,_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_,comdat
	.align	2
	.weak	_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_
	.type	_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, %function
_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_:
.LFB2344:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __x, __x
	str	x1, [sp]	// __y, __y
// /usr/include/c++/11/bits/stl_list.h:339:       { return __x._M_node != __y._M_node; }
	ldr	x0, [sp, 8]	// tmp96, __x
	ldr	x1, [x0]	// _1, __x_4(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:339:       { return __x._M_node != __y._M_node; }
	ldr	x0, [sp]	// tmp97, __y
	ldr	x0, [x0]	// _2, __y_5(D)->_M_node
	cmp	x1, x0	// _1, _2
	cset	w0, ne	// tmp99,
	and	w0, w0, 255	// _6, tmp98
// /usr/include/c++/11/bits/stl_list.h:339:       { return __x._M_node != __y._M_node; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2344:
	.size	_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, .-_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_
	.section	.text._ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"axG",@progbits,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,comdat
	.align	2
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.type	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, %function
_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
.LFB2345:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/bits/stl_list.h:305: 	_M_node = _M_node->_M_next;
	ldr	x0, [sp, 8]	// tmp96, this
	ldr	x0, [x0]	// _1, this_4(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:305: 	_M_node = _M_node->_M_next;
	ldr	x1, [x0]	// _2, _1->_M_next
// /usr/include/c++/11/bits/stl_list.h:305: 	_M_node = _M_node->_M_next;
	ldr	x0, [sp, 8]	// tmp97, this
	str	x1, [x0]	// _2, this_4(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:306: 	return *this;
	ldr	x0, [sp, 8]	// _6, this
// /usr/include/c++/11/bits/stl_list.h:307:       }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2345:
	.size	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .-_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.section	.text._ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"axG",@progbits,_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,comdat
	.align	2
	.weak	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.type	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, %function
_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
.LFB2346:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:296:       { return *static_cast<_Node*>(_M_node)->_M_valptr(); }
	ldr	x0, [sp, 24]	// tmp95, this
	ldr	x0, [x0]	// _1, this_3(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:296:       { return *static_cast<_Node*>(_M_node)->_M_valptr(); }
	bl	_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv		//
// /usr/include/c++/11/bits/stl_list.h:296:       { return *static_cast<_Node*>(_M_node)->_M_valptr(); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2346:
	.size	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .-_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv:
.LFB2354:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:945:       begin() _GLIBCXX_NOEXCEPT
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp102,
	str	x1, [sp, 40]	// tmp102, D.57302
	mov	x1, 0	// tmp102
// /usr/include/c++/11/bits/stl_list.h:946:       { return iterator(this->_M_impl._M_node._M_next); }
	ldr	x0, [sp, 24]	// tmp97, this
	ldr	x1, [x0]	// _1, this_3(D)->D.51930._M_impl._M_node.D.40775._M_next
	add	x0, sp, 32	// tmp98,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:946:       { return iterator(this->_M_impl._M_node._M_next); }
	ldr	x0, [sp, 32]	// D.56994, D.54964
	mov	x1, x0	// <retval>, D.56994
// /usr/include/c++/11/bits/stl_list.h:946:       { return iterator(this->_M_impl._M_node._M_next); }
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x3, [sp, 40]	// tmp103, D.57302
	ldr	x2, [x0]	// tmp104,
	subs	x3, x3, x2	// tmp103, tmp104
	mov	x2, 0	// tmp104
	beq	.L138		//,
	bl	__stack_chk_fail		//
.L138:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2354:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv:
.LFB2355:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:963:       end() _GLIBCXX_NOEXCEPT
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp101,
	str	x1, [sp, 40]	// tmp101, D.57303
	mov	x1, 0	// tmp101
// /usr/include/c++/11/bits/stl_list.h:964:       { return iterator(&this->_M_impl._M_node); }
	ldr	x1, [sp, 24]	// _1, this
	add	x0, sp, 32	// tmp97,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:964:       { return iterator(&this->_M_impl._M_node); }
	ldr	x0, [sp, 32]	// D.56801, D.54966
	mov	x1, x0	// <retval>, D.56801
// /usr/include/c++/11/bits/stl_list.h:964:       { return iterator(&this->_M_impl._M_node); }
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x3, [sp, 40]	// tmp102, D.57303
	ldr	x2, [x0]	// tmp103,
	subs	x3, x3, x2	// tmp102, tmp103
	mov	x2, 0	// tmp103
	beq	.L141		//,
	bl	__stack_chk_fail		//
.L141:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2355:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.section	.text._ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_,"axG",@progbits,_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_,comdat
	.align	2
	.weak	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_
	.type	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, %function
_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_:
.LFB2356:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __x, __x
	str	x1, [sp]	// __y, __y
// /usr/include/c++/11/bits/stl_list.h:253:       { return __x._M_node != __y._M_node; }
	ldr	x0, [sp, 8]	// tmp96, __x
	ldr	x1, [x0]	// _1, __x_4(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:253:       { return __x._M_node != __y._M_node; }
	ldr	x0, [sp]	// tmp97, __y
	ldr	x0, [x0]	// _2, __y_5(D)->_M_node
	cmp	x1, x0	// _1, _2
	cset	w0, ne	// tmp99,
	and	w0, w0, 255	// _6, tmp98
// /usr/include/c++/11/bits/stl_list.h:253:       { return __x._M_node != __y._M_node; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2356:
	.size	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, .-_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_
	.section	.text._ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"axG",@progbits,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,comdat
	.align	2
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.type	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, %function
_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
.LFB2357:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/bits/stl_list.h:219: 	_M_node = _M_node->_M_next;
	ldr	x0, [sp, 8]	// tmp96, this
	ldr	x0, [x0]	// _1, this_4(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:219: 	_M_node = _M_node->_M_next;
	ldr	x1, [x0]	// _2, _1->_M_next
// /usr/include/c++/11/bits/stl_list.h:219: 	_M_node = _M_node->_M_next;
	ldr	x0, [sp, 8]	// tmp97, this
	str	x1, [x0]	// _2, this_4(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:220: 	return *this;
	ldr	x0, [sp, 8]	// _6, this
// /usr/include/c++/11/bits/stl_list.h:221:       }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2357:
	.size	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .-_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.section	.text._ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"axG",@progbits,_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,comdat
	.align	2
	.weak	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.type	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, %function
_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
.LFB2358:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:210:       { return *static_cast<_Node*>(_M_node)->_M_valptr(); }
	ldr	x0, [sp, 24]	// tmp95, this
	ldr	x0, [x0]	// _1, this_3(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:210:       { return *static_cast<_Node*>(_M_node)->_M_valptr(); }
	bl	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv		//
// /usr/include/c++/11/bits/stl_list.h:210:       { return *static_cast<_Node*>(_M_node)->_M_valptr(); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2358:
	.size	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .-_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.section	.text._ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmEvRT_T0_,"axG",@progbits,_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmEvRT_T0_,comdat
	.align	2
	.weak	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmEvRT_T0_
	.type	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmEvRT_T0_, %function
_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmEvRT_T0_:
.LFB2360:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// __i, __i
	str	x1, [sp, 32]	// __n, __n
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:205:       typename iterator_traits<_InputIterator>::difference_type __d = __n;
	ldr	x0, [sp, 32]	// tmp93, __n
	str	x0, [sp, 56]	// tmp93, __d
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:206:       std::__advance(__i, __d, std::__iterator_category(__i));
	ldr	x0, [sp, 40]	//, __i
	bl	_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_		//
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:206:       std::__advance(__i, __d, std::__iterator_category(__i));
	mov	w2, w19	//, D.56997
	ldr	x1, [sp, 56]	//, __d
	ldr	x0, [sp, 40]	//, __i
	bl	_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag		//
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:207:     }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2360:
	.size	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmEvRT_T0_, .-_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmEvRT_T0_
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev:
.LFB2363:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:381: 	: _Node_alloc_type()
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev		//
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt8__detail17_List_node_headerC1Ev		//
// /usr/include/c++/11/bits/stl_list.h:382: 	{ }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2363:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC1Ev
	.set	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC1Ev,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.section	.text._ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,"axG",@progbits,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED5Ev,comdat
	.align	2
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.type	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, %function
_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev:
.LFB2366:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/allocator.h:174:       ~allocator() _GLIBCXX_NOTHROW { }
	ldr	x0, [sp, 24]	//, this
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2366:
	.size	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, .-_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
	.set	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB2369:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:499:       { _M_clear(); }
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv		//
// /usr/include/c++/11/bits/stl_list.h:499:       { _M_clear(); }
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD1Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2369:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv,"axG",@progbits,_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv,comdat
	.align	2
	.weak	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv
	.type	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv, %function
_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv:
.LFB2372:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/bits/stl_list.h:1056:       { return this->_M_impl._M_node._M_next == &this->_M_impl._M_node; }
	ldr	x0, [sp, 8]	// tmp96, this
	ldr	x1, [x0]	// _1, this_4(D)->D.51930._M_impl._M_node.D.40775._M_next
// /usr/include/c++/11/bits/stl_list.h:1056:       { return this->_M_impl._M_node._M_next == &this->_M_impl._M_node; }
	ldr	x0, [sp, 8]	// _2, this
// /usr/include/c++/11/bits/stl_list.h:1056:       { return this->_M_impl._M_node._M_next == &this->_M_impl._M_node; }
	cmp	x1, x0	// _1, _2
	cset	w0, eq	// tmp98,
	and	w0, w0, 255	// _5, tmp97
// /usr/include/c++/11/bits/stl_list.h:1056:       { return this->_M_impl._M_node._M_next == &this->_M_impl._M_node; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2372:
	.size	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv, .-_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_:
.LFB2373:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __x, __x
// /usr/include/c++/11/bits/stl_list.h:1217:       { this->_M_insert(end(), std::move(__x)); }
	ldr	x0, [sp, 40]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	mov	x19, x0	// D.57116,
// /usr/include/c++/11/bits/stl_list.h:1217:       { this->_M_insert(end(), std::move(__x)); }
	ldr	x0, [sp, 32]	//, __x
	bl	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_		//
// /usr/include/c++/11/bits/stl_list.h:1217:       { this->_M_insert(end(), std::move(__x)); }
	mov	x2, x0	//, _1
	mov	x1, x19	//, D.57116
	ldr	x0, [sp, 40]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_		//
// /usr/include/c++/11/bits/stl_list.h:1217:       { this->_M_insert(end(), std::move(__x)); }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2373:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_
	.section	.text._ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE,"axG",@progbits,_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE,comdat
	.align	2
	.weak	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE
	.type	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE, %function
_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE:
.LFB2377:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __x, __x
	str	x1, [sp, 16]	// __n, __n
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:218:       std::advance(__x, __n);
	add	x0, sp, 24	// tmp94,,
	ldr	x1, [sp, 16]	//, __n
	bl	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_		//
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:219:       return __x;
	ldr	x0, [sp, 24]	// D.57155, __x
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:220:     }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2377:
	.size	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE, .-_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE
	.section	.text._ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E,"axG",@progbits,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5ERKSt14_List_iteratorIS5_E,comdat
	.align	2
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E
	.type	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E, %function
_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E:
.LFB2380:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// __x, __x
// /usr/include/c++/11/bits/stl_list.h:287:       : _M_node(__x._M_node) { }
	ldr	x0, [sp]	// tmp93, __x
	ldr	x1, [x0]	// _1, __x_5(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:287:       : _M_node(__x._M_node) { }
	ldr	x0, [sp, 8]	// tmp94, this
	str	x1, [x0]	// _1, this_3(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:287:       : _M_node(__x._M_node) { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2380:
	.size	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E, .-_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E
	.set	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E:
.LFB2382:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __position, __position
// /usr/include/c++/11/bits/list.tcc:150:     list<_Tp, _Alloc>::
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp97, tmp98,
	ldr	x1, [x0]	// tmp104,
	str	x1, [sp, 40]	// tmp104, D.57304
	mov	x1, 0	// tmp104
// /usr/include/c++/11/bits/list.tcc:157:       iterator __ret = iterator(__position._M_node->_M_next);
	ldr	x0, [sp, 16]	// _1, __position._M_node
// /usr/include/c++/11/bits/list.tcc:157:       iterator __ret = iterator(__position._M_node->_M_next);
	ldr	x1, [x0]	// _2, _1->_M_next
// /usr/include/c++/11/bits/list.tcc:157:       iterator __ret = iterator(__position._M_node->_M_next);
	add	x0, sp, 32	// tmp99,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/list.tcc:158:       _M_erase(__position._M_const_cast());
	add	x0, sp, 16	// tmp100,,
	bl	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv		//
	mov	x1, x0	//, D.57148
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E		//
// /usr/include/c++/11/bits/list.tcc:159:       return __ret;
	ldr	x0, [sp, 32]	// D.57149, __ret
	mov	x1, x0	// <retval>, D.57149
// /usr/include/c++/11/bits/list.tcc:160:     }
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x3, [sp, 40]	// tmp105, D.57304
	ldr	x2, [x0]	// tmp106,
	subs	x3, x3, x2	// tmp105, tmp106
	mov	x2, 0	// tmp106
	beq	.L160		//,
	bl	__stack_chk_fail		//
.L160:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2382:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_:
.LFB2384:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 56]	// this, this
	str	x1, [sp, 48]	// __position, __position
	str	x2, [sp, 40]	// __x, __x
// /usr/include/c++/11/bits/list.tcc:101:     list<_Tp, _Alloc>::
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x1, [x0]	// tmp106,
	str	x1, [sp, 88]	// tmp106, D.57305
	mov	x1, 0	// tmp106
// /usr/include/c++/11/bits/list.tcc:108:       _Node* __tmp = _M_create_node(__x);
	ldr	x1, [sp, 40]	//, __x
	ldr	x0, [sp, 56]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_		//
	str	x0, [sp, 80]	// _8, __tmp
// /usr/include/c++/11/bits/list.tcc:109:       __tmp->_M_hook(__position._M_const_cast()._M_node);
	ldr	x19, [sp, 80]	// _1, __tmp
// /usr/include/c++/11/bits/list.tcc:109:       __tmp->_M_hook(__position._M_const_cast()._M_node);
	add	x0, sp, 48	// tmp101,,
	bl	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv		//
// /usr/include/c++/11/bits/list.tcc:109:       __tmp->_M_hook(__position._M_const_cast()._M_node);
	mov	x1, x0	//, _2
	mov	x0, x19	//, _1
	bl	_ZNSt8__detail15_List_node_base7_M_hookEPS0_		//
// /usr/include/c++/11/bits/list.tcc:110:       this->_M_inc_size(1);
	ldr	x0, [sp, 56]	// _3, this
	mov	x1, 1	//,
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm		//
// /usr/include/c++/11/bits/list.tcc:111:       return iterator(__tmp);
	add	x0, sp, 72	// tmp102,,
	ldr	x1, [sp, 80]	//, __tmp
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/list.tcc:111:       return iterator(__tmp);
	ldr	x0, [sp, 72]	// D.57141, D.55074
	mov	x1, x0	// <retval>, D.57141
// /usr/include/c++/11/bits/list.tcc:112:     }
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp104, tmp105,
	ldr	x3, [sp, 88]	// tmp107, D.57305
	ldr	x2, [x0]	// tmp108,
	subs	x3, x3, x2	// tmp107, tmp108
	mov	x2, 0	// tmp108
	beq	.L163		//,
	bl	__stack_chk_fail		//
.L163:
	mov	x0, x1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2384:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_
	.section	.text._ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE,"axG",@progbits,_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE,comdat
	.align	2
	.weak	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE
	.type	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE, %function
_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE:
.LFB2385:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __x, __x
	str	x1, [sp, 16]	// __n, __n
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:230:       std::advance(__x, -__n);
	ldr	x0, [sp, 16]	// tmp95, __n
	neg	x1, x0	// _1, tmp95
	add	x0, sp, 24	// tmp96,,
	bl	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_		//
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:231:       return __x;
	ldr	x0, [sp, 24]	// D.57152, __x
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:232:     }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2385:
	.size	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE, .-_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.align	2
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, %function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB2444:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __t, __t
// /usr/include/c++/11/bits/move.h:105:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	ldr	x0, [sp, 8]	// _2, __t
// /usr/include/c++/11/bits/move.h:105:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2444:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_:
.LFB2469:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __position, __position
	str	x2, [sp, 24]	// __args#0, __args#0
// /usr/include/c++/11/bits/stl_list.h:1911: 	 _Node* __tmp = _M_create_node(std::forward<_Args>(__args)...);
	ldr	x0, [sp, 24]	//, __args#0
	bl	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE		//
	mov	x1, x0	//, _1
	ldr	x0, [sp, 40]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_		//
	str	x0, [sp, 56]	// _10, __tmp
// /usr/include/c++/11/bits/stl_list.h:1912: 	 __tmp->_M_hook(__position._M_node);
	ldr	x0, [sp, 56]	// _2, __tmp
	ldr	x1, [sp, 32]	// _3, __position._M_node
	bl	_ZNSt8__detail15_List_node_base7_M_hookEPS0_		//
// /usr/include/c++/11/bits/stl_list.h:1913: 	 this->_M_inc_size(1);
	ldr	x0, [sp, 40]	// _4, this
	mov	x1, 1	//,
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm		//
// /usr/include/c++/11/bits/stl_list.h:1914:        }
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2469:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.section	.text._ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5EPKNSt8__detail15_List_node_baseE,comdat
	.align	2
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE
	.type	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE, %function
_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE:
.LFB2480:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// __x, __x
// /usr/include/c++/11/bits/stl_list.h:284:       : _M_node(__x) { }
	ldr	x0, [sp, 8]	// tmp92, this
	ldr	x1, [sp]	// tmp93, __x
	str	x1, [x0]	// tmp93, this_2(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:284:       : _M_node(__x) { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2480:
	.size	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE, .-_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKNSt8__detail15_List_node_baseE
	.set	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKNSt8__detail15_List_node_baseE,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE
	.section	.text._ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,"axG",@progbits,_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,comdat
	.align	2
	.weak	_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.type	_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, %function
_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv:
.LFB2482:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:171:       _Tp const* _M_valptr() const { return _M_storage._M_ptr(); }
	ldr	x0, [sp, 24]	// tmp95, this
	add	x0, x0, 16	// _1, tmp95,
	bl	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv		//
// /usr/include/c++/11/bits/stl_list.h:171:       _Tp const* _M_valptr() const { return _M_storage._M_ptr(); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2482:
	.size	_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, .-_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.section	.text._ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5EPNSt8__detail15_List_node_baseE,comdat
	.align	2
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.type	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE, %function
_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE:
.LFB2485:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// __x, __x
// /usr/include/c++/11/bits/stl_list.h:201:       : _M_node(__x) { }
	ldr	x0, [sp, 8]	// tmp92, this
	ldr	x1, [sp]	// tmp93, __x
	str	x1, [x0]	// tmp93, this_2(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:201:       : _M_node(__x) { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2485:
	.size	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE, .-_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE
	.set	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.section	.text._ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,"axG",@progbits,_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,comdat
	.align	2
	.weak	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.type	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, %function
_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv:
.LFB2487:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:170:       _Tp*       _M_valptr()       { return _M_storage._M_ptr(); }
	ldr	x0, [sp, 24]	// tmp95, this
	add	x0, x0, 16	// _1, tmp95,
	bl	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv		//
// /usr/include/c++/11/bits/stl_list.h:170:       _Tp*       _M_valptr()       { return _M_storage._M_ptr(); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2487:
	.size	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, .-_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.section	.text._ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_,"axG",@progbits,_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_,comdat
	.align	2
	.weak	_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_
	.type	_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_, %function
_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_:
.LFB2488:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.55445, D.55445
// /usr/include/c++/11/bits/stl_iterator_base_types.h:239:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/include/c++/11/bits/stl_iterator_base_types.h:239:     { return typename iterator_traits<_Iter>::iterator_category(); }
	mov	w0, w1	//, <retval>
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2488:
	.size	_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_, .-_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_
	.section	.text._ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag,"axG",@progbits,_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag
	.type	_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag, %function
_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag:
.LFB2489:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __i, __i
	str	x1, [sp, 32]	// __n, __n
	strb	w2, [sp, 24]	// D.55454, D.55454
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:164:       if (__n > 0)
	ldr	x0, [sp, 32]	// tmp96, __n
	cmp	x0, 0	// tmp96,
	ble	.L182		//,
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:165:         while (__n--)
	b	.L179		//
.L180:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:166: 	  ++__i;
	ldr	x0, [sp, 40]	//, __i
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv		//
.L179:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:165:         while (__n--)
	ldr	x0, [sp, 32]	// __n.39_1, __n
	sub	x1, x0, #1	// tmp97, __n.39_1,
	str	x1, [sp, 32]	// tmp97, __n
	cmp	x0, 0	// __n.39_1,
	cset	w0, ne	// tmp99,
	and	w0, w0, 255	// retval.38_15, tmp98
	cmp	w0, 0	// retval.38_15,
	bne	.L180		//,
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:170:     }
	b	.L184		//
.L183:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:169: 	  --__i;
	ldr	x0, [sp, 40]	//, __i
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv		//
.L182:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:168:         while (__n++)
	ldr	x0, [sp, 32]	// __n.41_2, __n
	add	x1, x0, 1	// tmp100, __n.41_2,
	str	x1, [sp, 32]	// tmp100, __n
	cmp	x0, 0	// __n.41_2,
	cset	w0, ne	// tmp102,
	and	w0, w0, 255	// retval.40_11, tmp101
	cmp	w0, 0	// retval.40_11,
	bne	.L183		//,
.L184:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:170:     }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2489:
	.size	_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag, .-_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag
	.section	.text._ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,"axG",@progbits,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC5Ev,comdat
	.align	2
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.type	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, %function
_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev:
.LFB2492:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/allocator.h:156:       allocator() _GLIBCXX_NOTHROW { }
	ldr	x0, [sp, 24]	//, this
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev		//
// /usr/include/c++/11/bits/allocator.h:156:       allocator() _GLIBCXX_NOTHROW { }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2492:
	.size	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, .-_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev
	.set	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev:
.LFB2495:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/ext/new_allocator.h:89:       ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2495:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv:
.LFB2497:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/list.tcc:70:       __detail::_List_node_base* __cur = _M_impl._M_node._M_next;
	ldr	x0, [sp, 24]	// tmp94, this
	ldr	x0, [x0]	// tmp95, this_6(D)->_M_impl._M_node.D.40775._M_next
	str	x0, [sp, 40]	// tmp95, __cur
// /usr/include/c++/11/bits/list.tcc:71:       while (__cur != &_M_impl._M_node)
	b	.L188		//
.L189:
// /usr/include/c++/11/bits/list.tcc:73: 	  _Node* __tmp = static_cast<_Node*>(__cur);
	ldr	x0, [sp, 40]	// tmp96, __cur
	str	x0, [sp, 48]	// tmp96, __tmp
// /usr/include/c++/11/bits/list.tcc:74: 	  __cur = __tmp->_M_next;
	ldr	x0, [sp, 48]	// tmp97, __tmp
	ldr	x0, [x0]	// tmp98, __tmp_8->D.54831._M_next
	str	x0, [sp, 40]	// tmp98, __cur
// /usr/include/c++/11/bits/list.tcc:75: 	  _Tp* __val = __tmp->_M_valptr();
	ldr	x0, [sp, 48]	//, __tmp
	bl	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv		//
	str	x0, [sp, 56]	//, __val
// /usr/include/c++/11/bits/list.tcc:77: 	  _Node_alloc_traits::destroy(_M_get_Node_allocator(), __val);
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv		//
// /usr/include/c++/11/bits/list.tcc:77: 	  _Node_alloc_traits::destroy(_M_get_Node_allocator(), __val);
	ldr	x1, [sp, 56]	//, __val
	bl	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_		//
// /usr/include/c++/11/bits/list.tcc:81: 	  _M_put_node(__tmp);
	ldr	x1, [sp, 48]	//, __tmp
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E		//
.L188:
// /usr/include/c++/11/bits/list.tcc:71:       while (__cur != &_M_impl._M_node)
	ldr	x0, [sp, 24]	// _2, this
	ldr	x1, [sp, 40]	// tmp99, __cur
	cmp	x1, x0	// tmp99, _2
	bne	.L189		//,
// /usr/include/c++/11/bits/list.tcc:83:     }
	nop	
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2497:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_:
.LFB2500:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __position, __position
	str	x2, [sp, 24]	// __args#0, __args#0
// /usr/include/c++/11/bits/stl_list.h:1911: 	 _Node* __tmp = _M_create_node(std::forward<_Args>(__args)...);
	ldr	x0, [sp, 24]	//, __args#0
	bl	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE		//
	mov	x1, x0	//, _1
	ldr	x0, [sp, 40]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_		//
	str	x0, [sp, 56]	// _10, __tmp
// /usr/include/c++/11/bits/stl_list.h:1912: 	 __tmp->_M_hook(__position._M_node);
	ldr	x0, [sp, 56]	// _2, __tmp
	ldr	x1, [sp, 32]	// _3, __position._M_node
	bl	_ZNSt8__detail15_List_node_base7_M_hookEPS0_		//
// /usr/include/c++/11/bits/stl_list.h:1913: 	 this->_M_inc_size(1);
	ldr	x0, [sp, 40]	// _4, this
	mov	x1, 1	//,
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm		//
// /usr/include/c++/11/bits/stl_list.h:1914:        }
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2500:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.section	.text._ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_,"axG",@progbits,_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_,comdat
	.align	2
	.weak	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_
	.type	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_, %function
_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_:
.LFB2510:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// __i, __i
	str	x1, [sp, 32]	// __n, __n
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:205:       typename iterator_traits<_InputIterator>::difference_type __d = __n;
	ldr	x0, [sp, 32]	// tmp93, __n
	str	x0, [sp, 56]	// tmp93, __d
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:206:       std::__advance(__i, __d, std::__iterator_category(__i));
	ldr	x0, [sp, 40]	//, __i
	bl	_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_		//
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:206:       std::__advance(__i, __d, std::__iterator_category(__i));
	mov	w2, w19	//, D.57154
	ldr	x1, [sp, 56]	//, __d
	ldr	x0, [sp, 40]	//, __i
	bl	_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag		//
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:207:     }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2510:
	.size	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_, .-_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E:
.LFB2511:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __position, __position
// /usr/include/c++/11/bits/stl_list.h:1921: 	this->_M_dec_size(1);
	ldr	x0, [sp, 40]	// _1, this
	mov	x1, 1	//,
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm		//
// /usr/include/c++/11/bits/stl_list.h:1922: 	__position._M_node->_M_unhook();
	ldr	x0, [sp, 32]	// _2, __position._M_node
// /usr/include/c++/11/bits/stl_list.h:1922: 	__position._M_node->_M_unhook();
	bl	_ZNSt8__detail15_List_node_base9_M_unhookEv		//
// /usr/include/c++/11/bits/stl_list.h:1923: 	_Node* __n = static_cast<_Node*>(__position._M_node);
	ldr	x0, [sp, 32]	// tmp98, __position._M_node
	str	x0, [sp, 56]	// tmp98, __n
// /usr/include/c++/11/bits/stl_list.h:1925: 	_Node_alloc_traits::destroy(_M_get_Node_allocator(), __n->_M_valptr());
	ldr	x0, [sp, 40]	// _3, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv		//
	mov	x19, x0	// _4,
// /usr/include/c++/11/bits/stl_list.h:1925: 	_Node_alloc_traits::destroy(_M_get_Node_allocator(), __n->_M_valptr());
	ldr	x0, [sp, 56]	//, __n
	bl	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv		//
	mov	x1, x0	//, _5
	mov	x0, x19	//, _4
	bl	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_		//
// /usr/include/c++/11/bits/stl_list.h:1930: 	_M_put_node(__n);
	ldr	x0, [sp, 40]	// _6, this
	ldr	x1, [sp, 56]	//, __n
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E		//
// /usr/include/c++/11/bits/stl_list.h:1931:       }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2511:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E
	.section	.text._ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv,"axG",@progbits,_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv,comdat
	.align	2
	.weak	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv
	.type	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv, %function
_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv:
.LFB2512:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:290:       _M_const_cast() const _GLIBCXX_NOEXCEPT
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp102,
	str	x1, [sp, 40]	// tmp102, D.57306
	mov	x1, 0	// tmp102
// /usr/include/c++/11/bits/stl_list.h:291:       { return iterator(const_cast<__detail::_List_node_base*>(_M_node)); }
	ldr	x0, [sp, 24]	// tmp97, this
	ldr	x1, [x0]	// _1, this_3(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:291:       { return iterator(const_cast<__detail::_List_node_base*>(_M_node)); }
	add	x0, sp, 32	// tmp98,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:291:       { return iterator(const_cast<__detail::_List_node_base*>(_M_node)); }
	ldr	x0, [sp, 32]	// D.57145, D.55817
	mov	x1, x0	// <retval>, D.57145
// /usr/include/c++/11/bits/stl_list.h:291:       { return iterator(const_cast<__detail::_List_node_base*>(_M_node)); }
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x3, [sp, 40]	// tmp103, D.57306
	ldr	x2, [x0]	// tmp104,
	subs	x3, x3, x2	// tmp103, tmp104
	mov	x2, 0	// tmp104
	beq	.L195		//,
	bl	__stack_chk_fail		//
.L195:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2512:
	.size	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv, .-_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_:
.LFB2516:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2516
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __args#0, __args#0
// /usr/include/c++/11/bits/stl_list.h:632: 	_M_create_node(_Args&&... __args)
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp110,
	str	x1, [sp, 88]	// tmp110, D.57308
	mov	x1, 0	// tmp110
// /usr/include/c++/11/bits/stl_list.h:634: 	  auto __p = this->_M_get_node();
	ldr	x0, [sp, 40]	// _1, this
.LEHB18:
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv		//
.LEHE18:
	str	x0, [sp, 56]	// _9, __p
// /usr/include/c++/11/bits/stl_list.h:635: 	  auto& __alloc = _M_get_Node_allocator();
	ldr	x0, [sp, 40]	// _2, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv		//
	str	x0, [sp, 64]	//, __alloc
// /usr/include/c++/11/bits/stl_list.h:636: 	  __allocated_ptr<_Node_alloc_type> __guard{__alloc, __p};
	add	x0, sp, 72	// tmp102,,
	ldr	x2, [sp, 56]	//, __p
	ldr	x1, [sp, 64]	//, __alloc
	bl	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC1ERS8_PS7_		//
// /usr/include/c++/11/bits/stl_list.h:637: 	  _Node_alloc_traits::construct(__alloc, __p->_M_valptr(),
	ldr	x0, [sp, 56]	//, __p
	bl	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv		//
	mov	x19, x0	// _3,
	ldr	x0, [sp, 32]	//, __args#0
	bl	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE		//
	mov	x2, x0	//, _4
	mov	x1, x19	//, _3
	ldr	x0, [sp, 64]	//, __alloc
.LEHB19:
	bl	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_		//
.LEHE19:
// /usr/include/c++/11/bits/stl_list.h:639: 	  __guard = nullptr;
	add	x0, sp, 72	// tmp103,,
	mov	x1, 0	//,
	bl	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn		//
// /usr/include/c++/11/bits/stl_list.h:640: 	  return __p;
	ldr	x19, [sp, 56]	// _19, __p
// /usr/include/c++/11/bits/stl_list.h:641: 	}
	add	x0, sp, 72	// tmp104,,
	bl	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED1Ev		//
// /usr/include/c++/11/bits/stl_list.h:640: 	  return __p;
	mov	x1, x19	// <retval>, _19
// /usr/include/c++/11/bits/stl_list.h:641: 	}
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp108, tmp109,
	ldr	x3, [sp, 88]	// tmp111, D.57308
	ldr	x2, [x0]	// tmp112,
	subs	x3, x3, x2	// tmp111, tmp112
	mov	x2, 0	// tmp112
	beq	.L199		//,
	b	.L201		//
.L200:
	mov	x19, x0	// tmp107,
	add	x0, sp, 72	// tmp106,,
	bl	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED1Ev		//
	mov	x0, x19	// D.57307, tmp107
.LEHB20:
	bl	_Unwind_Resume		//
.LEHE20:
.L201:
	bl	__stack_chk_fail		//
.L199:
	mov	x0, x1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2516:
	.section	.gcc_except_table
.LLSDA2516:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2516-.LLSDACSB2516
.LLSDACSB2516:
	.uleb128 .LEHB18-.LFB2516
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB2516
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L200-.LFB2516
	.uleb128 0
	.uleb128 .LEHB20-.LFB2516
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE2516:
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_,comdat
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm:
.LFB2517:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// __n, __n
// /usr/include/c++/11/bits/stl_list.h:408:       void _M_inc_size(size_t __n) { _M_impl._M_node._M_size += __n; }
	ldr	x0, [sp, 8]	// tmp94, this
	ldr	x1, [x0, 16]	// _1, this_4(D)->_M_impl._M_node._M_size
	ldr	x0, [sp]	// tmp95, __n
	add	x1, x1, x0	// _2, _1, tmp95
	ldr	x0, [sp, 8]	// tmp96, this
	str	x1, [x0, 16]	// _2, this_4(D)->_M_impl._M_node._M_size
// /usr/include/c++/11/bits/stl_list.h:408:       void _M_inc_size(size_t __n) { _M_impl._M_node._M_size += __n; }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2517:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm
	.section	.text._ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.type	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE, %function
_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB2549:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __t, __t
// /usr/include/c++/11/bits/move.h:78:     { return static_cast<_Tp&&>(__t); }
	ldr	x0, [sp, 8]	// _2, __t
// /usr/include/c++/11/bits/move.h:78:     { return static_cast<_Tp&&>(__t); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2549:
	.size	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE, .-_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.section	.text._ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, %function
_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv:
.LFB2550:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/ext/aligned_buffer.h:77:       { return static_cast<const _Tp*>(_M_addr()); }
	ldr	x0, [sp, 24]	//, this
	bl	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv		//
// /usr/include/c++/11/ext/aligned_buffer.h:77:       { return static_cast<const _Tp*>(_M_addr()); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2550:
	.size	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, .-_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.section	.text._ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, %function
_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv:
.LFB2554:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/ext/aligned_buffer.h:73:       { return static_cast<_Tp*>(_M_addr()); }
	ldr	x0, [sp, 24]	//, this
	bl	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv		//
// /usr/include/c++/11/ext/aligned_buffer.h:73:       { return static_cast<_Tp*>(_M_addr()); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2554:
	.size	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.section	.text._ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv,"axG",@progbits,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv,comdat
	.align	2
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv
	.type	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv, %function
_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv:
.LFB2555:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/bits/stl_list.h:234: 	_M_node = _M_node->_M_prev;
	ldr	x0, [sp, 8]	// tmp96, this
	ldr	x0, [x0]	// _1, this_4(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:234: 	_M_node = _M_node->_M_prev;
	ldr	x1, [x0, 8]	// _2, _1->_M_prev
// /usr/include/c++/11/bits/stl_list.h:234: 	_M_node = _M_node->_M_prev;
	ldr	x0, [sp, 8]	// tmp97, this
	str	x1, [x0]	// _2, this_4(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:235: 	return *this;
	ldr	x0, [sp, 8]	// _6, this
// /usr/include/c++/11/bits/stl_list.h:236:       }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2555:
	.size	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv, .-_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev:
.LFB2557:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/ext/new_allocator.h:79:       new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2557:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv:
.LFB2559:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/bits/stl_list.h:453:       { return _M_impl; }
	ldr	x0, [sp, 8]	// _2, this
// /usr/include/c++/11/bits/stl_list.h:453:       { return _M_impl; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2559:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_:
.LFB2560:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __a, __a
	str	x1, [sp, 16]	// __p, __p
// /usr/include/c++/11/bits/alloc_traits.h:535: 	  __a.destroy(__p);
	ldr	x1, [sp, 16]	//, __p
	ldr	x0, [sp, 24]	//, __a
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_		//
// /usr/include/c++/11/bits/alloc_traits.h:539: 	}
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2560:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E:
.LFB2561:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2561
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __p, __p
// /usr/include/c++/11/bits/stl_list.h:446:       { _Node_alloc_traits::deallocate(_M_impl, __p, 1); }
	ldr	x0, [sp, 24]	// _1, this
// /usr/include/c++/11/bits/stl_list.h:446:       { _Node_alloc_traits::deallocate(_M_impl, __p, 1); }
	mov	x2, 1	//,
	ldr	x1, [sp, 16]	//, __p
	bl	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m		//
// /usr/include/c++/11/bits/stl_list.h:446:       { _Node_alloc_traits::deallocate(_M_impl, __p, 1); }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2561:
	.section	.gcc_except_table
.LLSDA2561:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2561-.LLSDACSB2561
.LLSDACSB2561:
.LLSDACSE2561:
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E,comdat
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E
	.section	.text._ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,"axG",@progbits,_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.type	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE, %function
_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB2562:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __t, __t
// /usr/include/c++/11/bits/move.h:78:     { return static_cast<_Tp&&>(__t); }
	ldr	x0, [sp, 8]	// _2, __t
// /usr/include/c++/11/bits/move.h:78:     { return static_cast<_Tp&&>(__t); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2562:
	.size	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE, .-_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_:
.LFB2563:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __args#0, __args#0
// /usr/include/c++/11/bits/stl_list.h:632: 	_M_create_node(_Args&&... __args)
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x1, [x0]	// tmp107,
	str	x1, [sp, 88]	// tmp107, D.57309
	mov	x1, 0	// tmp107
// /usr/include/c++/11/bits/stl_list.h:634: 	  auto __p = this->_M_get_node();
	ldr	x0, [sp, 40]	// _1, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv		//
	str	x0, [sp, 56]	// _8, __p
// /usr/include/c++/11/bits/stl_list.h:635: 	  auto& __alloc = _M_get_Node_allocator();
	ldr	x0, [sp, 40]	// _2, this
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv		//
	str	x0, [sp, 64]	//, __alloc
// /usr/include/c++/11/bits/stl_list.h:636: 	  __allocated_ptr<_Node_alloc_type> __guard{__alloc, __p};
	add	x0, sp, 72	// tmp101,,
	ldr	x2, [sp, 56]	//, __p
	ldr	x1, [sp, 64]	//, __alloc
	bl	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC1ERS8_PS7_		//
// /usr/include/c++/11/bits/stl_list.h:637: 	  _Node_alloc_traits::construct(__alloc, __p->_M_valptr(),
	ldr	x0, [sp, 56]	//, __p
	bl	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv		//
	mov	x19, x0	// _3,
	ldr	x0, [sp, 32]	//, __args#0
	bl	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE		//
	mov	x2, x0	//, _4
	mov	x1, x19	//, _3
	ldr	x0, [sp, 64]	//, __alloc
	bl	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_		//
// /usr/include/c++/11/bits/stl_list.h:639: 	  __guard = nullptr;
	add	x0, sp, 72	// tmp102,,
	mov	x1, 0	//,
	bl	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn		//
// /usr/include/c++/11/bits/stl_list.h:640: 	  return __p;
	ldr	x19, [sp, 56]	// _18, __p
// /usr/include/c++/11/bits/stl_list.h:641: 	}
	add	x0, sp, 72	// tmp103,,
	bl	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED1Ev		//
// /usr/include/c++/11/bits/stl_list.h:640: 	  return __p;
	mov	x1, x19	// <retval>, _18
// /usr/include/c++/11/bits/stl_list.h:641: 	}
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp105, tmp106,
	ldr	x3, [sp, 88]	// tmp108, D.57309
	ldr	x2, [x0]	// tmp109,
	subs	x3, x3, x2	// tmp108, tmp109
	mov	x2, 0	// tmp109
	beq	.L220		//,
	bl	__stack_chk_fail		//
.L220:
	mov	x0, x1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2563:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm:
.LFB2568:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// __n, __n
// /usr/include/c++/11/bits/stl_list.h:410:       void _M_dec_size(size_t __n) { _M_impl._M_node._M_size -= __n; }
	ldr	x0, [sp, 8]	// tmp94, this
	ldr	x1, [x0, 16]	// _1, this_4(D)->_M_impl._M_node._M_size
	ldr	x0, [sp]	// tmp95, __n
	sub	x1, x1, x0	// _2, _1, tmp95
	ldr	x0, [sp, 8]	// tmp96, this
	str	x1, [x0, 16]	// _2, this_4(D)->_M_impl._M_node._M_size
// /usr/include/c++/11/bits/stl_list.h:410:       void _M_dec_size(size_t __n) { _M_impl._M_node._M_size -= __n; }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2568:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv:
.LFB2570:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/stl_list.h:442:       { return _Node_alloc_traits::allocate(_M_impl, 1); }
	ldr	x0, [sp, 24]	// _1, this
// /usr/include/c++/11/bits/stl_list.h:442:       { return _Node_alloc_traits::allocate(_M_impl, 1); }
	mov	x1, 1	//,
	bl	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m		//
// /usr/include/c++/11/bits/stl_list.h:442:       { return _Node_alloc_traits::allocate(_M_impl, 1); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2570:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC5ERS8_PS7_,comdat
	.align	2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_, %function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_:
.LFB2572:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __a, __a
	str	x2, [sp, 24]	// __ptr, __ptr
// /usr/include/c++/11/bits/allocated_ptr.h:54:       : _M_alloc(std::__addressof(__a)), _M_ptr(__ptr)
	ldr	x0, [sp, 32]	//, __a
	bl	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_		//
	mov	x1, x0	// _1,
// /usr/include/c++/11/bits/allocated_ptr.h:54:       : _M_alloc(std::__addressof(__a)), _M_ptr(__ptr)
	ldr	x0, [sp, 40]	// tmp93, this
	str	x1, [x0]	// _1, this_3(D)->_M_alloc
// /usr/include/c++/11/bits/allocated_ptr.h:54:       : _M_alloc(std::__addressof(__a)), _M_ptr(__ptr)
	ldr	x0, [sp, 40]	// tmp94, this
	ldr	x1, [sp, 24]	// tmp95, __ptr
	str	x1, [x0, 8]	// tmp95, this_3(D)->_M_ptr
// /usr/include/c++/11/bits/allocated_ptr.h:55:       { }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2572:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_, .-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC1ERS8_PS7_
	.set	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC1ERS8_PS7_,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED5Ev,comdat
	.align	2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev, %function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev:
.LFB2575:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2575
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/bits/allocated_ptr.h:73: 	if (_M_ptr != nullptr)
	ldr	x0, [sp, 24]	// tmp95, this
	ldr	x0, [x0, 8]	// _1, this_6(D)->_M_ptr
// /usr/include/c++/11/bits/allocated_ptr.h:73: 	if (_M_ptr != nullptr)
	cmp	x0, 0	// _1,
	beq	.L227		//,
// /usr/include/c++/11/bits/allocated_ptr.h:74: 	  std::allocator_traits<_Alloc>::deallocate(*_M_alloc, _M_ptr, 1);
	ldr	x0, [sp, 24]	// tmp96, this
	ldr	x3, [x0]	// _2, this_6(D)->_M_alloc
// /usr/include/c++/11/bits/allocated_ptr.h:74: 	  std::allocator_traits<_Alloc>::deallocate(*_M_alloc, _M_ptr, 1);
	ldr	x0, [sp, 24]	// tmp97, this
	ldr	x0, [x0, 8]	// _3, this_6(D)->_M_ptr
	mov	x2, 1	//,
	mov	x1, x0	//, _3
	mov	x0, x3	//, _2
	bl	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m		//
.L227:
// /usr/include/c++/11/bits/allocated_ptr.h:75:       }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2575:
	.section	.gcc_except_table
.LLSDA2575:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2575-.LLSDACSB2575
.LLSDACSB2575:
.LLSDACSE2575:
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED5Ev,comdat
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev, .-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED1Ev
	.set	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED1Ev,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_:
.LFB2577:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __a, __a
	str	x1, [sp, 32]	// __p, __p
	str	x2, [sp, 24]	// __args#0, __args#0
// /usr/include/c++/11/bits/alloc_traits.h:516: 	  __a.construct(__p, std::forward<_Args>(__args)...);
	ldr	x0, [sp, 24]	//, __args#0
	bl	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE		//
	mov	x2, x0	//, _1
	ldr	x1, [sp, 32]	//, __p
	ldr	x0, [sp, 40]	//, __a
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_		//
// /usr/include/c++/11/bits/alloc_traits.h:520: 	}
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2577:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn,comdat
	.align	2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn, %function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn:
.LFB2578:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// D.56279, D.56279
// /usr/include/c++/11/bits/allocated_ptr.h:81: 	_M_ptr = nullptr;
	ldr	x0, [sp, 8]	// tmp94, this
	str	xzr, [x0, 8]	//, this_2(D)->_M_ptr
// /usr/include/c++/11/bits/allocated_ptr.h:82: 	return *this;
	ldr	x0, [sp, 8]	// _4, this
// /usr/include/c++/11/bits/allocated_ptr.h:83:       }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2578:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn, .-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn
	.section	.text._ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, %function
_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv:
.LFB2594:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/ext/aligned_buffer.h:69:       { return static_cast<const void*>(&_M_storage); }
	ldr	x0, [sp, 8]	// _2, this
// /usr/include/c++/11/ext/aligned_buffer.h:69:       { return static_cast<const void*>(&_M_storage); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2594:
	.size	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, .-_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.section	.text._ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, %function
_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv:
.LFB2597:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/ext/aligned_buffer.h:65:       { return static_cast<void*>(&_M_storage); }
	ldr	x0, [sp, 8]	// _2, this
// /usr/include/c++/11/ext/aligned_buffer.h:65:       { return static_cast<void*>(&_M_storage); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2597:
	.size	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_:
.LFB2598:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __p, __p
// /usr/include/c++/11/ext/new_allocator.h:168: 	{ __p->~_Up(); }
	ldr	x0, [sp, 16]	//, __p
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// /usr/include/c++/11/ext/new_allocator.h:168: 	{ __p->~_Up(); }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2598:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m:
.LFB2599:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __a, __a
	str	x1, [sp, 32]	// __p, __p
	str	x2, [sp, 24]	// __n, __n
// /usr/include/c++/11/bits/alloc_traits.h:496:       { __a.deallocate(__p, __n); }
	ldr	x2, [sp, 24]	//, __n
	ldr	x1, [sp, 32]	//, __p
	ldr	x0, [sp, 40]	//, __a
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m		//
// /usr/include/c++/11/bits/alloc_traits.h:496:       { __a.deallocate(__p, __n); }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2599:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_:
.LFB2600:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __a, __a
	str	x1, [sp, 32]	// __p, __p
	str	x2, [sp, 24]	// __args#0, __args#0
// /usr/include/c++/11/bits/alloc_traits.h:516: 	  __a.construct(__p, std::forward<_Args>(__args)...);
	ldr	x0, [sp, 24]	//, __args#0
	bl	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE		//
	mov	x2, x0	//, _1
	ldr	x1, [sp, 32]	//, __p
	ldr	x0, [sp, 40]	//, __a
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_		//
// /usr/include/c++/11/bits/alloc_traits.h:520: 	}
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2600:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m:
.LFB2605:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __a, __a
	str	x1, [sp, 16]	// __n, __n
// /usr/include/c++/11/bits/alloc_traits.h:464:       { return __a.allocate(__n); }
	mov	x2, 0	//,
	ldr	x1, [sp, 16]	//, __n
	ldr	x0, [sp, 24]	//, __a
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv		//
// /usr/include/c++/11/bits/alloc_traits.h:464:       { return __a.allocate(__n); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2605:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m
	.section	.text._ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_,"axG",@progbits,_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_,comdat
	.align	2
	.weak	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_
	.type	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_, %function
_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_:
.LFB2606:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __r, __r
// /usr/include/c++/11/bits/move.h:50:     { return __builtin_addressof(__r); }
	ldr	x0, [sp, 8]	// _2, __r
// /usr/include/c++/11/bits/move.h:50:     { return __builtin_addressof(__r); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2606:
	.size	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_, .-_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_:
.LFB2607:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2607
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	str	x21, [sp, 32]	//,
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 72]	// this, this
	str	x1, [sp, 64]	// __p, __p
	str	x2, [sp, 56]	// __args#0, __args#0
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	x0, [sp, 56]	//, __args#0
	bl	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE		//
	mov	x21, x0	// _4,
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	x19, [sp, 64]	// _6, __p
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x1, x19	//, _6
	mov	x0, 32	//,
	bl	_ZnwmPv		//
	mov	x20, x0	// _8,
	mov	x1, x21	//, _4
	mov	x0, x20	//, _8
.LEHB21:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_		//
.LEHE21:
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	b	.L245		//
.L244:
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x21, x0	// tmp96,
	mov	x1, x19	//, _6
	mov	x0, x20	//, _8
	bl	_ZdlPvS_		//
	mov	x0, x21	// D.57310, tmp96
.LEHB22:
	bl	_Unwind_Resume		//
.LEHE22:
.L245:
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldp	x19, x20, [sp, 16]	//,,
	ldr	x21, [sp, 32]	//,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2607:
	.section	.gcc_except_table
.LLSDA2607:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2607-.LLSDACSB2607
.LLSDACSB2607:
	.uleb128 .LEHB21-.LFB2607
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L244-.LFB2607
	.uleb128 0
	.uleb128 .LEHB22-.LFB2607
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE2607:
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m:
.LFB2616:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __p, __p
	str	x2, [sp, 24]	// __t, __t
// /usr/include/c++/11/ext/new_allocator.h:145: 	::operator delete(__p
	ldr	x0, [sp, 32]	//, __p
	bl	_ZdlPv		//
// /usr/include/c++/11/ext/new_allocator.h:150:       }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2616:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_:
.LFB2617:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 56]	// this, this
	str	x1, [sp, 48]	// __p, __p
	str	x2, [sp, 40]	// __args#0, __args#0
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	x0, [sp, 40]	//, __args#0
	bl	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE		//
	mov	x19, x0	// _4,
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	x0, [sp, 48]	// _6, __p
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x1, x0	//, _6
	mov	x0, 32	//,
	bl	_ZnwmPv		//
	mov	x1, x19	//, _4
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_		//
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2617:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv:
.LFB2619:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __n, __n
	str	x2, [sp, 24]	// D.56680, D.56680
// /usr/include/c++/11/ext/new_allocator.h:111: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	ldr	x0, [sp, 40]	//, this
	bl	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv		//
	mov	x1, x0	// _1,
// /usr/include/c++/11/ext/new_allocator.h:111: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	ldr	x0, [sp, 32]	// tmp101, __n
	cmp	x0, x1	// tmp101, _1
	cset	w0, hi	// tmp102,
	and	w0, w0, 255	// _2, tmp100
// /usr/include/c++/11/ext/new_allocator.h:111: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	and	x0, x0, 255	// _3, _2
	cmp	x0, 0	// _4,
	cset	w0, ne	// tmp104,
	and	w0, w0, 255	// retval.5_10, tmp103
// /usr/include/c++/11/ext/new_allocator.h:111: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmp	w0, 0	// retval.5_10,
	beq	.L249		//,
// /usr/include/c++/11/ext/new_allocator.h:115: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	ldr	x1, [sp, 32]	// tmp105, __n
	mov	x0, 6148914691236517205	// tmp106,
	movk	x0, 0x555, lsl 48	// tmp106,,
	cmp	x1, x0	// tmp105, tmp106
	bls	.L250		//,
// /usr/include/c++/11/ext/new_allocator.h:116: 	      std::__throw_bad_array_new_length();
	bl	_ZSt28__throw_bad_array_new_lengthv		//
.L250:
// /usr/include/c++/11/ext/new_allocator.h:117: 	    std::__throw_bad_alloc();
	bl	_ZSt17__throw_bad_allocv		//
.L249:
// /usr/include/c++/11/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	ldr	x1, [sp, 32]	// tmp107, __n
	mov	x0, x1	// tmp108, tmp107
	lsl	x0, x0, 1	// tmp109, tmp108,
	add	x0, x0, x1	// tmp108, tmp108, tmp107
	lsl	x0, x0, 4	// tmp110, tmp108,
	bl	_Znwm		//
// /usr/include/c++/11/ext/new_allocator.h:128:       }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2619:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv:
.LFB2629:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/ext/new_allocator.h:200: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	mov	x0, -6148914691236517206	// _1,
	movk	x0, 0x2aa, lsl 48	// _1,,
// /usr/include/c++/11/ext/new_allocator.h:204:       }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2629:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2635:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	w0, [sp, 28]	// __initialize_p, __initialize_p
	str	w1, [sp, 24]	// __priority, __priority
// main.cpp:304: }
	ldr	w0, [sp, 28]	// tmp92, __initialize_p
	cmp	w0, 1	// tmp92,
	bne	.L256		//,
// main.cpp:304: }
	ldr	w1, [sp, 24]	// tmp93, __priority
	mov	w0, 65535	// tmp94,
	cmp	w1, w0	// tmp93, tmp94
	bne	.L256		//,
// /usr/include/c++/11/iostream:74:   static ios_base::Init __ioinit;
	adrp	x0, _ZStL8__ioinit	// tmp95,
	add	x0, x0, :lo12:_ZStL8__ioinit	//, tmp95,
	bl	_ZNSt8ios_base4InitC1Ev		//
	adrp	x0, __dso_handle	// tmp96,
	add	x2, x0, :lo12:__dso_handle	//, tmp96,
	adrp	x0, _ZStL8__ioinit	// tmp97,
	add	x1, x0, :lo12:_ZStL8__ioinit	//, tmp97,
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev	// tmp98,
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]	//, tmp98,
	bl	__cxa_atexit		//
.L256:
// main.cpp:304: }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2635:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z19display_memory_infomm, %function
_GLOBAL__sub_I__Z19display_memory_infomm:
.LFB2636:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// main.cpp:304: }
	mov	w1, 65535	//,
	mov	w0, 1	//,
	bl	_Z41__static_initialization_and_destruction_0ii		//
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2636:
	.size	_GLOBAL__sub_I__Z19display_memory_infomm, .-_GLOBAL__sub_I__Z19display_memory_infomm
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z19display_memory_infomm
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
