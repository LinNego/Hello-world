	.file	"uva442.cpp"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2358:
	.cfi_startproc
	cmpl	$1, %edi
	je	.L9
.L8:
	ret
.L9:
	cmpl	$65535, %esi
	jne	.L8
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	call	__cxa_atexit@PLT
	movl	$26, %edx
	leaq	m(%rip), %rax
.L3:
	testq	%rdx, %rdx
	js	.L1
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	addq	$8, %rax
	subq	$1, %rdx
	jmp	.L3
.L1:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	.L8
	.cfi_endproc
.LFE2358:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	.type	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_, @function
_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_:
.LFB2175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rbx
	movq	%rdx, %rbp
.L12:
	cmpq	%rbp, %rbx
	jnb	.L10
	movq	(%rbx), %rdi
	call	_ZdlPv@PLT
	addq	$8, %rbx
	jmp	.L12
.L10:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2175:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_, .-_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	.section	.text._ZNSt11_Deque_baseIcSaIcEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEED2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEED2Ev, @function
_ZNSt11_Deque_baseIcSaIcEED2Ev:
.LFB2119:
	.cfi_startproc
	cmpq	$0, (%rdi)
	je	.L20
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	leaq	8(%rax), %rdx
	movq	40(%rdi), %rsi
	call	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	movq	(%rbx), %rdi
	call	_ZdlPv@PLT
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L20:
	rep ret
	.cfi_endproc
.LFE2119:
	.size	_ZNSt11_Deque_baseIcSaIcEED2Ev, .-_ZNSt11_Deque_baseIcSaIcEED2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEED1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEED1Ev,_ZNSt11_Deque_baseIcSaIcEED2Ev
	.section	.text._ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv, @function
