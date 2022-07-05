#include <stdio.h>
#include <stdlib.h>

int n1 = 25;
int n2 = 4;
int rs;

unsigned int m1 = 25;
unsigned int m2 = 4;
unsigned int rs_m;

int main ()
{
    rs = n1 + n2;
    printf ("rs : %d\n",rs);

    rs = n1 - n2;
    printf ("rs : %d\n",rs);

    /*signed multiplication*/
    rs = n1 * n2;
    printf ("rs : %d\n",rs);

    /*unsigned multiplication*/
    rs_m = m1 * m2;
    printf ("rs : %d\n",rs_m);

    exit (0);
}


