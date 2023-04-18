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
	str	x1, [sp, 632]	// tmp136, D.57061
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
	ldr	x2, [sp, 632]	// tmp137, D.57061
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
	mov	x0, x19	// D.57060, tmp129
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
	str	x1, [sp, 600]	// tmp119, D.57065
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
	ldr	x2, [sp, 600]	// tmp120, D.57065
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
	mov	x0, x19	// D.57064, tmp116
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
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev:
.LFB2086:
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
.LFE2086:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD1Ev
	.set	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD1Ev,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implD2Ev
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB2088:
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
.LFE2088:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB2090:
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
.LFE2090:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB2093:
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
.LFE2093:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.rodata
	.align	3
.LC1:
	.string	""
	.align	3
.LC2:
	.string	" C++ Nano Clone (Ctrl+X: Exit, Ctrl+O: Save) "
	.align	3
.LC3:
	.string	"%s"
	.align	3
.LC4:
	.string	"^X:Exit  ^O:Save"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2081:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2081
	stp	x29, x30, [sp, -240]!	//,,,
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -224
	str	w0, [sp, 44]	// argc, argc
	str	x1, [sp, 32]	// argv, argv
// main.cpp:41: int main(int argc, char *argv[]) {
	adrp	x0, :got:__stack_chk_guard	// tmp197,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp196, tmp197,
	ldr	x1, [x0]	// tmp402,
	str	x1, [sp, 232]	// tmp402, D.57068
	mov	x1, 0	// tmp402
.LEHB7:
// main.cpp:42:     initscr();
	bl	initscr		//
// main.cpp:43:     raw();
	bl	raw		//
// main.cpp:44:     keypad(stdscr, TRUE);
	adrp	x0, :got:stdscr	// tmp199,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp198, tmp199,
	ldr	x0, [x0]	// stdscr.15_1, stdscr
	mov	w1, 1	//,
	bl	keypad		//
// main.cpp:45:     noecho();
	bl	noecho		//
.LEHE7:
// main.cpp:47:     size_t memory = 0;
	str	xzr, [sp, 72]	//, memory
// main.cpp:48:     size_t nodes = 0;
	str	xzr, [sp, 80]	//, nodes
// main.cpp:51:     int cursor_x = 0;
	str	wzr, [sp, 48]	//, cursor_x
// main.cpp:52:     int cursor_y = 3;
	mov	w0, 3	// tmp200,
	str	w0, [sp, 52]	// tmp200, cursor_y
// main.cpp:54:     int scroll_offset = 0;
	str	wzr, [sp, 56]	//, scroll_offset
// main.cpp:56:     std::list<std::string> lines;
	add	x0, sp, 144	// tmp201,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev		//
// main.cpp:57:     std::string filename;
	add	x0, sp, 168	// tmp202,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:59:     if (argc > 1) {
	ldr	w0, [sp, 44]	// tmp203, argc
	cmp	w0, 1	// tmp203,
	ble	.L36		//,
// main.cpp:60:         filename = argv[1];
	ldr	x0, [sp, 32]	// tmp204, argv
	add	x0, x0, 8	// _2, tmp204,
	ldr	x1, [x0]	// _3, *_2
	add	x0, sp, 168	// tmp205,,
.LEHB8:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc		//
// main.cpp:61:         open_file(filename.c_str(), lines, memory, nodes);
	add	x0, sp, 168	// tmp206,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x4, x0	// _4,
	add	x2, sp, 80	// tmp207,,
	add	x1, sp, 72	// tmp208,,
	add	x0, sp, 144	// tmp209,,
	mov	x3, x2	//, tmp207
	mov	x2, x1	//, tmp208
	mov	x1, x0	//, tmp209
	mov	x0, x4	//, _4
	bl	_Z9open_filePKcRNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEERmSB_		//
.LEHE8:
.L36:
// main.cpp:64:     if (lines.empty()) {
	add	x0, sp, 144	// tmp210,,
	bl	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv		//
	and	w0, w0, 255	// retval.16_149, tmp211
// main.cpp:64:     if (lines.empty()) {
	cmp	w0, 0	// retval.16_149,
	beq	.L37		//,
// main.cpp:65:         lines.push_back("");
	add	x0, sp, 120	// tmp212,,
	bl	_ZNSaIcEC1Ev		//
	add	x0, sp, 120	// tmp213,,
	add	x3, sp, 200	// tmp214,,
	mov	x2, x0	//, tmp213
	adrp	x0, .LC1	// tmp215,
	add	x1, x0, :lo12:.LC1	//, tmp215,
	mov	x0, x3	//, tmp214
.LEHB9:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE9:
// main.cpp:65:         lines.push_back("");
	add	x1, sp, 200	// tmp216,,
	add	x0, sp, 144	// tmp217,,
.LEHB10:
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_		//
.LEHE10:
// main.cpp:65:         lines.push_back("");
	add	x0, sp, 200	// tmp218,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 120	// tmp219,,
	bl	_ZNSaIcED1Ev		//
// main.cpp:66:         nodes++;
	ldr	x0, [sp, 80]	// nodes.17_5, nodes
	add	x0, x0, 1	// _6, nodes.17_5,
	str	x0, [sp, 80]	// _6, nodes
.L37:
// main.cpp:69:     std::list<std::string>::iterator current_line = lines.begin();
	add	x0, sp, 144	// tmp220,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv		//
	str	x0, [sp, 88]	// tmp221, current_line
.L67:
.LEHB11:
// main.cpp:72:         clear();
	bl	clear		//
// main.cpp:75:         attron(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp223,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp222, tmp223,
	ldr	x0, [x0]	// stdscr.18_7, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_on		//
// main.cpp:76:         mvprintw(0, 0, " C++ Nano Clone (Ctrl+X: Exit, Ctrl+O: Save) ");
	adrp	x0, .LC2	// tmp224,
	add	x2, x0, :lo12:.LC2	//, tmp224,
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	mvprintw		//
// main.cpp:77:         attroff(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp226,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp225, tmp226,
	ldr	x0, [x0]	// stdscr.19_8, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_off		//
// main.cpp:80:         display_memory_info(memory, nodes);
	ldr	x0, [sp, 72]	// memory.20_9, memory
	ldr	x1, [sp, 80]	// nodes.21_10, nodes
	bl	_Z19display_memory_infomm		//
// main.cpp:83:         int y = 3;
	mov	w0, 3	// tmp227,
	str	w0, [sp, 60]	// tmp227, y
// main.cpp:84:         int line_count = 0;
	str	wzr, [sp, 64]	//, line_count
// main.cpp:85:         for (const auto &line : lines) {
	add	x0, sp, 144	// tmp228,,
	str	x0, [sp, 128]	// tmp228, __for_range
	ldr	x0, [sp, 128]	//, __for_range
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv		//
	str	x0, [sp, 112]	// tmp229, MEM[(struct _List_iterator *)_334]
	ldr	x0, [sp, 128]	//, __for_range
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 120]	// tmp230, MEM[(struct _List_iterator *)_333]
// main.cpp:85:         for (const auto &line : lines) {
	b	.L38		//
.L40:
// main.cpp:85:         for (const auto &line : lines) {
	add	x0, sp, 112	// tmp231,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	str	x0, [sp, 136]	//, line
// main.cpp:86:             if (line_count >= scroll_offset && y < LINES - 1) {
	ldr	w1, [sp, 64]	// tmp232, line_count
	ldr	w0, [sp, 56]	// tmp233, scroll_offset
	cmp	w1, w0	// tmp232, tmp233
	blt	.L39		//,
