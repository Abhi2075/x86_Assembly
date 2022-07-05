#include <stdio.h>
#include <stdlib.h>

int AS_A[10], AS_i, AS_MAX, AS_temp;

int main()
{
    puts ("Enter ten integer numbers :");

    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        printf ("%d number :", AS_i);
        scanf ("%d", &AS_A[AS_i]);
    }

    AS_temp = AS_A[0];
    AS_MAX = 0;

    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        if (AS_temp < AS_A[AS_i])
        {
           AS_temp = AS_A[AS_i];
           AS_MAX = AS_i;
        }
    }
    
    printf ("%d number's element %d is the maxim number\n", AS_MAX, AS_A[AS_MAX]);

    exit (EXIT_SUCCESS);
}

