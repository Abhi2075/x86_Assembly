#include <stdio.h>
#include <stdlib.h>

int AS_i;

int main ()
{
    for (AS_i = 0; AS_i < 100; AS_i++)
    {
        
        if (AS_i % 7 == 0)
        {
            continue;
        }
        printf ("AS_i : %d\n", AS_i);
    }
    exit(0);
}

