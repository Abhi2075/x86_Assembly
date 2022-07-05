/*
    F(n) : 2n + 1
    Domain : 1 to 5
*/

#include <stdio.h>
#include <stdlib.h>

int A[5];
int i;
int Range[5];

int main ()
{
    puts ("Enter five integer numbers : ");

    for (i = 0; i < 5; i++)
    {
        scanf("%d", &A[i]);
    }

    /* Range of function */
    for (i = 0; i < 5; i++)
    {
        Range[i] = (2 * A[i]) + 1;        
    }

    /* Print Range array */
    for (i = 0; i < 5; i++)
    {
        printf ("Range[%d] : %d\n", i, Range[i]);
    }

    exit (EXIT_SUCCESS);
}