// main.cpp:86:             if (line_count >= scroll_offset && y < LINES - 1) {
	adrp	x0, :got:LINES	// tmp235,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp234, tmp235,
	ldr	w0, [x0]	// LINES.22_11, LINES
	sub	w0, w0, #1	// _12, LINES.22_11,
// main.cpp:86:             if (line_count >= scroll_offset && y < LINES - 1) {
	ldr	w1, [sp, 60]	// tmp236, y
	cmp	w1, w0	// tmp236, _12
	bge	.L39		//,
// main.cpp:87:                 mvprintw(y++, 0, "%s", line.c_str());
	ldr	w19, [sp, 60]	// y.23_13, y
	add	w0, w19, 1	// tmp237, y.23_13,
	str	w0, [sp, 60]	// tmp237, y
	ldr	x0, [sp, 136]	//, line
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x3, x0	//, _14
	adrp	x0, .LC3	// tmp238,
	add	x2, x0, :lo12:.LC3	//, tmp238,
	mov	w1, 0	//,
	mov	w0, w19	//, y.23_13
	bl	mvprintw		//
.L39:
// main.cpp:89:             line_count++;
	ldr	w0, [sp, 64]	// tmp240, line_count
	add	w0, w0, 1	// tmp239, tmp240,
	str	w0, [sp, 64]	// tmp239, line_count
// main.cpp:85:         for (const auto &line : lines) {
	add	x0, sp, 112	// tmp241,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv		//
.L38:
// main.cpp:85:         for (const auto &line : lines) {
	add	x1, sp, 120	// tmp242,,
	add	x0, sp, 112	// tmp243,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.24_174, tmp244
	cmp	w0, 0	// retval.24_174,
	bne	.L40		//,
// main.cpp:93:         mvprintw(LINES - 1, 0, "^X:Exit  ^O:Save");
	adrp	x0, :got:LINES	// tmp246,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp245, tmp246,
	ldr	w0, [x0]	// LINES.25_15, LINES
	sub	w3, w0, #1	// _16, LINES.25_15,
	adrp	x0, .LC4	// tmp247,
	add	x2, x0, :lo12:.LC4	//, tmp247,
	mov	w1, 0	//,
	mov	w0, w3	//, _16
	bl	mvprintw		//
// main.cpp:96:         move(cursor_y, cursor_x);
	ldr	w1, [sp, 48]	//, cursor_x
	ldr	w0, [sp, 52]	//, cursor_y
	bl	move		//
// main.cpp:98:         ch = getch();
	adrp	x0, :got:stdscr	// tmp249,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp248, tmp249,
	ldr	x0, [x0]	// stdscr.26_17, stdscr
	bl	wgetch		//
	str	w0, [sp, 68]	// _180, ch
// main.cpp:100:         switch (ch) {
	ldr	w0, [sp, 68]	// tmp250, ch
	cmp	w0, 330	// tmp250,
	beq	.L41		//,
	ldr	w0, [sp, 68]	// tmp251, ch
	cmp	w0, 330	// tmp251,
	bgt	.L42		//,
	ldr	w0, [sp, 68]	// tmp252, ch
	cmp	w0, 263	// tmp252,
	beq	.L43		//,
	ldr	w0, [sp, 68]	// tmp253, ch
	cmp	w0, 263	// tmp253,
	bgt	.L42		//,
	ldr	w0, [sp, 68]	// tmp254, ch
	cmp	w0, 261	// tmp254,
	beq	.L44		//,
	ldr	w0, [sp, 68]	// tmp255, ch
	cmp	w0, 261	// tmp255,
	bgt	.L42		//,
	ldr	w0, [sp, 68]	// tmp256, ch
	cmp	w0, 260	// tmp256,
	beq	.L45		//,
	ldr	w0, [sp, 68]	// tmp257, ch
	cmp	w0, 260	// tmp257,
	bgt	.L42		//,
	ldr	w0, [sp, 68]	// tmp258, ch
	cmp	w0, 259	// tmp258,
	beq	.L46		//,
	ldr	w0, [sp, 68]	// tmp259, ch
	cmp	w0, 259	// tmp259,
	bgt	.L42		//,
	ldr	w0, [sp, 68]	// tmp260, ch
	cmp	w0, 258	// tmp260,
	beq	.L47		//,
	ldr	w0, [sp, 68]	// tmp261, ch
	cmp	w0, 258	// tmp261,
	bgt	.L42		//,
	ldr	w0, [sp, 68]	// tmp262, ch
	cmp	w0, 24	// tmp262,
	beq	.L48		//,
	ldr	w0, [sp, 68]	// tmp263, ch
	cmp	w0, 24	// tmp263,
	bgt	.L42		//,
	ldr	w0, [sp, 68]	// tmp264, ch
	cmp	w0, 10	// tmp264,
	beq	.L49		//,
	ldr	w0, [sp, 68]	// tmp265, ch
	cmp	w0, 15	// tmp265,
	beq	.L50		//,
	b	.L42		//
.L48:
// main.cpp:102:             endwin();
	bl	endwin		//
// main.cpp:103:             return 0;
	mov	w19, 0	// _281,
// main.cpp:206: }
	add	x0, sp, 168	// tmp266,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 144	// tmp267,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev		//
	mov	w1, w19	// <retval>, _281
	adrp	x0, :got:__stack_chk_guard	// tmp401,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp400, tmp401,
	ldr	x3, [sp, 232]	// tmp403, D.57068
	ldr	x2, [x0]	// tmp404,
	subs	x3, x3, x2	// tmp403, tmp404
	mov	x2, 0	// tmp404
	beq	.L72		//,
	b	.L77		//
.L50:
// main.cpp:105:             save_file(filename.c_str(), lines);
	add	x0, sp, 168	// tmp268,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x2, x0	// _18,
	add	x0, sp, 144	// tmp269,,
	mov	x1, x0	//, tmp269
	mov	x0, x2	//, _18
	bl	_Z9save_filePKcRKNSt7__cxx114listINS1_12basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE		//
// main.cpp:106:             break;
	b	.L52		//
.L41:
// main.cpp:108:             if (cursor_x < static_cast<int>((*current_line).size())) {
	add	x0, sp, 88	// tmp270,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:108:             if (cursor_x < static_cast<int>((*current_line).size())) {
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:108:             if (cursor_x < static_cast<int>((*current_line).size())) {
	mov	w1, w0	// _21, _20
	ldr	w0, [sp, 48]	// tmp272, cursor_x
	cmp	w0, w1	// tmp272, _21
	cset	w0, lt	// tmp273,
	and	w0, w0, 255	// retval.27_184, tmp271
// main.cpp:108:             if (cursor_x < static_cast<int>((*current_line).size())) {
	cmp	w0, 0	// retval.27_184,
	beq	.L53		//,
// main.cpp:109:                 memory -= sizeof(char);
	ldr	x0, [sp, 72]	// memory.28_22, memory
	sub	x0, x0, #1	// _23, memory.28_22,
	str	x0, [sp, 72]	// _23, memory
// main.cpp:110:                 (*current_line).erase(cursor_x, 1);
	add	x0, sp, 88	// tmp274,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x3, x0	// _24,
// main.cpp:110:                 (*current_line).erase(cursor_x, 1);
	ldrsw	x0, [sp, 48]	// _25, cursor_x
	mov	x2, 1	//,
	mov	x1, x0	//, _25
	mov	x0, x3	//, _24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:120:             break;
	b	.L78		//
.L53:
// main.cpp:111:             } else if (std::next(current_line) != lines.end()) {
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 96]	// tmp275, D.52516
// main.cpp:111:             } else if (std::next(current_line) != lines.end()) {
	add	x0, sp, 144	// tmp276,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 120]	// tmp277, MEM[(struct _List_iterator *)_333]
