	.file	"operators.c"
	.globl	n1
	.data
	.align 4
	.type	n1, @object
	.size	n1, 4
n1:
	.long	25
	.globl	n2
	.align 4
	.type	n2, @object
	.size	n2, 4
n2:
	.long	4
	.comm	rs,4,4
	.globl	m1
	.align 4
	.type	m1, @object
	.size	m1, 4
m1:
	.long	25
	.globl	m2
	.align 4
	.type	m2, @object
	.size	m2, 4
m2:
	.long	4
	.comm	rs_m,4,4
	.section	.rodata
.LC0:
	.string	"rs : %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$4, %esp
	movl	n1, %edx
	movl	n2, %eax
	addl	%edx, %eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	n1, %edx
	movl	n2, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	n1, %edx
	movl	n2, %eax
	imull	%edx, %eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	m1, %edx
	movl	m2, %eax
	imull	%edx, %eax
	movl	%eax, rs_m
	movl	rs_m, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	subl	$12, %esp
	pushl	$0
	call	exit
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
