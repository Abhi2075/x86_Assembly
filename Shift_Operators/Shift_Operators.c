#include <stdio.h>
#include <stdlib.h>

unsigned int AS_n = 0x0a;

int main ()
{
    //Left shift operator
    printf ("AS_n : %d\n",AS_n);
    AS_n = (AS_n << 1);
    
    printf ("AS_n : %d\n",AS_n);
    AS_n = (AS_n << 2);
    printf ("AS_n : %d\n",AS_n);

    AS_n = 0x18;    //0x18 = 24
    printf ("AS_n : %d\n",AS_n);

    AS_n = (AS_n >> 1);
    printf ("AS_n : %d\n",AS_n);

    AS_n = (AS_n >> 2);
    printf ("AS_n : %d\n",AS_n);

    exit (0);
}

