#include <stdio.h>
#include <stdlib.h>

// 00001111 00001111 00001111 00001111
// B4       B3       B2       B1

unsigned int AS_n1 = 0x0f0f0f0f;

//11110000 11110000 11110000 11110000
//B4       B3       B2       B1

unsigned int AS_n2 = 0xf0f0f0f0;

unsigned int AS_rs;

int main ()
{
    /*Bitwise NOT (~)
    *   [1]Unary (Needs one operand)
    *   [2]PreFix(Operator first and operand later)
    */
    
    AS_rs = ~AS_n1;
    puts ("Bitwies NOT (~)");
    printf ("AS_rs : %x\n",AS_rs);

    /*Bitwise AND (&)
    *   [1]Binary (Needs two operand)
    *   [2]Infix  (Operator placed inbitween of two operand)
    */

    AS_rs = AS_n1 & AS_n2;
    puts ("Bitwise AND (&)");
    printf ("AS_rs : %x\n",AS_rs);

    /*Bitwise OR (|)
    *   [1]Binary (Needs two operand)
    *   [2]Infix  (Operator placed inbitween of two operand)
    */

    AS_rs = AS_n1 | AS_n2;
    puts ("Bitwise OR (|)");
    printf ("AS_rs : %x\n",AS_rs);

    /*Bitwise XOR (^)
    *   [1]Binary   (Needs two operand)
    *   [2]Infix    (Operator placed inbitween of two operand)
    */

    AS_rs = AS_n1 ^ AS_n2;
    puts ("Bitwise XOR (^)");
    printf ("AS_rs : %x\n", AS_rs);

    exit (0);
}

