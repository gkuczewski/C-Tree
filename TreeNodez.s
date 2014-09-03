	.file	"TreeNodez.c"
	.section	.rodata
.LC0:
	.string	" Tree evaluation: %d\n\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	leaq	-160(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	setNode
	leaq	-128(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	setNode
	leaq	-96(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	setNode
	movl	$10, %edi
	call	putchar
	leaq	-96(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$42, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setNode
	leaq	-64(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$43, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setNode
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	eval
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-128(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$43, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setNode
	leaq	-96(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$42, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setNode
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	eval
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-128(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$46, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setNode
	leaq	-96(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$42, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setNode
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	eval
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.string	"<%p>[value: %d, left: %p, right: %p]"
	.text
	.globl	nodeToString
	.type	nodeToString, @function
nodeToString:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$255, %esi
	movl	$1, %edi
	call	calloc
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	nodeToString, .-nodeToString
	.globl	setNode
	.type	setNode, @function
setNode:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, %eax
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movb	%al, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movzbl	-16(%rbp), %edx
	movb	%dl, 4(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpl	$0, -36(%rbp)
	je	.L5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	nodeToString
	movq	%rax, %rdi
	call	puts
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	setNode, .-setNode
	.section	.rodata
.LC2:
	.string	"Invald Operator: %c \n"
	.text
	.globl	eval
	.type	eval, @function
eval:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	testb	%al, %al
	jne	.L8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L9
.L8:
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	4(%rax), %eax
	testb	%al, %al
	je	.L10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	eval
	movl	%eax, -8(%rbp)
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
.L11:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L15
	cmpl	$45, %eax
	je	.L16
	cmpl	$42, %eax
	jne	.L26
.L14:
	movl	-8(%rbp), %eax
	imull	-8(%rbp), %eax
	jmp	.L9
.L15:
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	jmp	.L9
.L16:
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	jmp	.L9
.L26:
	jmp	.L17
.L12:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	4(%rax), %eax
	testb	%al, %al
	je	.L18
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	eval
	movl	%eax, -4(%rbp)
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L19:
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L22
	cmpl	$43, %eax
	jg	.L25
	cmpl	$42, %eax
	je	.L21
	jmp	.L20
.L25:
	cmpl	$45, %eax
	je	.L23
	cmpl	$47, %eax
	je	.L24
	jmp	.L20
.L21:
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	jmp	.L9
.L22:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	addl	%edx, %eax
	jmp	.L9
.L23:
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	jmp	.L9
.L24:
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	-4(%rbp)
	jmp	.L9
.L20:
	nop
.L17:
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %edi
	call	exit
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	eval, .-eval
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
