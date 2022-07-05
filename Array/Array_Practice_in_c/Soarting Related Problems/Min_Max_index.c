#include <stdio.h>
#include <stdlib.h>

int AS_A[10], AS_i, AS_MAX, AS_MIN,AS_current_min, AS_current_max;

int main()
{
    puts ("Enter ten integer numbers:");

    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        printf ("%d Number : ",AS_i);
        scanf ("%d", &AS_A[AS_i]);
    }

    AS_current_min = AS_A[0];
    AS_current_max = AS_A[0];
    AS_MAX = 0;
    AS_MIN = 0;

    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        if (AS_current_min > AS_A[AS_i])
        {
            AS_current_min = AS_A[AS_i];
            AS_MIN = AS_i;
        }
        if (AS_current_max < AS_A[AS_i])
        {
            AS_current_max = AS_A[AS_i];
            AS_MAX = AS_i;
        }
    }

    printf ("Here in given ten integers %d number's element %d is maximum and %d number's element %d is mimimum\n", AS_MAX, AS_A[AS_MAX], AS_MIN, AS_A[AS_MIN]);

    exit (EXIT_SUCCESS);
}

