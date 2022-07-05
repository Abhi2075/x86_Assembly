#include <stdio.h>
#include <stdlib.h>

int AS_i;
int AS_n;

int main ()
{
    for ( AS_i = 0; AS_i < 100; AS_i++)
    {
        AS_n = rand();

        if (AS_n % 7 == 0)
        {
            break;
        }
        printf ("AS_n : %d\n",AS_n);
    }
    exit(0);
}

