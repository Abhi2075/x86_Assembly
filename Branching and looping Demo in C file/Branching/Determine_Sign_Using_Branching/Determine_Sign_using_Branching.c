#include <stdio.h>
#include <stdlib.h>

int AS_n1;

int main()
{
    puts ("Enter AS_n1 :");
    scanf ("%d", &AS_n1);

    if (AS_n1 > 0)
    {
        puts ("Given number is positive");
    }
    else if (AS_n1 < 0)
    {
        puts ("Given number is negative");
    }
    else 
    {
        puts ("Given number is zero");
    }
    exit (0);
}

