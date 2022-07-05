#include <stdio.h>
#include <stdlib.h>

int AS_A[10];
int AS_i;
int AS_min;
int AS_temp;
int main()
{
    for (AS_i = 0; AS_i < 10; AS_i++)
    {
       printf ("Enter %d interger : \n", AS_i);
       scanf ("%d", &AS_A[AS_i]);
    }

    AS_min =AS_A[0];
    AS_temp = 0;
    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        if (AS_min > AS_A[AS_i])
        {
            AS_min = AS_A[AS_i];
            AS_temp = AS_i;
        }
    }

    printf ("Here %d number's element %d is the lowest number in given ten integer\n", AS_temp, AS_A[AS_temp]);

    exit (EXIT_SUCCESS);
}

