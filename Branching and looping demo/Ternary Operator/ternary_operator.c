#include <stdio.h>
#include <stdlib.h>

int AS_n, AS_rs;

int main ()
{
    puts ("Enter a number :");
    scanf ("%d", &AS_n);

   /*
   * if (AS_n > 0 )
   * {
   *     AS_rs  = AS_n + 5;
   * }
   * else
   * {
   *     AS_rs = -AS_n + 5;
   * }
   */

   AS_rs = AS_n > 0 ? (AS_n + 5) : ((-AS_n) + 5);

   printf ("Result : %d\n", AS_rs);

   exit (0);

}

/*
    if (condition)
    {
        RHS
    }
    else
    {
        RHS
    }
    
    if (AS_n > 0)
    {
        AS_n = AS_n;
    }
    else
    {
        AS_n = -AS_n;
    }

    int AS_temp;
    if (AS_n > 0)
    {
        AS_temp = AS_n;
    }
    else
    {
        AS_temp = -AS_n;
    }

    AS_rs = AS_temp + constant;

    lhs = (cond ? (rhs1) : (rhs2))

    lhs = COMMON_MATI((cond ? (rhs1) : (rhs2)))

*/
