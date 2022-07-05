	.file	"Operator_Practise.c"
	.globl	n1
	.bss
	.align 4
	.type	n1, @object
	.size	n1, 4
n1:
	.zero	4
	.globl	n2
	.data
	.align 4
	.type	n2, @object
	.size	n2, 4
n2:
	.long	1
	.globl	n3
	.align 4
	.type	n3, @object
	.size	n3, 4
n3:
	.long	100
	.globl	n4
	.align 4
	.type	n4, @object
	.size	n4, 4
n4:
	.long	-100
	.globl	m1
	.bss
	.align 4
	.type	m1, @object
	.size	m1, 4
m1:
	.zero	4
	.globl	m2
	.data
	.align 4
	.type	m2, @object
	.size	m2, 4
m2:
	.long	1
	.globl	m3
	.align 4
	.type	m3, @object
	.size	m3, 4
m3:
	.long	269488144
	.comm	rs,4,4
	.section	.rodata
.LC0:
	.string	"rs = %d\n"
.LC1:
	.string	"rs = %x\n"
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
	movl	n1, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	n2, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	n3, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	n4, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	m1, %eax
	notl	%eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC1
	call	printf
	addl	$16, %esp
	movl	m2, %eax
	notl	%eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC1
	call	printf
	addl	$16, %esp
	movl	m3, %eax
	notl	%eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC1
	call	printf
	addl	$16, %esp
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
