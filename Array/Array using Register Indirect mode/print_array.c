#include <stdio.h>
#include <stdlib.h>

int AS_A[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int AS_i;

int main()
{
    puts ("Array is as below :");

    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        printf ("AS_A[%d] : %d\n", AS_i, AS_A[AS_i]);
    }

    exit (EXIT_SUCCESS);
}

