/* 
    F(n) : n^2 
    Domain : even numbers between 1 to 10
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
        scanf ("%d", &A[i]);
    }

    /* Range calcualtion */
    for (i = 0; i < 10; i++)
    {
        if ((A[i] % 2) == 0)
        {
            Range[i] = A[i] * A[i];
            printf ("Range[%d] : %d\n",i, Range[i]);
        }
    }
    exit (EXIT_SUCCESS);
}

