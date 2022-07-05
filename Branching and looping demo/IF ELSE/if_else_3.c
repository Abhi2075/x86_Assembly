#include <stdio.h>
#include <stdlib.h>

int AS_a;
int AS_b;
unsigned int AS_c;
unsigned int AS_d;

int main ()
{
    puts ("Enter number for a :");
    scanf("%d",&AS_a);

    puts ("Enter number for b :");
    scanf ("%d", &AS_b);

    puts ("Enter number for c :");
    scanf ("%u", &AS_c);

    puts ("Enter number for d :");
    scanf ("%u", &AS_d);

    if (AS_a > AS_b || AS_c < AS_d)
    {
        puts ("True"); 
    }
    else
    {
        puts ("False");
    }

    exit(0);
}

