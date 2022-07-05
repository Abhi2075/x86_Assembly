	.file	"Print_Addition_Of_Two_Numbers.c"
	.comm	AS_Num1,4,4
	.comm	AS_Num2,4,4
	.comm	AS_Num3,4,4
	.section	.rodata
.LC0:
	.string	"AS_Num3 = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
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
	movl	$100, AS_Num1
	movl	$200, AS_Num2
	movl	AS_Num1, %edx
	movl	AS_Num2, %eax
	addl	%edx, %eax
	movl	%eax, AS_Num3
	movl	AS_Num3, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	subl	$12, %esp
	pushl	$0
	call	exit
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
