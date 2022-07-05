#include <stdio.h>
#include <stdlib.h>

int n1 = 10;     /* Global data defination statement - initialized */
int n2 = 3;      /* Global data defination statement - initialized*/
int rs;          /* Uninitialized global data defination statement*/
double d_rs;     /* Uninitialized global data defination statement*/

int main (void)
{
    printf ("n1 = %d\n",n1);
    printf ("n2 = %d\n",n2);
    puts ("[1] : Addition Demo : ");
    rs = n1 + n2;
    printf ("rs = %d\n",rs);

    puts ("[2] : Subtraction Demo : ");
    rs = n1 - n2;
    printf ("rs = %d\n",rs);

    puts ("[3] : Multiplication Demo : ");
    rs = n1 * n2;
    printf ("rs = %d\n",rs);

    puts ("[4] : Division Demo : ");
    rs = n1 / n2;
    printf("rs = %d\n",rs);

    puts ("[5] : Remainder Demo :");
    rs = n1 % n2;
    printf("rs = %d\n",rs);

    puts ("[6] : Floationg Demo :");
    d_rs = (float)n1 / n2;
    printf("d_rs : %lf\n",d_rs);
    
    puts ("[7] : pre increment demo :");
    printf ("n1 Before pre increment : %d\n",n1);
    rs = ++n1;
    printf ("rs : %d\n",rs);

    puts ("[8] post incerement operator : ");
    printf (" n1 before post increment : %d\n",rs);
    rs = n1++;
    printf ("rs : %d\n",rs);

    puts ("[9] : Left shift operator :");
    n1 = 100;
    printf ("n1 : %d\n",n1);
    rs = n1 << 2;
    printf ("rs = (n1 << 2) : %d\n",rs);
    rs = n1 << 3;
    printf ("rs = (n1 << 3) : %d\n",rs);
    rs = n1 << 4;
    printf ("rs = (n1 << 4) : %d\n",rs);

    puts ("[10] : Right shift operator :");
    n1 = 100;
    printf ("n1 : %d\n",n1);
    rs = n1 >> 2;
    printf ("rs = (n1<<2) : %d\n",rs);
    rs = n1 >> 3;
    printf ("rs = (n1 >> 3: %d\n",rs);
    rs = n1 >> 4;
    printf ("rs = (n1 >> 4: %d\n",rs);

    n1 = 0x10101010;
    n2 = 0x01010101;

    puts ("[11] : Bitwise AND :");
    rs = n1 & n2;
    printf ("rs : %x\n",rs);

    puts ("[12] : Bitwise OR :");
    rs = n1 | n2;
    printf ("rs : %x\n",rs);
    
    puts ("[13] : Bitwise XOR :");
    rs = n1 ^ n2;
    printf ("rs : %x\n",rs);

    puts ("[14] : Bitwise NOT :");
    printf ("n1 before Bitwise NOT operation : %x\n",n1);
    rs = ~n1;
    printf ("rs : %x\n",rs);

    puts ("[15] : Comparasion Operator : ");
    n1 = 100;
    n2 = 200;
    rs = (n1 < n2);
    printf ("%d < %d = %d\n",n1 ,n2 ,rs);
    rs = (n1 <= n2);
    printf ("%d <= %d = %d\n",n1 ,n2 ,rs);
    rs = (n1 > n2);
    printf ("%d > %d = %d\n",n1 ,n2 ,rs);
    rs = (n1 >= n2);
    printf ("%d >= %d = %d\n",n1 ,n2 ,rs);
    rs = (n1 == n2);
    printf ("%d == %d = %d\n",n1 ,n2 ,rs);
    rs = (n1 != n2);
    printf ("%d != %d  = %d\n",n1 ,n2 ,rs);

    return(0);
}
