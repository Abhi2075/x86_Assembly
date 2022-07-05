#include <stdio.h>
#include <stdlib.h>

int AS_n = 10;
int AS_n_copy;
int* AS_p;  // AS_p is a pointer to address of int

int main()
{
    AS_p = &AS_n;

    AS_n_copy = *AS_p;
    printf ("AS_n_copy : %d\n", AS_n_copy);

    *AS_p = 200;
    AS_n_copy = AS_n;

    printf ("AS_n_copy : %d\n", AS_n_copy);
    exit (0);
}

