#include <stdio.h>
#include <stdlib.h>

int AS_i, AS_j;

int main ()
{
    int AS_i = 0;
    while ( AS_i < 5)
    {
        AS_j = 0;
        while (AS_j < 6)
        {
            printf ("AS_i : %d\tAS_J : %d\n", AS_i, AS_j);
            AS_j = AS_j + 1;
        }
        AS_i = AS_i + 1;
    }
    exit (0);
}

