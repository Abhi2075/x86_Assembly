#include <stdio.h>
#include <stdlib.h>

int AS_i, AS_j;

int main()
{
    AS_i = 0;
    AS_j = 0;

    while ( AS_i < 10 || AS_j < 21)
    {
        printf ("AS_i : %d\tAS_j : %d\n",AS_i, AS_j);

        AS_i = AS_i + 1;
        AS_j = AS_j + 3;
    }

    exit (0);
}

