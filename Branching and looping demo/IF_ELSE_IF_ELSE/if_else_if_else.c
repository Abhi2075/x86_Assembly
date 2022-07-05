#include <stdio.h>
#include <stdlib.h>

int AS_a, AS_b, AS_c, AS_d, AS_e, AS_f;

int main ()
{
    puts ("Enter integer value for a :");
    scanf ("%d", &AS_a);

    puts ("Enter integer value for b :");
    scanf ("%d", &AS_b);

    puts ("Enter integer value for c :");
    scanf ("%d", &AS_c);

    puts ("Enter integer value for d :");
    scanf ("%d", &AS_d);

    puts ("Enter integer value for e :");
    scanf ("%d", &AS_e);

    puts ("Enter integer value for f :");
    scanf ("%d", &AS_f);

    if (AS_a <= AS_b)
    {
        puts ("if block is executed");
    }
    else if (AS_c >= AS_d)
    {
        puts ("else if 1 block is executed");
    }
    else if (AS_e == AS_f)
    {
        puts ("else if 2 block is executed");
    }
    else
    {
        puts ("all conditions are false");
    }

    exit (0);
}