_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv:
.LFB2185:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	56(%rdi), %rdi
	call	_ZdlPv@PLT
	movq	72(%rbx), %rax
	leaq	-8(%rax), %rdx
	movq	%rdx, 72(%rbx)
	movq	-8(%rax), %rax
	movq	%rax, 56(%rbx)
	leaq	512(%rax), %rdx
	movq	%rdx, 64(%rbx)
	addq	$511, %rax
	movq	%rax, 48(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2185:
	.size	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv, .-_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
	.type	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_, @function
_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_:
.LFB2227:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2227
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %r13
	movq	%rsi, %r12
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	jmp	.L25
.L31:
	movq	%rax, (%rbx)
	addq	$8, %rbx
.L25:
	cmpq	%rbp, %rbx
	jnb	.L23
	movl	$512, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	jmp	.L31
.L28:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
.LEHB1:
	call	__cxa_rethrow@PLT
.LEHE1:
.L29:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L23:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2227:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"aG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.align 4
.LLSDA2227:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2227-.LLSDATTD2227
.LLSDATTD2227:
	.byte	0x1
	.uleb128 .LLSDACSE2227-.LLSDACSB2227
.LLSDACSB2227:
	.uleb128 .LEHB0-.LFB2227
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L28-.LFB2227
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB2227
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L29-.LFB2227
	.uleb128 0
	.uleb128 .LEHB2-.LFB2227
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2227:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2227:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_, .-_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm:
.LFB2173:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2173
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rsi, %rax
	shrq	$9, %rax
	leaq	1(%rax), %r12
	addq	$3, %rax
	movq	%rax, (%rsp)
	movq	$8, 8(%rsp)
	cmpq	$8, %rax
	jbe	.L37
	movq	%rsp, %rax
.L33:
	movq	(%rax), %rdi
	movq	%rdi, 8(%rbx)
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rdi
	ja	.L42
	salq	$3, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	%rax, (%rbx)
	movq	8(%rbx), %rdx
	subq	%r12, %rdx
	shrq	%rdx
	leaq	(%rax,%rdx,8), %r13
	leaq	0(%r13,%r12,8), %r12
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB4:
	call	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
.LEHE4:
	jmp	.L43
.L37:
	leaq	8(%rsp), %rax
	jmp	.L33
.L42:
.LEHB5:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE5:
.L43:
	movq	%r13, 40(%rbx)
	movq	0(%r13), %rdx
	movq	%rdx, 24(%rbx)
	leaq	512(%rdx), %rax
	movq	%rax, 32(%rbx)
	leaq	-8(%r12), %rax
	movq	%rax, 72(%rbx)
	movq	-8(%r12), %rax
	movq	%rax, 56(%rbx)
	leaq	512(%rax), %rcx
	movq	%rcx, 64(%rbx)
	movq	%rdx, 16(%rbx)
	andl	$511, %ebp
	addq	%rbp, %rax
	movq	%rax, 48(%rbx)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L38:
	.cfi_restore_state
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	(%rbx), %rdi
	call	_ZdlPv@PLT
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
.LEHB6:
	call	__cxa_rethrow@PLT
.LEHE6:
.L39:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
	.cfi_endproc
.LFE2173:
	.section	.gcc_except_table._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.align 4
.LLSDA2173:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2173-.LLSDATTD2173
.LLSDATTD2173:
	.byte	0x1
	.uleb128 .LLSDACSE2173-.LLSDACSB2173
.LLSDACSB2173:
	.uleb128 .LEHB3-.LFB2173
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2173
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L38-.LFB2173
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB2173
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2173
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L39-.LFB2173
	.uleb128 0
	.uleb128 .LEHB7-.LFB2173
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2173:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2173:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
	.section	.text._ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb, @function
_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb:
.LFB2294:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, %rbx
	movq	%rsi, %rax
	movq	%rsi, 8(%rsp)
	movl	%edx, %r12d
	movq	72(%rdi), %rdx
	movq	40(%rdi), %rsi
	movq	%rdx, %r13
	subq	%rsi, %r13
	sarq	$3, %r13
	addq	$1, %r13
	leaq	0(%r13,%rax), %r14
	movq	8(%rdi), %rbp
	leaq	(%r14,%r14), %rcx
	cmpq	%rcx, %rbp
	jbe	.L45
	movq	(%rdi), %rcx
	subq	%r14, %rbp
	shrq	%rbp
	salq	$3, %rbp
	testb	%r12b, %r12b
	je	.L55
	salq	$3, %rax
.L46:
	addq	%rax, %rbp
	leaq	(%rcx,%rbp), %r12
	cmpq	%r12, %rsi
	jbe	.L47
	addq	$8, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L49
	movq	%r12, %rdi
	call	memmove@PLT
	jmp	.L49
.L55:
	movl	$0, %eax
	jmp	.L46
.L47:
	leaq	(%r12,%r13,8), %rdi
	addq	$8, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L49
	subq	%rdx, %rdi
	call	memmove@PLT
	jmp	.L49
.L45:
	leaq	8(%rdi), %rdx
	cmpq	%rbp, %rax
	jbe	.L56
	leaq	8(%rsp), %rax
.L51:
	addq	(%rax), %rbp
	addq	$2, %rbp
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rbp
	ja	.L59
	leaq	0(,%rbp,8), %rdi
	call	_Znwm@PLT
	movq	%rax, %r15
	movq	%rbp, %rax
	subq	%r14, %rax
	shrq	%rax
	salq	$3, %rax
	testb	%r12b, %r12b
	je	.L57
	movq	8(%rsp), %rcx
	leaq	0(,%rcx,8), %r12
.L53:
	addq	%rax, %r12
	addq	%r15, %r12
	movq	72(%rbx), %rax
	leaq	8(%rax), %rdx
	movq	40(%rbx), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	jne	.L60
.L54:
	movq	(%rbx), %rdi
	call	_ZdlPv@PLT
	movq	%r15, (%rbx)
	movq	%rbp, 8(%rbx)
.L49:
	movq	%r12, 40(%rbx)
	movq	(%r12), %rax
	movq	%rax, 24(%rbx)
	addq	$512, %rax
	movq	%rax, 32(%rbx)
	leaq	-8(%r12,%r13,8), %rax
	movq	%rax, 72(%rbx)
	movq	(%rax), %rax
	movq	%rax, 56(%rbx)
	addq	$512, %rax
	movq	%rax, 64(%rbx)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L56:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L51
.L59:
	call	_ZSt17__throw_bad_allocv@PLT
.L57:
	movl	$0, %r12d
	jmp	.L53
.L60:
	movq	%r12, %rdi
	call	memmove@PLT
	jmp	.L54
	.cfi_endproc
.LFE2294:
	.size	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	.section	.text._ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	.type	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_, @function
_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_:
.LFB2188:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	72(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	movq	8(%rdi), %rcx
	subq	%rax, %rcx
	cmpq	$1, %rcx
	jbe	.L65
.L62:
	movq	72(%rbx), %r12
	movl	$512, %edi
	call	_Znwm@PLT
	movq	%rax, 8(%r12)
	movq	48(%rbx), %rax
	movzbl	0(%rbp), %edx
	testq	%rax, %rax
	je	.L63
	movb	%dl, (%rax)
.L63:
	movq	72(%rbx), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 72(%rbx)
	movq	8(%rax), %rax
	movq	%rax, 56(%rbx)
	leaq	512(%rax), %rdx
	movq	%rdx, 64(%rbx)
	movq	%rax, 48(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L65:
	.cfi_restore_state
	movl	$0, %edx
	movl	$1, %esi
	call	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	jmp	.L62
	.cfi_endproc
.LFE2188:
	.size	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_, .-_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"error"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1788:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1788
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	leaq	236(%rsp), %rsi
	leaq	_ZSt3cin(%rip), %rdi
.LEHB8:
	call	_ZNSirsERi@PLT
	movl	$0, %ebp
.L68:
	cmpl	$8, %ebp
	jg	.L67
	movq	%rsp, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	movsbl	(%rsp), %eax
	leal	-65(%rax), %ebx
	leaq	32(%rsp), %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZNSirsERi@PLT
	leaq	112(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZNSirsERi@PLT
	leaq	m(%rip), %rdx
	movslq	%ebx, %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rdx,%rax,8)
	movl	112(%rsp), %ecx
	movl	%ecx, 4(%rdx,%rax,8)
	addl	$1, %ebp
	jmp	.L68
.L67:
	movq	stdin(%rip), %rdi
	call	_IO_getc@PLT
.LEHE8:
	leaq	208(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	jmp	.L69
.L107:
.LEHB9:
	call	_ZSt16__throw_bad_castv@PLT
.L97:
	movq	%rax, %rbx
	jmp	.L92
.L71:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*48(%rax)
	jmp	.L72
.L108:
	movq	(%rax), %rdx
	addq	-24(%rdx), %rax
	testb	$5, 32(%rax)
	jne	.L73
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 184(%rsp)
	leaq	112(%rsp), %rdi
	movl	$0, %esi
	call	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
.LEHE9:
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	leaq	32(%rsp), %rdi
	movl	$0, %esi
.LEHB10:
	call	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
.LEHE10:
	cmpq	$0, 112(%rsp)
	je	.L74
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rax
	movq	128(%rsp), %rdi
	movq	%rdi, 48(%rsp)
	movq	136(%rsp), %rdi
	movq	%rdi, 56(%rsp)
	movq	144(%rsp), %rdi
	movq	%rdi, 64(%rsp)
	movq	152(%rsp), %rdi
	movq	%rdi, 72(%rsp)
	movq	%rsi, 128(%rsp)
	movq	%rcx, 136(%rsp)
	movq	%rdx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movq	80(%rsp), %rsi
	movq	%rsi, (%rsp)
	movq	88(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 16(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	160(%rsp), %rdi
	movq	%rdi, 80(%rsp)
	movq	168(%rsp), %rdi
	movq	%rdi, 88(%rsp)
	movq	176(%rsp), %rdi
	movq	%rdi, 96(%rsp)
	movq	184(%rsp), %rdi
	movq	%rdi, 104(%rsp)
	movq	%rsi, 160(%rsp)
	movq	%rcx, 168(%rsp)
	movq	%rdx, 176(%rsp)
	movq	%rax, 184(%rsp)
	movq	32(%rsp), %rax
	movq	112(%rsp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rax, 112(%rsp)
	movq	40(%rsp), %rax
	movq	120(%rsp), %rdx
	movq	%rdx, 40(%rsp)
	movq	%rax, 120(%rsp)
.L74:
	leaq	112(%rsp), %rdi
	call	_ZNSt11_Deque_baseIcSaIcEED2Ev
	movl	200(%rsp), %r12d
	movl	$0, %ebp
	movl	$0, %r13d
	jmp	.L86
.L105:
	movq	80(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	88(%rsp), %rdx
	movq	104(%rsp), %rcx
	cmpq	%rdx, %rax
	je	.L103
.L78:
	movq	112(%rsp), %rcx
	movsbl	-1(%rcx), %r14d
	subl	$65, %r14d
	cmpq	%rdx, %rax
	je	.L79
	subq	$1, %rax
	movq	%rax, 80(%rsp)
.L80:
	movq	80(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	88(%rsp), %rdx
	movq	104(%rsp), %rcx
	cmpq	%rdx, %rax
	je	.L104
.L81:
	movq	112(%rsp), %rcx
	movsbl	-1(%rcx), %r15d
	subl	$65, %r15d
	cmpq	%rdx, %rax
	je	.L82
	subq	$1, %rax
	movq	%rax, 80(%rsp)
.L83:
	leaq	m(%rip), %rdx
	movslq	%r14d, %rax
	movslq	%r15d, %rcx
	movl	4(%rdx,%rcx,8), %esi
	cmpl	%esi, (%rdx,%rax,8)
	jne	.L96
	movslq	%r14d, %r14
	movl	(%rdx,%rcx,8), %r13d
	imull	4(%rdx,%r14,8), %r13d
	jmp	.L77
.L103:
	movq	-8(%rcx), %rcx
	addq	$512, %rcx
	movq	%rcx, 112(%rsp)
	jmp	.L78
.L79:
	leaq	32(%rsp), %rdi
	call	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
	jmp	.L80
.L104:
	movq	-8(%rcx), %rcx
	addq	$512, %rcx
	movq	%rcx, 112(%rsp)
	jmp	.L81
.L82:
	leaq	32(%rsp), %rdi
	call	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
	jmp	.L83
.L85:
	movq	80(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
.L76:
	addl	$1, %ebp
.L86:
	cmpl	%r12d, %ebp
	jge	.L95
	movslq	%ebp, %rbx
	movq	%rbx, %rax
	addq	192(%rsp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	je	.L76
	cmpb	$41, %al
	je	.L105
.L77:
	addq	192(%rsp), %rbx
	movsbl	(%rbx), %edi
	call	isupper@PLT
	testl	%eax, %eax
	je	.L76
	movq	80(%rsp), %rdx
	movq	96(%rsp), %rax
	subq	$1, %rax
	cmpq	%rax, %rdx
	je	.L84
	movzbl	(%rbx), %eax
	testq	%rdx, %rdx
	je	.L85
	movb	%al, (%rdx)
	jmp	.L85
.L84:
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
.LEHB11:
	call	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	jmp	.L76
.L95:
	movl	$0, %eax
.L75:
	testb	%al, %al
	je	.L87
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L106
.L96:
	movl	$1, %eax
	jmp	.L75
.L87:
	movl	%r13d, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LEHE11:
	leaq	32(%rsp), %rdi
	call	_ZNSt11_Deque_baseIcSaIcEED2Ev
.L69:
	movq	_ZSt3cin(%rip), %rdx
	leaq	_ZSt3cin(%rip), %rax
	addq	-24(%rdx), %rax
	movq	240(%rax), %rbx
	testq	%rbx, %rbx
	je	.L107
	cmpb	$0, 56(%rbx)
	je	.L71
	movzbl	67(%rbx), %eax
.L72:
	movsbl	%al, %edx
	leaq	192(%rsp), %rsi
	leaq	_ZSt3cin(%rip), %rdi
.LEHB12:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.LEHE12:
	jmp	.L108
.L106:
	leaq	32(%rsp), %rdi
	call	_ZNSt11_Deque_baseIcSaIcEED2Ev
	jmp	.L69
.L73:
	movq	192(%rsp), %rdi
	leaq	208(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L100
	call	_ZdlPv@PLT
.L100:
	movl	$0, %eax
	addq	$248, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L98:
	.cfi_restore_state
	movq	%rax, %rbx
	leaq	112(%rsp), %rdi
	call	_ZNSt11_Deque_baseIcSaIcEED2Ev
.L92:
	movq	192(%rsp), %rdi
	leaq	208(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L94
	call	_ZdlPv@PLT
.L94:
	movq	%rbx, %rdi
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L99:
	movq	%rax, %rbx
	leaq	32(%rsp), %rdi
	call	_ZNSt11_Deque_baseIcSaIcEED2Ev
	jmp	.L92
	.cfi_endproc
.LFE1788:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1788:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1788-.LLSDACSB1788
.LLSDACSB1788:
	.uleb128 .LEHB8-.LFB1788
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB1788
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L97-.LFB1788
	.uleb128 0
	.uleb128 .LEHB10-.LFB1788
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L98-.LFB1788
	.uleb128 0
	.uleb128 .LEHB11-.LFB1788
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L99-.LFB1788
	.uleb128 0
	.uleb128 .LEHB12-.LFB1788
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L97-.LFB1788
	.uleb128 0
	.uleb128 .LEHB13-.LFB1788
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE1788:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I_m, @function
_GLOBAL__sub_I_m:
.LFB2359:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2359:
	.size	_GLOBAL__sub_I_m, .-_GLOBAL__sub_I_m
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_m
	.globl	m
	.bss
	.align 32
	.type	m, @object
	.size	m, 216
m:
	.zero	216
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
