#include <stdio.h>
#include <stdlib.h>

int AS_n1; /* To hold the integer value */
int AS_mod; /* To hold the magnitude of a integer ignoring it's sign */

int main()
{
    puts ("Enter am integer :");
    scanf ("%d", &AS_n1);

    if (AS_n1 > 0 )
    {
        AS_mod = AS_n1;
    }
    else
    {
        AS_mod = -AS_n1;
    }
    printf ("Modulus of a given number is : %d\n",AS_mod);
    exit(0);
}



