	.file	"Validate_Sqrt.c"
	.globl	AS_d1
	.bss
	.align 8
	.type	AS_d1, @object
	.size	AS_d1, 8
AS_d1:
	.zero	8
	.section	.rodata
.LC0:
	.string	" Enter a value : "
.LC1:
	.string	"%lf"
	.align 4
.LC3:
	.string	" Sqrt of a given number : %lf\n"
.LC4:
	.string	"End of Program"
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
	pushl	$AS_d1
	pushl	$.LC1
	call	scanf
	addl	$16, %esp
	fldl	AS_d1
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L2
	fldl	AS_d1
	subl	$8, %esp
	leal	-8(%esp), %esp
	fstpl	(%esp)
	call	sqrt
	addl	$16, %esp
	subl	$4, %esp
	leal	-8(%esp), %esp
	fstpl	(%esp)
	pushl	$.LC3
	call	printf
	addl	$16, %esp
.L2:
	subl	$12, %esp
	pushl	$.LC4
	call	puts
	addl	$16, %esp
	subl	$12, %esp
	pushl	$0
	call	exit
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
