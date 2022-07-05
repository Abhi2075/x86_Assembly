#include <stdio.h>
#include <stdlib.h>

int AS_A[10], AS_i,AS_min_index,AS_k, AS_temp;
int main()
{
    puts ("Enter ten integer numbers");

    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        printf ("Enter %d number : ", AS_i);
        scanf ("%d", &AS_A[AS_i]);
    }

    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        AS_min_index = AS_i;

        for (AS_k = AS_i; AS_k < 10; AS_k++)
        {
            if (AS_A[AS_k] < AS_A[AS_min_index])
            {
                AS_min_index = AS_k;
            }
        }

        AS_temp = AS_A[AS_i];
        AS_A[AS_i] = AS_A[AS_min_index];
        AS_A[AS_min_index] = AS_temp;
    }

    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        printf ("Number %d : %d\n", AS_i, AS_A[AS_i]);
    }
    
    exit (EXIT_SUCCESS);
}
