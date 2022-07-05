/*
    F(n) : n^3
    Domain : Odd numbers in given ten integers
*/

#include <stdio.h>
#include <stdlib.h>

int A[10];
int i;
int Range[10];

int main()
{
    puts ("Enter ten integer numbers");

    for (i = 0; i < 10; i++)
    {
        printf ("Enter %d number", i);
        scanf ("%d", &A[i]);
    }

    /* Range calculation */
    for (i = 0; i < 10; i++)
    {
        if ((A[i] % 2) != 0)
        {
            Range[i] = A[i] * A[i] * A[i];
            printf ("Range[%d] : %d\n", i, Range[i]);
        }
    }
    exit (EXIT_SUCCESS);
}

