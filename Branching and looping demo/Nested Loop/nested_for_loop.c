#include <stdio.h>
#include <stdlib.h>

int AS_i, AS_j;

int main()
{
    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        for (AS_j = 0; AS_j < 10; AS_j++)
        {
            printf ("AS_i : %d\tAS_j : %d\n", AS_i, AS_j);
        }
    }
    exit (0);
}

