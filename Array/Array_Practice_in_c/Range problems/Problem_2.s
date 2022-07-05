	.file	"Problem_PreProcessed.c"
	.comm	A,20,4
	.comm	i,4,4
	.comm	Range,20,4
	.section	.rodata
.LC0:
	.string	"Enter five integer numbers : "
.LC1:
	.string	"%d"
.LC2:
	.string	"Range[%d] : %d\n"
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
	movl	$0, i
	jmp	.L2
.L3:
	movl	i, %eax
	sall	$2, %eax
	addl	$A, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC1
	call	__isoc99_scanf
	addl	$16, %esp
	movl	i, %eax
	addl	$1, %eax
	movl	%eax, i
.L2:
	movl	i, %eax
	cmpl	$4, %eax
	jle	.L3
	movl	$0, i
	jmp	.L4
.L5:
	movl	i, %eax
	movl	i, %edx
	movl	A(,%edx,4), %edx
	addl	%edx, %edx
	addl	$1, %edx
	movl	%edx, Range(,%eax,4)
	movl	i, %eax
	addl	$1, %eax
	movl	%eax, i
.L4:
	movl	i, %eax
	cmpl	$4, %eax
	jle	.L5
	movl	$0, i
	jmp	.L6
.L7:
	movl	i, %eax
	movl	Range(,%eax,4), %edx
	movl	i, %eax
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	$.LC2
	call	printf
	addl	$16, %esp
	movl	i, %eax
	addl	$1, %eax
	movl	%eax, i
.L6:
	movl	i, %eax
	cmpl	$4, %eax
	jle	.L7
	subl	$12, %esp
	pushl	$0
	call	exit
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