// main.cpp:111:             } else if (std::next(current_line) != lines.end()) {
	add	x1, sp, 120	// tmp278,,
	add	x0, sp, 96	// tmp279,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.29_188, tmp280
// main.cpp:111:             } else if (std::next(current_line) != lines.end()) {
	cmp	w0, 0	// retval.29_188,
	beq	.L78		//,
// main.cpp:112:                 memory -= sizeof(std::string);
	ldr	x0, [sp, 72]	// memory.30_26, memory
	sub	x0, x0, #32	// _27, memory.30_26,
	str	x0, [sp, 72]	// _27, memory
// main.cpp:113:                 nodes--;
	ldr	x0, [sp, 80]	// nodes.31_28, nodes
	sub	x0, x0, #1	// _29, nodes.31_28,
	str	x0, [sp, 80]	// _29, nodes
// main.cpp:115:                 auto next_line = std::next(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 112]	// tmp281, MEM[(struct _List_iterator *)_334]
// main.cpp:116:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	add	x0, sp, 112	// tmp282,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:116:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
	mov	x19, x0	// _31,
// main.cpp:116:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	add	x0, sp, 88	// tmp283,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:116:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:116:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	sub	x1, x19, x0	// _198, _31, _33
// main.cpp:116:                 memory += ((*next_line).size() - (*current_line).size()) * sizeof(char);
	ldr	x0, [sp, 72]	// memory.32_34, memory
	add	x0, x1, x0	// _35, _198, memory.32_34
	str	x0, [sp, 72]	// _35, memory
// main.cpp:117:                 (*current_line) += *next_line;
	add	x0, sp, 88	// tmp284,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x19, x0	// _36,
// main.cpp:117:                 (*current_line) += *next_line;
	add	x0, sp, 112	// tmp285,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x1, x0	//, _37
	mov	x0, x19	//, _36
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_		//
// main.cpp:118:                 lines.erase(next_line);
	add	x1, sp, 112	// tmp286,,
	add	x0, sp, 120	// tmp287,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E		//
	add	x0, sp, 144	// tmp288,,
	ldr	x1, [sp, 120]	//, MEM[(struct _List_const_iterator *)_333]
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E		//
// main.cpp:120:             break;
	b	.L78		//
.L49:
// main.cpp:123:                 std::string new_line = (*current_line).substr(cursor_x);
	add	x0, sp, 88	// tmp289,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x3, x0	// _38,
// main.cpp:123:                 std::string new_line = (*current_line).substr(cursor_x);
	ldrsw	x0, [sp, 48]	// _39, cursor_x
	add	x1, sp, 200	// tmp290,,
	mov	x8, x1	//, tmp290
	mov	x2, -1	//,
	mov	x1, x0	//, _39
	mov	x0, x3	//, _38
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm		//
.LEHE11:
// main.cpp:124:                 (*current_line).erase(cursor_x);
	add	x0, sp, 88	// tmp291,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x3, x0	// _40,
// main.cpp:124:                 (*current_line).erase(cursor_x);
	ldrsw	x0, [sp, 48]	// _41, cursor_x
	mov	x2, -1	//,
	mov	x1, x0	//, _41
	mov	x0, x3	//, _40
.LEHB12:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:126:                 auto inserted_line = lines.insert(std::next(current_line), new_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 112]	// tmp292, MEM[(struct _List_iterator *)_334]
// main.cpp:126:                 auto inserted_line = lines.insert(std::next(current_line), new_line);
	add	x1, sp, 112	// tmp293,,
	add	x0, sp, 120	// tmp294,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E		//
	add	x1, sp, 200	// tmp295,,
	add	x0, sp, 144	// tmp296,,
	mov	x2, x1	//, tmp295
	ldr	x1, [sp, 120]	//, MEM[(struct _List_const_iterator *)_333]
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_		//
.LEHE12:
// main.cpp:126:                 auto inserted_line = lines.insert(std::next(current_line), new_line);
	str	x0, [sp, 104]	// tmp297, MEM[(struct _List_iterator *)_335]
// main.cpp:127:                 memory += new_line.size() * sizeof(char) + sizeof(std::string);
	add	x0, sp, 200	// tmp298,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:127:                 memory += new_line.size() * sizeof(char) + sizeof(std::string);
	add	x1, x0, 32	// _301, _42,
// main.cpp:127:                 memory += new_line.size() * sizeof(char) + sizeof(std::string);
	ldr	x0, [sp, 72]	// memory.33_43, memory
	add	x0, x1, x0	// _44, _301, memory.33_43
	str	x0, [sp, 72]	// _44, memory
// main.cpp:128:                 nodes++;
	ldr	x0, [sp, 80]	// nodes.34_45, nodes
	add	x0, x0, 1	// _46, nodes.34_45,
	str	x0, [sp, 80]	// _46, nodes
// main.cpp:130:                 current_line = inserted_line;
	ldr	x0, [sp, 104]	// tmp299, MEM[(struct _List_iterator *)_335]
	str	x0, [sp, 88]	// tmp299, current_line
// main.cpp:131:                 cursor_y++;
	ldr	w0, [sp, 52]	// tmp301, cursor_y
	add	w0, w0, 1	// tmp300, tmp301,
	str	w0, [sp, 52]	// tmp300, cursor_y
// main.cpp:132:                 cursor_x = 0;
	str	wzr, [sp, 48]	//, cursor_x
// main.cpp:133:             }
	add	x0, sp, 200	// tmp302,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:134:             break;
	b	.L52		//
.L43:
// main.cpp:136:             if (cursor_x > 0) {
	ldr	w0, [sp, 48]	// tmp303, cursor_x
	cmp	w0, 0	// tmp303,
	ble	.L55		//,
// main.cpp:137:                 memory -= sizeof(char);
	ldr	x0, [sp, 72]	// memory.35_47, memory
	sub	x0, x0, #1	// _48, memory.35_47,
	str	x0, [sp, 72]	// _48, memory
// main.cpp:138:                 (*current_line).erase(--cursor_x, 1);
	add	x0, sp, 88	// tmp304,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x3, x0	// _49,
// main.cpp:138:                 (*current_line).erase(--cursor_x, 1);
	ldr	w0, [sp, 48]	// tmp306, cursor_x
	sub	w0, w0, #1	// tmp305, tmp306,
	str	w0, [sp, 48]	// tmp305, cursor_x
	ldrsw	x0, [sp, 48]	// _50, cursor_x
	mov	x2, 1	//,
	mov	x1, x0	//, _50
	mov	x0, x3	//, _49
.LEHB13:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:151:             break;
	b	.L79		//
.L55:
// main.cpp:139:             } else if (cursor_y > 3) {
	ldr	w0, [sp, 52]	// tmp307, cursor_y
	cmp	w0, 3	// tmp307,
	ble	.L79		//,
// main.cpp:140:                 memory -= sizeof(std::string);
	ldr	x0, [sp, 72]	// memory.36_51, memory
	sub	x0, x0, #32	// _52, memory.36_51,
	str	x0, [sp, 72]	// _52, memory
// main.cpp:141:                 nodes--;
	ldr	x0, [sp, 80]	// nodes.37_53, nodes
	sub	x0, x0, #1	// _54, nodes.37_53,
	str	x0, [sp, 80]	// _54, nodes
