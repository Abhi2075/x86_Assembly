	.file	"Branching_Statements_Demo.c"
	.comm	AS_n1,4,4
	.comm	AS_n2,4,4
	.section	.rodata
.LC0:
	.string	"Enter AS_n1 :"
.LC1:
	.string	"%d"
.LC2:
	.string	"Ender AS_n2 :"
.LC3:
	.string	"AS_n1 > AS_n2"
.LC4:
	.string	"AS_n2 > AS_n1"
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
	subl	$12, %esp
	pushl	$.LC0
	call	puts
	addl	$16, %esp
	subl	$8, %esp
	pushl	$AS_n1
	pushl	$.LC1
	call	__isoc99_scanf
	addl	$16, %esp
	subl	$12, %esp
	pushl	$.LC2
	call	puts
	addl	$16, %esp
	subl	$8, %esp
	pushl	$AS_n2
	pushl	$.LC1
	call	__isoc99_scanf
	addl	$16, %esp
	movl	AS_n1, %edx
	movl	AS_n2, %eax
	cmpl	%eax, %edx
	jle	.L2
	subl	$12, %esp
	pushl	$.LC3
	call	puts
	addl	$16, %esp
	jmp	.L3
.L2:
	subl	$12, %esp
	pushl	$.LC4
	call	puts
	addl	$16, %esp
.L3:
	subl	$12, %esp
	pushl	$0
	call	exit
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
