	.file	"Operators.c"
	.globl	n1
	.data
	.align 4
	.type	n1, @object
	.size	n1, 4
n1:
	.long	10
	.globl	n2
	.align 4
	.type	n2, @object
	.size	n2, 4
n2:
	.long	3
	.comm	rs,4,4
	.comm	d_rs,8,8
	.section	.rodata
.LC0:
	.string	"[1] : Addition Demo : "
.LC1:
	.string	"rs = %d\n"
.LC2:
	.string	"[2] : Subtraction Demo : "
	.text
	.globl	main
	.type	main, @function
.LC3:
    .string "Compie seprately \n"
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
    
    pushl   $.LC3
    call    puts
    addl    $4, %esp
	
    pushl	$.LC0
	call	puts
	addl	$16, %esp
	movl	n1, %edx
	movl	n2, %eax
	addl	%edx, %eax
	movl	%eax, rs
	movl	rs, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC1
	call	printf
	addl	$16, %esp
	subl	$12, %esp
	pushl	$.LC2
	call	puts
	addl	$16, %esp
	movl	n1, %edx
	movl	n2, %eax
	subl	%eax, %edx
	movl	%edx, %eax
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
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
