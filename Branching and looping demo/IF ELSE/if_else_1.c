#include <stdio.h>
#include <stdlib.h>

int AS_n1;
int AS_n2;
int AS_sum;

int main()
{
    puts ("Start of program");

    puts ("Enter number 1");
    scanf ("%d", &AS_n1);

    puts ("Enter number 2");
    scanf ("%d", &AS_n2);

    if (AS_n1 > AS_n2)
    {
        AS_sum = AS_n1 - AS_n2;
    }
    else
    {
        AS_sum = AS_n1 + AS_n2;
    }

    printf ("sum : %d\n", AS_sum);

    puts ("End of program");

    exit(0);
}

