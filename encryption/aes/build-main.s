	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"rb"
.LC1:
	.string	"Could not open file"
.LC2:
	.string	"%d\n"
.LC3:
	.string	"Encrypt - 1\nDecrypt - 2"
.LC4:
	.string	"%d"
.LC5:
	.string	"Invalid input"
.LC6:
	.string	"wb"
.LC7:
	.string	"Unknown error"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movl	%edi, -228(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -204(%rbp)
	movq	-240(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	$0, -168(%rbp)
	leaq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L2
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L40
.L2:
	movq	-168(%rbp), %rdx
	leaq	-209(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	addl	$1, -204(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L43
	jmp	.L2
.L43:
	nop
	movq	-168(%rbp), %rdx
	leaq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	freopen@PLT
	movq	%rax, -168(%rbp)
	movl	-204(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -160(%rbp)
	movq	$0, -200(%rbp)
	jmp	.L6
.L7:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movl	%eax, %edx
	movq	-160(%rbp), %rcx
	movq	-200(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -200(%rbp)
.L6:
	movl	-204(%rbp), %eax
	cltq
	cmpq	%rax, -200(%rbp)
	jb	.L7
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-204(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-204(%rbp), %eax
	cltq
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movl	%eax, %edi
	call	len@PLT
	cltq
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.L8
.L9:
	movq	-160(%rbp), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -200(%rbp)
.L8:
	movq	-200(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jb	.L9
	movl	$17, %edi
	call	malloc@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movabsq	$7306000115651669091, %rbx
	movabsq	$8319390282230673696, %rsi
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	movb	$0, 16(%rax)
	movl	$32, %edi
	call	malloc@PLT
	movq	%rax, -120(%rbp)
	movl	$32, %edi
	call	malloc@PLT
	movq	%rax, -176(%rbp)
	movq	$0, -200(%rbp)
	jmp	.L10
.L13:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	$0, -192(%rbp)
	jmp	.L11
.L12:
	movq	-192(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-200(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	-200(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-192(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-192(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-200(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	-200(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-176(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-192(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -192(%rbp)
.L11:
	cmpq	$3, -192(%rbp)
	jbe	.L12
	addq	$1, -200(%rbp)
.L10:
	cmpq	$3, -200(%rbp)
	jbe	.L13
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-136(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -112(%rbp)
	movq	$0, -200(%rbp)
	jmp	.L14
.L19:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$32, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	$0, -192(%rbp)
	jmp	.L15
.L18:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	$0, -184(%rbp)
	jmp	.L16
.L17:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	-200(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-112(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-192(%rbp), %rdx
	salq	$3, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-184(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -184(%rbp)
.L16:
	cmpq	$3, -184(%rbp)
	jbe	.L17
	addq	$1, -192(%rbp)
.L15:
	cmpq	$3, -192(%rbp)
	jbe	.L18
	addq	$1, -200(%rbp)
.L14:
	movq	-200(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L19
	movq	$1, -200(%rbp)
	movq	$10, -104(%rbp)
	movq	-104(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -96(%rbp)
	movq	$1, -200(%rbp)
	jmp	.L20
.L21:
	movq	-200(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$32, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	-200(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	KeyExpansion@PLT
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-176(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$1, -200(%rbp)
.L20:
	movq	-200(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jbe	.L21
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-208(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-208(%rbp), %eax
	cmpl	$1, %eax
	jne	.L22
	movq	-136(%rbp), %rax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	e@PLT
	movq	-136(%rbp), %rax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	show@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$1668179246, (%rax)
	movb	$0, 4(%rax)
	jmp	.L23
.L22:
	movl	-208(%rbp), %eax
	cmpl	$2, %eax
	jne	.L24
	movq	-136(%rbp), %rax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	d@PLT
	leaq	-80(%rbp), %rax
	movl	$1970496882, (%rax)
	movw	$29804, 4(%rax)
	movb	$0, 6(%rax)
	jmp	.L23
.L24:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L23:
	movq	$0, -88(%rbp)
	leaq	-80(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L25
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L40
.L25:
	movq	$0, -200(%rbp)
	jmp	.L26
.L31:
	movq	$0, -192(%rbp)
	jmp	.L27
.L30:
	movq	$0, -184(%rbp)
	jmp	.L28
.L29:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc@PLT
	addq	$1, -184(%rbp)
.L28:
	cmpq	$3, -184(%rbp)
	jbe	.L29
	addq	$1, -192(%rbp)
.L27:
	cmpq	$3, -192(%rbp)
	jbe	.L30
	addq	$1, -200(%rbp)
.L26:
	movq	-200(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L31
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	$0, -200(%rbp)
	jmp	.L32
.L35:
	movq	$0, -192(%rbp)
	jmp	.L33
.L34:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addq	$1, -192(%rbp)
.L33:
	cmpq	$3, -192(%rbp)
	jbe	.L34
	addq	$1, -200(%rbp)
.L32:
	movq	-200(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L35
	movq	$0, -200(%rbp)
	jmp	.L36
.L39:
	movq	$0, -192(%rbp)
	jmp	.L37
.L38:
	movq	-200(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addq	$1, -192(%rbp)
.L37:
	cmpq	$3, -192(%rbp)
	jbe	.L38
	addq	$1, -200(%rbp)
.L36:
	movq	-200(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L39
	movl	$0, %eax
.L40:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L41
	call	__stack_chk_fail@PLT
.L41:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.1.0"
	.section	.note.GNU-stack,"",@progbits
