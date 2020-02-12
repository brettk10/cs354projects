	.file	"n_in_a_row.c"
	.text
	.globl	COMMA
	.section	.rodata
.LC0:
	.string	","
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	COMMA, @object
	.size	COMMA, 4
COMMA:
	.long	.LC0
	.section	.rodata
.LC1:
	.string	"Error in reading the file."
	.text
	.globl	get_dimensions
	.type	get_dimensions, @function
get_dimensions:
.LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	subl	$4, %esp
	pushl	-28(%ebp)
	leal	-20(%ebp), %eax
	pushl	%eax
	leal	-24(%ebp), %eax
	pushl	%eax
	call	getline@PLT
	addl	$16, %esp
	cmpl	$-1, %eax
	jne	.L2
	subl	$12, %esp
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L2:
	movl	$0, -16(%ebp)
	movl	COMMA@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	strtok@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	subl	$12, %esp
	pushl	-16(%ebp)
	call	atoi@PLT
	addl	$16, %esp
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	nop
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L3
	call	__stack_chk_fail_local
.L3:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	get_dimensions, .-get_dimensions
	.globl	n_in_a_row
	.type	n_in_a_row, @function
n_in_a_row:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$80, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$0, -76(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -8(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L7
.L12:
	movl	$0, -64(%ebp)
	jmp	.L8
.L11:
	movl	-68(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$1, -8(%ebp)
	jne	.L9
	addl	$1, -76(%ebp)
	jmp	.L10
.L9:
	cmpl	$2, -8(%ebp)
	jne	.L10
	addl	$1, -72(%ebp)
.L10:
	addl	$1, -64(%ebp)
.L8:
	movl	-64(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L11
	addl	$1, -68(%ebp)
.L7:
	movl	-68(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L12
	movl	-76(%ebp), %eax
	subl	-72(%ebp), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L13
	cmpl	$1, -4(%ebp)
	je	.L13
	movl	$0, %eax
	jmp	.L6
.L13:
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L14
.L21:
	movl	$0, -60(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L15
.L18:
	movl	-32(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$1, -8(%ebp)
	jne	.L16
	addl	$1, -60(%ebp)
	jmp	.L17
.L16:
	cmpl	$2, -8(%ebp)
	jne	.L17
	subl	$1, -60(%ebp)
.L17:
	addl	$1, -28(%ebp)
.L15:
	movl	-28(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L18
	movl	-60(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L19
	addl	$1, -56(%ebp)
	addl	$1, -48(%ebp)
	jmp	.L20
.L19:
	movl	12(%ebp), %eax
	negl	%eax
	cmpl	%eax, -60(%ebp)
	jne	.L20
	addl	$1, -44(%ebp)
	addl	$1, -36(%ebp)
.L20:
	addl	$1, -32(%ebp)
.L14:
	movl	-32(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L21
	movl	$0, -24(%ebp)
	jmp	.L22
.L29:
	movl	$0, -60(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L23
.L26:
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$1, -8(%ebp)
	jne	.L24
	addl	$1, -60(%ebp)
	jmp	.L25
.L24:
	cmpl	$2, -8(%ebp)
	jne	.L25
	subl	$1, -60(%ebp)
.L25:
	addl	$1, -20(%ebp)
.L23:
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L26
	movl	-60(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L27
	addl	$1, -56(%ebp)
	addl	$1, -52(%ebp)
	jmp	.L28
.L27:
	movl	12(%ebp), %eax
	negl	%eax
	cmpl	%eax, -60(%ebp)
	jne	.L28
	addl	$1, -44(%ebp)
	addl	$1, -40(%ebp)
.L28:
	addl	$1, -24(%ebp)
.L22:
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L29
	movl	$0, -60(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L30
.L33:
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$1, -8(%ebp)
	jne	.L31
	addl	$1, -60(%ebp)
	jmp	.L32
.L31:
	cmpl	$2, -8(%ebp)
	jne	.L32
	subl	$1, -60(%ebp)
.L32:
	addl	$1, -16(%ebp)
.L30:
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L33
	movl	-60(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L34
	addl	$1, -56(%ebp)
.L34:
	movl	12(%ebp), %eax
	negl	%eax
	cmpl	%eax, -60(%ebp)
	jne	.L35
	addl	$1, -44(%ebp)
.L35:
	movl	$0, -60(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L36
.L39:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	subl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$1, -8(%ebp)
	jne	.L37
	addl	$1, -60(%ebp)
	jmp	.L38
.L37:
	cmpl	$2, -8(%ebp)
	jne	.L38
	subl	$1, -60(%ebp)
.L38:
	addl	$1, -12(%ebp)
.L36:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L39
	movl	-60(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L40
	addl	$1, -56(%ebp)
	jmp	.L41
.L40:
	movl	12(%ebp), %eax
	negl	%eax
	cmpl	%eax, -60(%ebp)
	jne	.L41
	addl	$1, -44(%ebp)
.L41:
	movl	-48(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jle	.L42
	movl	$0, %eax
	jmp	.L6
.L42:
	movl	-52(%ebp), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jle	.L43
	movl	$0, %eax
	jmp	.L6
.L43:
	movl	-56(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jle	.L44
	movl	$0, %eax
	jmp	.L6
.L44:
	movl	$1, %eax
.L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	n_in_a_row, .-n_in_a_row
	.section	.rodata
	.align 4
.LC2:
	.string	"The number of command-line arguments is incorrect\n - It should be in the following format: ./n_in_a_row <filename.txt>"
.LC3:
	.string	"r"
.LC4:
	.string	"Can't open file for reading."
.LC5:
	.string	"Error while reading the file."
.LC6:
	.string	"valid"
.LC7:
	.string	"invalid"
.LC8:
	.string	"Error while closing the file."
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x74,0x6
	.cfi_escape 0x10,0x6,0x2,0x75,0x7c
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	subl	$76, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, %eax
	movl	4(%eax), %edx
	movl	%edx, -76(%ebp)
	movl	%gs:20, %ecx
	movl	%ecx, -28(%ebp)
	xorl	%ecx, %ecx
	cmpl	$2, (%eax)
	je	.L46
	subl	$12, %esp
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L46:
	movl	-76(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	.LC3@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fopen@PLT
	addl	$16, %esp
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.L47
	subl	$12, %esp
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L47:
	movl	$0, -36(%ebp)
	subl	$8, %esp
	leal	-72(%ebp), %eax
	pushl	%eax
	pushl	-40(%ebp)
	call	get_dimensions
	addl	$16, %esp
	movl	-72(%ebp), %eax
	sall	$2, %eax
	subl	$12, %esp
	pushl	%eax
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L48
.L49:
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	-60(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	-32(%ebp), %edx
	leal	(%ecx,%edx), %esi
	subl	$12, %esp
	pushl	%eax
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, (%esi)
	addl	$1, -60(%ebp)
.L48:
	movl	-72(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jl	.L49
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L50
.L54:
	subl	$4, %esp
	pushl	-40(%ebp)
	leal	-64(%ebp), %eax
	pushl	%eax
	leal	-68(%ebp), %eax
	pushl	%eax
	call	getline@PLT
	addl	$16, %esp
	cmpl	$-1, %eax
	jne	.L51
	subl	$12, %esp
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L51:
	movl	COMMA@GOTOFF(%ebx), %edx
	movl	-68(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	strtok@PLT
	addl	$16, %esp
	movl	%eax, -56(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L52
.L53:
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-48(%ebp), %edx
	sall	$2, %edx
	leal	(%eax,%edx), %esi
	subl	$12, %esp
	pushl	-56(%ebp)
	call	atoi@PLT
	addl	$16, %esp
	movl	%eax, (%esi)
	movl	COMMA@GOTOFF(%ebx), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$0
	call	strtok@PLT
	addl	$16, %esp
	movl	%eax, -56(%ebp)
	addl	$1, -48(%ebp)
.L52:
	movl	-72(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jl	.L53
	addl	$1, -52(%ebp)
.L50:
	movl	-72(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jl	.L54
	movl	-72(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-32(%ebp)
	call	n_in_a_row
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	cmpl	$1, -36(%ebp)
	jne	.L55
	subl	$12, %esp
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	jmp	.L56
.L55:
	subl	$12, %esp
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
.L56:
	movl	$0, -44(%ebp)
	jmp	.L57
.L58:
	movl	-44(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	free@PLT
	addl	$16, %esp
	addl	$1, -44(%ebp)
.L57:
	movl	-72(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jl	.L58
	subl	$12, %esp
	pushl	-32(%ebp)
	call	free@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	-40(%ebp)
	call	fclose@PLT
	addl	$16, %esp
	testl	%eax, %eax
	je	.L59
	subl	$12, %esp
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
.L59:
	movl	$0, %eax
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L61
	call	__stack_chk_fail_local
.L61:
	leal	-12(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB8:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE8:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB9:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE9:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
