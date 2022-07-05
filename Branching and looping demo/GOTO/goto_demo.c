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
                    goto out_of_all_loop;
                }
                printf ("AS_i : %d\tAS_j : %d\tAS_K : %d\n",AS_i, AS_j, AS_k); 
            }
        }
    }

    out_of_all_loop :
    puts ("End of program");
    exit (0);
}

