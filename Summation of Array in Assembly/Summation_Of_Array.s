.section .rodata

msgp1:
.string "arr[%d] : %d\n"

msgp2:
.string "Summation of all elememts in array = [%d]\n"

msgp3:
.string "Abishek Practice in Assembly"


.section .data

.global arr
.type arr,@object
.size arr,20
.align 4

arr:
.int 10,20,30,40,50


.section .bss

.comm i,4,4
.comm sum,4,4


.section .text

.global main
.type main,@function

main:
    pushl %ebp
    movl %esp,%ebp
    movl $0,sum
    movl $0,i
    jmp mn_cond1

mn_for1:
    movl arr(,%eax,4),%edx
    addl %edx,sum
    pushl %edx
    pushl %eax
    pushl $msgp1
    call printf
    addl $12,%esp
    addl $1,i

mn_cond1:
    movl i,%eax
    cmpl $5,%eax
    jl mn_for1

    movl sum,%eax
    pushl %eax
    pushl $msgp2
    call printf
    addl $8,%esp


    pushl $msgp3
    call puts
    addl $4,%esp

    pushl $0
    call exit


