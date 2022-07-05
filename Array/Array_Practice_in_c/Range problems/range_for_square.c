/*
    Find out range for given five element array
    Function (rule) : F(n) = n^2
*/

#include <stdio.h>
#include <stdlib.h>
int A[5];
int Range[5];
int i;

int main()
{
    puts ("Enter five numbers for array");
    for(i = 0; i < 5; i++)
    {
        scanf("%d", &A[i]);
    }

    for (i = 0; i < 5; i++)
    {
        Range[i] = A[i] * A[i];
    }

    for (i = 0; i < 5; i++)
    {
        printf ("Range[%d] : %d\n", i, Range[i]);
    }

    exit(0);
}