// main.cpp:143:                 auto prev_line = std::prev(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 112]	// tmp308, MEM[(struct _List_iterator *)_334]
// main.cpp:144:                 cursor_x = (*prev_line).size();
	add	x0, sp, 112	// tmp309,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:144:                 cursor_x = (*prev_line).size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:144:                 cursor_x = (*prev_line).size();
	str	w0, [sp, 48]	// tmp310, cursor_x
// main.cpp:145:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	add	x0, sp, 112	// tmp311,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:145:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
	mov	x19, x0	// _58,
// main.cpp:145:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	add	x0, sp, 88	// tmp312,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:145:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:145:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	sub	x1, x19, x0	// _221, _58, _60
// main.cpp:145:                 memory += ((*prev_line).size() - (*current_line).size()) * sizeof(char);
	ldr	x0, [sp, 72]	// memory.38_61, memory
	add	x0, x1, x0	// _62, _221, memory.38_61
	str	x0, [sp, 72]	// _62, memory
// main.cpp:146:                 (*prev_line) += *current_line;
	add	x0, sp, 112	// tmp313,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x19, x0	// _63,
// main.cpp:146:                 (*prev_line) += *current_line;
	add	x0, sp, 88	// tmp314,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x1, x0	//, _64
	mov	x0, x19	//, _63
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_		//
// main.cpp:147:                 lines.erase(current_line);
	add	x1, sp, 88	// tmp315,,
	add	x0, sp, 120	// tmp316,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E		//
	add	x0, sp, 144	// tmp317,,
	ldr	x1, [sp, 120]	//, MEM[(struct _List_const_iterator *)_333]
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E		//
// main.cpp:148:                 current_line = prev_line;
	ldr	x0, [sp, 112]	// tmp318, MEM[(struct _List_iterator *)_334]
	str	x0, [sp, 88]	// tmp318, current_line
// main.cpp:149:                 cursor_y--;
	ldr	w0, [sp, 52]	// tmp320, cursor_y
	sub	w0, w0, #1	// tmp319, tmp320,
	str	w0, [sp, 52]	// tmp319, cursor_y
// main.cpp:151:             break;
	b	.L79		//
.L45:
// main.cpp:153:             if (cursor_x > 0) {
	ldr	w0, [sp, 48]	// tmp321, cursor_x
	cmp	w0, 0	// tmp321,
	ble	.L57		//,
// main.cpp:154:                 cursor_x--;
	ldr	w0, [sp, 48]	// tmp323, cursor_x
	sub	w0, w0, #1	// tmp322, tmp323,
	str	w0, [sp, 48]	// tmp322, cursor_x
// main.cpp:160:             break;
	b	.L80		//
.L57:
// main.cpp:155:             } else if (cursor_y > 3) {
	ldr	w0, [sp, 52]	// tmp324, cursor_y
	cmp	w0, 3	// tmp324,
	ble	.L80		//,
// main.cpp:156:                 current_line = std::prev(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 88]	// tmp325, current_line
// main.cpp:157:                 cursor_y--;
	ldr	w0, [sp, 52]	// tmp327, cursor_y
	sub	w0, w0, #1	// tmp326, tmp327,
	str	w0, [sp, 52]	// tmp326, cursor_y
// main.cpp:158:                 cursor_x = (*current_line).size();
	add	x0, sp, 88	// tmp328,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:158:                 cursor_x = (*current_line).size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:158:                 cursor_x = (*current_line).size();
	str	w0, [sp, 48]	// tmp329, cursor_x
// main.cpp:160:             break;
	b	.L80		//
.L44:
// main.cpp:162:             if (cursor_x < static_cast<int>((*current_line).size())) {
	add	x0, sp, 88	// tmp330,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:162:             if (cursor_x < static_cast<int>((*current_line).size())) {
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:162:             if (cursor_x < static_cast<int>((*current_line).size())) {
	mov	w1, w0	// _69, _68
	ldr	w0, [sp, 48]	// tmp332, cursor_x
	cmp	w0, w1	// tmp332, _69
	cset	w0, lt	// tmp333,
	and	w0, w0, 255	// retval.39_239, tmp331
// main.cpp:162:             if (cursor_x < static_cast<int>((*current_line).size())) {
	cmp	w0, 0	// retval.39_239,
	beq	.L59		//,
// main.cpp:163:                 cursor_x++;
	ldr	w0, [sp, 48]	// tmp335, cursor_x
	add	w0, w0, 1	// tmp334, tmp335,
	str	w0, [sp, 48]	// tmp334, cursor_x
// main.cpp:169:             break;
	b	.L81		//
.L59:
// main.cpp:164:             } else if (std::next(current_line) != lines.end()) {
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 104]	// tmp336, MEM[(struct _List_iterator *)_335]
// main.cpp:164:             } else if (std::next(current_line) != lines.end()) {
	add	x0, sp, 144	// tmp337,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 120]	// tmp338, MEM[(struct _List_iterator *)_333]
// main.cpp:164:             } else if (std::next(current_line) != lines.end()) {
	add	x1, sp, 120	// tmp339,,
	add	x0, sp, 104	// tmp340,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.40_243, tmp341
// main.cpp:164:             } else if (std::next(current_line) != lines.end()) {
	cmp	w0, 0	// retval.40_243,
	beq	.L81		//,
// main.cpp:165:                 current_line = std::next(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 88]	// tmp342, current_line
// main.cpp:166:                 cursor_y++;
	ldr	w0, [sp, 52]	// tmp344, cursor_y
	add	w0, w0, 1	// tmp343, tmp344,
	str	w0, [sp, 52]	// tmp343, cursor_y
// main.cpp:167:                 cursor_x = 0;
	str	wzr, [sp, 48]	//, cursor_x
// main.cpp:169:             break;
	b	.L81		//
.L46:
// main.cpp:171:             if (cursor_y > 3) {
	ldr	w0, [sp, 52]	// tmp345, cursor_y
	cmp	w0, 3	// tmp345,
	ble	.L61		//,
// main.cpp:172:                 current_line = std::prev(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 88]	// tmp346, current_line
// main.cpp:173:                 cursor_y--;
	ldr	w0, [sp, 52]	// tmp348, cursor_y
	sub	w0, w0, #1	// tmp347, tmp348,
	str	w0, [sp, 52]	// tmp347, cursor_y
// main.cpp:175:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	add	x0, sp, 88	// tmp349,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:175:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:175:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	mov	w1, w0	// _72, _71
	ldr	w0, [sp, 48]	// tmp351, cursor_x
	cmp	w0, w1	// tmp351, _72
	cset	w0, gt	// tmp352,
	and	w0, w0, 255	// retval.41_261, tmp350
// main.cpp:175:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	cmp	w0, 0	// retval.41_261,
	beq	.L82		//,
// main.cpp:176:                     cursor_x = (*current_line).size();
	add	x0, sp, 88	// tmp353,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:176:                     cursor_x = (*current_line).size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:176:                     cursor_x = (*current_line).size();
	str	w0, [sp, 48]	// tmp354, cursor_x
// main.cpp:181:             break;
	b	.L82		//
.L61:
// main.cpp:178:             } else if (scroll_offset > 0) {
	ldr	w0, [sp, 56]	// tmp355, scroll_offset
	cmp	w0, 0	// tmp355,
	ble	.L82		//,
// main.cpp:179:                 scroll_offset--;
	ldr	w0, [sp, 56]	// tmp357, scroll_offset
	sub	w0, w0, #1	// tmp356, tmp357,
	str	w0, [sp, 56]	// tmp356, scroll_offset
