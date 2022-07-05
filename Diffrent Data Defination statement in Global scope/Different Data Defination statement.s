# This assembley program is conversion of Different Data Defination statement in Global scope


# Rule 1 : Global initialized variable in c = data section in assembly.
# Rule 2 : Global uninitialized variable in c = bss (Block started by symbol) section in assem           bly.

# Global variable c, s, n, ln in .c file will go to the data section as per Rule 1
# Global variable c1,s1, n1, ln1 in .c file will go to the bss section as per Rule 2

#Note : This all size are 32 Bit machine specific

#Create data section
.section .data
    c:
    .ascii "A"   # char -> .ascii -> allocate 1 byte.

    s:
    .vlaue 200   #short -> .value -> allocate 2 byte.

    n:
    .int 500    #int -> .int -> allocate 4 byte.

    ln:
    .long 0x605040302010 #lont -> .long -> allocate 4 byte


#Create bss section
.section .bss
    .comm c1,  1, 4
    .comm s1,  2, 4
    .comm n1,  4 ,4
    .comm ln1, 4 ,4

# Here .comm means Common memory area.

# main function
.section .text
.globl main
main:

    #Prologue
    pushl %ebp
    movl  %esp, %ebp

    # In this program main is empty

    # Epilogue for main (which is different from any other function)
    pushl $0
    call exit


