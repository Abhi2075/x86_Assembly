#include <stdio.h>

int AS_A[7] = {10, 20 ,30, 40, 50, 60, 70};     /*  Array of 7 integers */
int AS_sum;    /* variable to store the summation of the all elements in array */
int AS_i;      /* loop variable */

int main ()
{
    /* Pre-condition AS_sum == 0 */
    AS_sum = 0;    /* initialize sum variable */
    AS_i = 0;      /* initialize of loop variable i */

    while (AS_i < 7)   /* loop variable condition */
    {
        AS_sum = AS_sum + AS_A[AS_i]; /* statement in body for invarient condition */
        AS_i = AS_i + 1;    /* loop variable modification statement */
    }

    /* Post-condition AS_sum = AS_A[0] + AS_A[1] + AS_A[2] + AS_A[3] + AS_A[4] + AS_A[5] + AS_A[6] + AS_A[7] */
   printf ("AS_sum  : %d\n", AS_sum);

   return (0);
}