// main.cpp:181:             break;
	b	.L82		//
.L47:
// main.cpp:183:             if (std::next(current_line) != lines.end()) {
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 112]	// tmp358, MEM[(struct _List_iterator *)_334]
// main.cpp:183:             if (std::next(current_line) != lines.end()) {
	add	x0, sp, 144	// tmp359,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv		//
	str	x0, [sp, 120]	// tmp360, MEM[(struct _List_iterator *)_333]
// main.cpp:183:             if (std::next(current_line) != lines.end()) {
	add	x1, sp, 120	// tmp361,,
	add	x0, sp, 112	// tmp362,,
	bl	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_		//
	and	w0, w0, 255	// retval.42_268, tmp363
// main.cpp:183:             if (std::next(current_line) != lines.end()) {
	cmp	w0, 0	// retval.42_268,
	beq	.L83		//,
// main.cpp:184:                 current_line = std::next(current_line);
	mov	x1, 1	//,
	ldr	x0, [sp, 88]	//, current_line
	bl	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE		//
	str	x0, [sp, 88]	// tmp364, current_line
// main.cpp:186:                 if (cursor_y < LINES - 2) {
	adrp	x0, :got:LINES	// tmp366,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp365, tmp366,
	ldr	w0, [x0]	// LINES.43_75, LINES
	sub	w0, w0, #2	// _76, LINES.43_75,
// main.cpp:186:                 if (cursor_y < LINES - 2) {
	ldr	w1, [sp, 52]	// tmp367, cursor_y
	cmp	w1, w0	// tmp367, _76
	bge	.L64		//,
// main.cpp:187:                     cursor_y++;
	ldr	w0, [sp, 52]	// tmp369, cursor_y
	add	w0, w0, 1	// tmp368, tmp369,
	str	w0, [sp, 52]	// tmp368, cursor_y
	b	.L65		//
.L64:
// main.cpp:189:                     scroll_offset++;
	ldr	w0, [sp, 56]	// tmp371, scroll_offset
	add	w0, w0, 1	// tmp370, tmp371,
	str	w0, [sp, 56]	// tmp370, scroll_offset
.L65:
// main.cpp:192:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	add	x0, sp, 88	// tmp372,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:192:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:192:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	mov	w1, w0	// _79, _78
	ldr	w0, [sp, 48]	// tmp374, cursor_x
	cmp	w0, w1	// tmp374, _79
	cset	w0, gt	// tmp375,
	and	w0, w0, 255	// retval.44_276, tmp373
// main.cpp:192:                 if (cursor_x > static_cast<int>((*current_line).size())) {
	cmp	w0, 0	// retval.44_276,
	beq	.L83		//,
// main.cpp:193:                     cursor_x = (*current_line).size();
	add	x0, sp, 88	// tmp376,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
// main.cpp:193:                     cursor_x = (*current_line).size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:193:                     cursor_x = (*current_line).size();
	str	w0, [sp, 48]	// tmp377, cursor_x
// main.cpp:196:             break;
	b	.L83		//
.L42:
// main.cpp:198:             if (ch >= 32 && ch <= 126) {
	ldr	w0, [sp, 68]	// tmp378, ch
	cmp	w0, 31	// tmp378,
	ble	.L84		//,
// main.cpp:198:             if (ch >= 32 && ch <= 126) {
	ldr	w0, [sp, 68]	// tmp379, ch
	cmp	w0, 126	// tmp379,
	bgt	.L84		//,
// main.cpp:199:                 (*current_line).insert(cursor_x, 1, static_cast<char>(ch));
	add	x0, sp, 88	// tmp380,,
	bl	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv		//
	mov	x4, x0	// _82,
// main.cpp:199:                 (*current_line).insert(cursor_x, 1, static_cast<char>(ch));
	ldrsw	x0, [sp, 48]	// _83, cursor_x
	ldr	w1, [sp, 68]	// tmp381, ch
	and	w1, w1, 255	// _84, tmp381
	mov	w3, w1	//, _84
	mov	x2, 1	//,
	mov	x1, x0	//, _83
	mov	x0, x4	//, _82
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc		//
.LEHE13:
// main.cpp:200:                 memory += sizeof(char);
	ldr	x0, [sp, 72]	// memory.45_85, memory
	add	x0, x0, 1	// _86, memory.45_85,
	str	x0, [sp, 72]	// _86, memory
// main.cpp:201:                 cursor_x++;
	ldr	w0, [sp, 48]	// tmp383, cursor_x
	add	w0, w0, 1	// tmp382, tmp383,
	str	w0, [sp, 48]	// tmp382, cursor_x
// main.cpp:203:             break;
	b	.L84		//
.L78:
// main.cpp:120:             break;
	nop	
	b	.L67		//
.L79:
// main.cpp:151:             break;
	nop	
	b	.L67		//
.L80:
// main.cpp:160:             break;
	nop	
	b	.L67		//
.L81:
// main.cpp:169:             break;
	nop	
	b	.L67		//
.L82:
// main.cpp:181:             break;
	nop	
	b	.L67		//
.L83:
// main.cpp:196:             break;
	nop	
	b	.L67		//
.L84:
// main.cpp:203:             break;
	nop	
.L52:
// main.cpp:205:     }
	b	.L67		//
.L75:
// main.cpp:65:         lines.push_back("");
	mov	x19, x0	// tmp387,
	add	x0, sp, 200	// tmp385,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L69		//
.L74:
	mov	x19, x0	// tmp386,
.L69:
// main.cpp:65:         lines.push_back("");
	add	x0, sp, 120	// tmp390,,
	bl	_ZNSaIcED1Ev		//
	b	.L70		//
.L76:
// main.cpp:133:             }
	mov	x19, x0	// tmp394,
	add	x0, sp, 200	// tmp393,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L70		//
.L73:
// main.cpp:206: }
	mov	x19, x0	// tmp391,
.L70:
	add	x0, sp, 168	// tmp396,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 144	// tmp399,,
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev		//
	mov	x0, x19	// D.57066, tmp397
.LEHB14:
	bl	_Unwind_Resume		//
.LEHE14:
.L77:
	bl	__stack_chk_fail		//
.L72:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 240	//,,,
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
	.uleb128 .L73-.LFB2081
	.uleb128 0
	.uleb128 .LEHB9-.LFB2081
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L74-.LFB2081
	.uleb128 0
	.uleb128 .LEHB10-.LFB2081
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L75-.LFB2081
	.uleb128 0
	.uleb128 .LEHB11-.LFB2081
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L73-.LFB2081
	.uleb128 0
	.uleb128 .LEHB12-.LFB2081
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L76-.LFB2081
	.uleb128 0
	.uleb128 .LEHB13-.LFB2081
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L73-.LFB2081
	.uleb128 0
	.uleb128 .LEHB14-.LFB2081
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE2081:
	.text
	.size	main, .-main
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_:
.LFB2325:
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
	mov	x1, x0	//, D.56638
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
.LFE2325:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
	.section	.text._ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.align	2
	.weak	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.type	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, %function
_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv:
.LFB2335:
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
	str	x1, [sp, 40]	// tmp102, D.57073
	mov	x1, 0	// tmp102
// /usr/include/c++/11/bits/stl_list.h:955:       { return const_iterator(this->_M_impl._M_node._M_next); }
	ldr	x0, [sp, 24]	// tmp97, this
	ldr	x1, [x0]	// _1, this_3(D)->D.51930._M_impl._M_node.D.40775._M_next
