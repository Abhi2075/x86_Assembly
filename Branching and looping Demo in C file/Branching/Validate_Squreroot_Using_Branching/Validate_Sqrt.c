#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double AS_d1;

int main ()
{
    puts (" Enter a value : ");
    scanf ("%lf", &AS_d1);

    if (AS_d1 > 0)
    {
        printf (" Sqrt of a given number : %lf\n",sqrt(AS_d1));
    }

    puts ("End of Program");

    exit (0);
}

