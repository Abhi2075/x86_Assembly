#include <stdio.h>
#include <stdlib.h>

int AS_i, AS_j, AS_k;
int AS_flag1 = 0;

int main ()
{
    for (AS_i = 0; AS_i < 10; AS_i++)
    {
        for (AS_j = 0; AS_j < 10; AS_j++)
        {
            for (AS_k = 0; AS_k < 10; AS_k++)
            {
                if (AS_i + AS_j + AS_k > 20)
                {
                    AS_flag1 =1;
                    break;
                }
                printf ("AS_i : %d\tAS_j : %d\tAS_k : %d\n",AS_i, AS_j, AS_k);
            }
            if (AS_flag1 == 1)
            {
                break;
            }
        }
        if (AS_flag1 == 1)
        {
            break;
        }
    }
    puts ("End of program");

    exit (0);
}