// /usr/include/c++/11/bits/stl_list.h:955:       { return const_iterator(this->_M_impl._M_node._M_next); }
	add	x0, sp, 32	// tmp98,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:955:       { return const_iterator(this->_M_impl._M_node._M_next); }
	ldr	x0, [sp, 32]	// D.56741, D.54704
	mov	x1, x0	// <retval>, D.56741
// /usr/include/c++/11/bits/stl_list.h:955:       { return const_iterator(this->_M_impl._M_node._M_next); }
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x3, [sp, 40]	// tmp103, D.57073
	ldr	x2, [x0]	// tmp104,
	subs	x3, x3, x2	// tmp103, tmp104
	mov	x2, 0	// tmp104
	beq	.L88		//,
	bl	__stack_chk_fail		//
.L88:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2335:
	.size	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .-_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.section	.text._ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,"axG",@progbits,_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,comdat
	.align	2
	.weak	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.type	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, %function
_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv:
.LFB2336:
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
	str	x1, [sp, 40]	// tmp101, D.57074
	mov	x1, 0	// tmp101
// /usr/include/c++/11/bits/stl_list.h:973:       { return const_iterator(&this->_M_impl._M_node); }
	ldr	x1, [sp, 24]	// _1, this
	add	x0, sp, 32	// tmp97,,
	bl	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:973:       { return const_iterator(&this->_M_impl._M_node); }
	ldr	x0, [sp, 32]	// D.56744, D.54706
	mov	x1, x0	// <retval>, D.56744
// /usr/include/c++/11/bits/stl_list.h:973:       { return const_iterator(&this->_M_impl._M_node); }
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x3, [sp, 40]	// tmp102, D.57074
	ldr	x2, [x0]	// tmp103,
	subs	x3, x3, x2	// tmp102, tmp103
	mov	x2, 0	// tmp103
	beq	.L91		//,
	bl	__stack_chk_fail		//
.L91:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2336:
	.size	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, .-_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.section	.text._ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_,"axG",@progbits,_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_,comdat
	.align	2
	.weak	_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_
	.type	_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, %function
_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_:
.LFB2337:
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
.LFE2337:
	.size	_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, .-_ZStneRKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_
	.section	.text._ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"axG",@progbits,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,comdat
	.align	2
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.type	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, %function
_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
.LFB2338:
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
.LFE2338:
	.size	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .-_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.section	.text._ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"axG",@progbits,_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,comdat
	.align	2
	.weak	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.type	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, %function
_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
.LFB2339:
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
.LFE2339:
	.size	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .-_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev:
.LFB2344:
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
.LFE2344:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC1Ev
	.set	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC1Ev,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.section	.text._ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,"axG",@progbits,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED5Ev,comdat
	.align	2
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.type	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, %function
_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev:
.LFB2347:
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
.LFE2347:
	.size	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, .-_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
	.set	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB2350:
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
.LFE2350:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv,"axG",@progbits,_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv,comdat
	.align	2
	.weak	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv
	.type	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv, %function
_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv:
.LFB2353:
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
.LFE2353:
	.size	_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv, .-_ZNKSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_:
.LFB2357:
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
	mov	x19, x0	// D.56884,
// /usr/include/c++/11/bits/stl_list.h:1217:       { this->_M_insert(end(), std::move(__x)); }
	ldr	x0, [sp, 32]	//, __x
	bl	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_		//
// /usr/include/c++/11/bits/stl_list.h:1217:       { this->_M_insert(end(), std::move(__x)); }
	mov	x2, x0	//, _1
	mov	x1, x19	//, D.56884
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
.LFE2357:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv:
.LFB2358:
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
	str	x1, [sp, 40]	// tmp102, D.57075
	mov	x1, 0	// tmp102
// /usr/include/c++/11/bits/stl_list.h:946:       { return iterator(this->_M_impl._M_node._M_next); }
	ldr	x0, [sp, 24]	// tmp97, this
	ldr	x1, [x0]	// _1, this_3(D)->D.51930._M_impl._M_node.D.40775._M_next
	add	x0, sp, 32	// tmp98,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:946:       { return iterator(this->_M_impl._M_node._M_next); }
	ldr	x0, [sp, 32]	// D.56909, D.54912
	mov	x1, x0	// <retval>, D.56909
// /usr/include/c++/11/bits/stl_list.h:946:       { return iterator(this->_M_impl._M_node._M_next); }
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x3, [sp, 40]	// tmp103, D.57075
	ldr	x2, [x0]	// tmp104,
	subs	x3, x3, x2	// tmp103, tmp104
	mov	x2, 0	// tmp104
	beq	.L106		//,
	bl	__stack_chk_fail		//
.L106:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2358:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv:
.LFB2359:
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
	str	x1, [sp, 40]	// tmp101, D.57076
	mov	x1, 0	// tmp101
// /usr/include/c++/11/bits/stl_list.h:964:       { return iterator(&this->_M_impl._M_node); }
	ldr	x1, [sp, 24]	// _1, this
	add	x0, sp, 32	// tmp97,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:964:       { return iterator(&this->_M_impl._M_node); }
	ldr	x0, [sp, 32]	// D.56639, D.54914
	mov	x1, x0	// <retval>, D.56639
// /usr/include/c++/11/bits/stl_list.h:964:       { return iterator(&this->_M_impl._M_node); }
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x3, [sp, 40]	// tmp102, D.57076
	ldr	x2, [x0]	// tmp103,
	subs	x3, x3, x2	// tmp102, tmp103
	mov	x2, 0	// tmp103
	beq	.L109		//,
	bl	__stack_chk_fail		//
.L109:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2359:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.section	.text._ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_,"axG",@progbits,_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_,comdat
	.align	2
	.weak	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_
	.type	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, %function
_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_:
.LFB2360:
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
.LFE2360:
	.size	_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, .-_ZStneRKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_
	.section	.text._ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"axG",@progbits,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,comdat
	.align	2
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.type	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, %function
_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
.LFB2361:
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
.LFE2361:
	.size	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .-_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.section	.text._ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"axG",@progbits,_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,comdat
	.align	2
	.weak	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.type	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, %function
_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
.LFB2362:
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
.LFE2362:
	.size	_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .-_ZNKSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.section	.text._ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE,"axG",@progbits,_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE,comdat
	.align	2
	.weak	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE
	.type	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE, %function
_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE:
.LFB2364:
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
	ldr	x0, [sp, 24]	// D.56938, __x
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:220:     }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2364:
	.size	_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE, .-_ZSt4nextISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE
	.section	.text._ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E,"axG",@progbits,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5ERKSt14_List_iteratorIS5_E,comdat
	.align	2
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E
	.type	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E, %function
_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E:
.LFB2367:
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
.LFE2367:
	.size	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E, .-_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E
	.set	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt14_List_iteratorIS5_E,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt14_List_iteratorIS5_E
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E:
.LFB2369:
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
	str	x1, [sp, 40]	// tmp104, D.57077
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
	mov	x1, x0	//, D.56921
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E		//
// /usr/include/c++/11/bits/list.tcc:159:       return __ret;
	ldr	x0, [sp, 32]	// D.56922, __ret
	mov	x1, x0	// <retval>, D.56922
// /usr/include/c++/11/bits/list.tcc:160:     }
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x3, [sp, 40]	// tmp105, D.57077
	ldr	x2, [x0]	// tmp106,
	subs	x3, x3, x2	// tmp105, tmp106
	mov	x2, 0	// tmp106
	beq	.L121		//,
	bl	__stack_chk_fail		//
.L121:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2369:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseESt20_List_const_iteratorIS5_E
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_:
.LFB2371:
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
	str	x1, [sp, 88]	// tmp106, D.57078
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
	ldr	x0, [sp, 72]	// D.56914, D.54954
	mov	x1, x0	// <retval>, D.56914
