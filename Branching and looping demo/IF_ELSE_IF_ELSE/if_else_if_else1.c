#include <stdio.h>
#include <stdlib.h>

int AS_number;

int main ()
{
    puts ("Enter integer value :");
    scanf ("%d", &AS_number);

    if (AS_number > 0)
    {
        puts ("Given number is positive");
    }
    else if ( AS_number < 0 )
    {
        puts ("Given number is negative");
    }
    else 
    {
        puts ("Given number is ZERO");
    }

    exit (0);
}