// /usr/include/c++/11/bits/list.tcc:112:     }
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp104, tmp105,
	ldr	x3, [sp, 88]	// tmp107, D.57078
	ldr	x2, [x0]	// tmp108,
	subs	x3, x3, x2	// tmp107, tmp108
	mov	x2, 0	// tmp108
	beq	.L124		//,
	bl	__stack_chk_fail		//
.L124:
	mov	x0, x1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2371:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertESt20_List_const_iteratorIS5_ERKS5_
	.section	.text._ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE,"axG",@progbits,_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE,comdat
	.align	2
	.weak	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE
	.type	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE, %function
_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE:
.LFB2372:
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
	ldr	x0, [sp, 24]	// D.56925, __x
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:232:     }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2372:
	.size	_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE, .-_ZSt4prevISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.align	2
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, %function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB2431:
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
.LFE2431:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_:
.LFB2456:
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
.LFE2456:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.section	.text._ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5EPKNSt8__detail15_List_node_baseE,comdat
	.align	2
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE
	.type	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE, %function
_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE:
.LFB2467:
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
.LFE2467:
	.size	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE, .-_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE
	.weak	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKNSt8__detail15_List_node_baseE
	.set	_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKNSt8__detail15_List_node_baseE,_ZNSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKNSt8__detail15_List_node_baseE
	.section	.text._ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,"axG",@progbits,_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,comdat
	.align	2
	.weak	_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.type	_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, %function
_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv:
.LFB2469:
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
.LFE2469:
	.size	_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, .-_ZNKSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.section	.text._ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,"axG",@progbits,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC5Ev,comdat
	.align	2
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.type	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, %function
_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev:
.LFB2471:
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
.LFE2471:
	.size	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, .-_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev
	.set	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev:
.LFB2474:
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
.LFE2474:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv:
.LFB2476:
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
	b	.L136		//
.L137:
// /usr/include/c++/11/bits/list.tcc:73: 	  _Node* __tmp = static_cast<_Node*>(__cur);
	ldr	x0, [sp, 40]	// tmp96, __cur
	str	x0, [sp, 48]	// tmp96, __tmp
// /usr/include/c++/11/bits/list.tcc:74: 	  __cur = __tmp->_M_next;
	ldr	x0, [sp, 48]	// tmp97, __tmp
	ldr	x0, [x0]	// tmp98, __tmp_8->D.54753._M_next
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
.L136:
// /usr/include/c++/11/bits/list.tcc:71:       while (__cur != &_M_impl._M_node)
	ldr	x0, [sp, 24]	// _2, this
	ldr	x1, [sp, 40]	// tmp99, __cur
	cmp	x1, x0	// tmp99, _2
	bne	.L137		//,
// /usr/include/c++/11/bits/list.tcc:83:     }
	nop	
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2476:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_:
.LFB2480:
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
.LFE2480:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.section	.text._ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5EPNSt8__detail15_List_node_baseE,comdat
	.align	2
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.type	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE, %function
_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE:
.LFB2482:
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
.LFE2482:
	.size	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE, .-_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE
	.set	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.section	.text._ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,"axG",@progbits,_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,comdat
	.align	2
	.weak	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.type	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, %function
_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv:
.LFB2484:
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
.LFE2484:
	.size	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, .-_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.section	.text._ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_,"axG",@progbits,_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_,comdat
	.align	2
	.weak	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_
	.type	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_, %function
_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_:
.LFB2487:
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
	mov	w2, w19	//, D.56927
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
.LFE2487:
	.size	_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_, .-_ZSt7advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E:
.LFB2488:
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
.LFE2488:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseESt14_List_iteratorIS5_E
	.section	.text._ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv,"axG",@progbits,_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv,comdat
	.align	2
	.weak	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv
	.type	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv, %function
_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv:
.LFB2489:
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
	str	x1, [sp, 40]	// tmp102, D.57079
	mov	x1, 0	// tmp102
// /usr/include/c++/11/bits/stl_list.h:291:       { return iterator(const_cast<__detail::_List_node_base*>(_M_node)); }
	ldr	x0, [sp, 24]	// tmp97, this
	ldr	x1, [x0]	// _1, this_3(D)->_M_node
// /usr/include/c++/11/bits/stl_list.h:291:       { return iterator(const_cast<__detail::_List_node_base*>(_M_node)); }
	add	x0, sp, 32	// tmp98,,
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPNSt8__detail15_List_node_baseE		//
// /usr/include/c++/11/bits/stl_list.h:291:       { return iterator(const_cast<__detail::_List_node_base*>(_M_node)); }
	ldr	x0, [sp, 32]	// D.56918, D.55651
	mov	x1, x0	// <retval>, D.56918
// /usr/include/c++/11/bits/stl_list.h:291:       { return iterator(const_cast<__detail::_List_node_base*>(_M_node)); }
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x3, [sp, 40]	// tmp103, D.57079
	ldr	x2, [x0]	// tmp104,
	subs	x3, x3, x2	// tmp103, tmp104
	mov	x2, 0	// tmp104
	beq	.L146		//,
	bl	__stack_chk_fail		//
.L146:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2489:
	.size	_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv, .-_ZNKSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_:
.LFB2493:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2493
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
	str	x1, [sp, 88]	// tmp110, D.57081
	mov	x1, 0	// tmp110
// /usr/include/c++/11/bits/stl_list.h:634: 	  auto __p = this->_M_get_node();
	ldr	x0, [sp, 40]	// _1, this
.LEHB15:
	bl	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv		//
.LEHE15:
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
.LEHB16:
	bl	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_		//
.LEHE16:
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
	ldr	x3, [sp, 88]	// tmp111, D.57081
	ldr	x2, [x0]	// tmp112,
	subs	x3, x3, x2	// tmp111, tmp112
	mov	x2, 0	// tmp112
	beq	.L150		//,
	b	.L152		//
.L151:
	mov	x19, x0	// tmp107,
	add	x0, sp, 72	// tmp106,,
	bl	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED1Ev		//
	mov	x0, x19	// D.57080, tmp107
.LEHB17:
	bl	_Unwind_Resume		//
.LEHE17:
.L152:
	bl	__stack_chk_fail		//
.L150:
	mov	x0, x1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2493:
	.section	.gcc_except_table
.LLSDA2493:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2493-.LLSDACSB2493
.LLSDACSB2493:
	.uleb128 .LEHB15-.LFB2493
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB2493
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L151-.LFB2493
	.uleb128 0
	.uleb128 .LEHB17-.LFB2493
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2493:
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_,comdat
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm:
.LFB2494:
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
.LFE2494:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm
	.section	.text._ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.type	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE, %function
_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB2528:
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
.LFE2528:
	.size	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE, .-_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.section	.text._ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, %function
_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv:
.LFB2529:
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
.LFE2529:
	.size	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, .-_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev:
.LFB2531:
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
.LFE2531:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv:
.LFB2533:
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
.LFE2533:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_:
.LFB2534:
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
.LFE2534:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E:
.LFB2535:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2535
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
.LFE2535:
	.section	.gcc_except_table
.LLSDA2535:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2535-.LLSDACSB2535
.LLSDACSB2535:
.LLSDACSE2535:
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E,comdat
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_put_nodeEPSt10_List_nodeIS5_E
	.section	.text._ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,"axG",@progbits,_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.type	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE, %function
_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB2539:
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
.LFE2539:
	.size	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE, .-_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_,comdat
	.align	2
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_, %function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_:
.LFB2540:
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
	str	x1, [sp, 88]	// tmp107, D.57082
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
	ldr	x3, [sp, 88]	// tmp108, D.57082
	ldr	x2, [x0]	// tmp109,
	subs	x3, x3, x2	// tmp108, tmp109
	mov	x2, 0	// tmp109
	beq	.L167		//,
	bl	__stack_chk_fail		//
.L167:
	mov	x0, x1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2540:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_, .-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_
	.section	.text._ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, %function
_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv:
.LFB2541:
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
.LFE2541:
	.size	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.section	.text._ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_,"axG",@progbits,_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_,comdat
	.align	2
	.weak	_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_
	.type	_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_, %function
_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_:
.LFB2542:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.56056, D.56056
// /usr/include/c++/11/bits/stl_iterator_base_types.h:239:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/include/c++/11/bits/stl_iterator_base_types.h:239:     { return typename iterator_traits<_Iter>::iterator_category(); }
	mov	w0, w1	//, <retval>
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2542:
	.size	_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_, .-_ZSt19__iterator_categoryISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_
	.section	.text._ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag,"axG",@progbits,_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag
	.type	_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag, %function
_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag:
.LFB2543:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __i, __i
	str	x1, [sp, 32]	// __n, __n
	strb	w2, [sp, 24]	// D.56065, D.56065
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:164:       if (__n > 0)
	ldr	x0, [sp, 32]	// tmp96, __n
	cmp	x0, 0	// tmp96,
	ble	.L177		//,
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:165:         while (__n--)
	b	.L174		//
.L175:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:166: 	  ++__i;
	ldr	x0, [sp, 40]	//, __i
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv		//
.L174:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:165:         while (__n--)
	ldr	x0, [sp, 32]	// __n.55_1, __n
	sub	x1, x0, #1	// tmp97, __n.55_1,
	str	x1, [sp, 32]	// tmp97, __n
	cmp	x0, 0	// __n.55_1,
	cset	w0, ne	// tmp99,
	and	w0, w0, 255	// retval.54_15, tmp98
	cmp	w0, 0	// retval.54_15,
	bne	.L175		//,
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:170:     }
	b	.L179		//
.L178:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:169: 	  --__i;
	ldr	x0, [sp, 40]	//, __i
	bl	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv		//
.L177:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:168:         while (__n++)
	ldr	x0, [sp, 32]	// __n.57_2, __n
	add	x1, x0, 1	// tmp100, __n.57_2,
	str	x1, [sp, 32]	// tmp100, __n
	cmp	x0, 0	// __n.57_2,
	cset	w0, ne	// tmp102,
	and	w0, w0, 255	// retval.56_11, tmp101
	cmp	w0, 0	// retval.56_11,
	bne	.L178		//,
.L179:
// /usr/include/c++/11/bits/stl_iterator_base_funcs.h:170:     }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2543:
	.size	_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag, .-_ZSt9__advanceISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm:
.LFB2544:
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
.LFE2544:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_dec_sizeEm
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv,comdat
	.align	2
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv, %function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv:
.LFB2546:
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
.LFE2546:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv, .-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC5ERS8_PS7_,comdat
	.align	2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_, %function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_:
.LFB2548:
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
.LFE2548:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_, .-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC1ERS8_PS7_
	.set	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC1ERS8_PS7_,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED5Ev,comdat
	.align	2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev, %function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev:
.LFB2551:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2551
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
	beq	.L186		//,
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
.L186:
// /usr/include/c++/11/bits/allocated_ptr.h:75:       }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2551:
	.section	.gcc_except_table
.LLSDA2551:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2551-.LLSDACSB2551
.LLSDACSB2551:
.LLSDACSE2551:
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED5Ev,comdat
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev, .-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED1Ev
	.set	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED1Ev,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_:
.LFB2553:
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
.LFE2553:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn,comdat
	.align	2
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn, %function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn:
.LFB2554:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// D.56115, D.56115
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
.LFE2554:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn, .-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn
	.section	.text._ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, %function
_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv:
.LFB2571:
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
.LFE2571:
	.size	_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, .-_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_:
.LFB2572:
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
.LFE2572:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m:
.LFB2573:
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
.LFE2573:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_:
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
.LFE2577:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_
	.section	.text._ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, %function
_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv:
.LFB2578:
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
.LFE2578:
	.size	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.section	.text._ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv,"axG",@progbits,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv,comdat
	.align	2
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv
	.type	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv, %function
_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv:
.LFB2579:
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
.LFE2579:
	.size	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv, .-_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m, %function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m:
.LFB2581:
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
.LFE2581:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m, .-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m
	.section	.text._ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_,"axG",@progbits,_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_,comdat
	.align	2
	.weak	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_
	.type	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_, %function
_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_:
.LFB2582:
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
.LFE2582:
	.size	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_, .-_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_:
.LFB2583:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2583
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
.LEHB18:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_		//
.LEHE18:
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	b	.L206		//
.L205:
// /usr/include/c++/11/ext/new_allocator.h:162: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x21, x0	// tmp96,
	mov	x1, x19	//, _6
	mov	x0, x20	//, _8
	bl	_ZdlPvS_		//
	mov	x0, x21	// D.57083, tmp96
.LEHB19:
	bl	_Unwind_Resume		//
.LEHE19:
.L206:
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
.LFE2583:
	.section	.gcc_except_table
.LLSDA2583:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2583-.LLSDACSB2583
.LLSDACSB2583:
	.uleb128 .LEHB18-.LFB2583
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L205-.LFB2583
	.uleb128 0
	.uleb128 .LEHB19-.LFB2583
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE2583:
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JRKS7_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m:
.LFB2593:
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
.LFE2593:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_:
.LFB2594:
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
.LFE2594:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv:
.LFB2595:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __n, __n
	str	x2, [sp, 24]	// D.56517, D.56517
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
	beq	.L210		//,
// /usr/include/c++/11/ext/new_allocator.h:115: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	ldr	x1, [sp, 32]	// tmp105, __n
	mov	x0, 6148914691236517205	// tmp106,
	movk	x0, 0x555, lsl 48	// tmp106,,
	cmp	x1, x0	// tmp105, tmp106
	bls	.L211		//,
// /usr/include/c++/11/ext/new_allocator.h:116: 	      std::__throw_bad_array_new_length();
	bl	_ZSt28__throw_bad_array_new_lengthv		//
.L211:
// /usr/include/c++/11/ext/new_allocator.h:117: 	    std::__throw_bad_alloc();
	bl	_ZSt17__throw_bad_allocv		//
.L210:
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
.LFE2595:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv:
.LFB2605:
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
.LFE2605:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2612:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	w0, [sp, 28]	// __initialize_p, __initialize_p
	str	w1, [sp, 24]	// __priority, __priority
// main.cpp:206: }
	ldr	w0, [sp, 28]	// tmp92, __initialize_p
	cmp	w0, 1	// tmp92,
	bne	.L217		//,
// main.cpp:206: }
	ldr	w1, [sp, 24]	// tmp93, __priority
	mov	w0, 65535	// tmp94,
	cmp	w1, w0	// tmp93, tmp94
	bne	.L217		//,
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
.L217:
// main.cpp:206: }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2612:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z19display_memory_infomm, %function
_GLOBAL__sub_I__Z19display_memory_infomm:
.LFB2613:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// main.cpp:206: }
	mov	w1, 65535	//,
	mov	w0, 1	//,
	bl	_Z41__static_initialization_and_destruction_0ii		//
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2613:
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
