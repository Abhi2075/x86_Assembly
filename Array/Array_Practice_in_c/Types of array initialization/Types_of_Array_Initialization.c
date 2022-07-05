#include <stdio.h>
#include <stdlib.h>

int A[5]; /* Uninitialized and Dimenssion provided */
int i;    /* loop Variable */
int B[5] = {10,20,30,40,50}; /* Size mentioned and initialized  */
int C[5] = {10,20,30};  /* Partial initialized and size specified */
int D[] = {81,82,83,84,85}; /* Initialized and size is not mentionied */

int main()
{
    A[0] = 1;
    A[1] = 2;
    A[2] = 3;
    A[3] = 4;
    A[4] = 5;

    /* Print A array using loop*/
    for (i = 0; i < 5; i++)
    {
        printf ("A[%d] : %d\n", i, A[i]);
    }
    
    /* Print B array using loop*/
    for (i = 0; i < 5; i++)
    {
        printf ("B[%d] : %d\n", i, B[i]);
    }

    /* Print C array using loop*/
    for (i = 0; i < 5; i++)
    {
        printf ("C[%d] : %d\n",i, C[i]);
    }
    
    /* Print D array using loop*/
    for (i = 0; i < sizeof(D)/4; i++)
    {
        printf ("D[%d] : %d\n", i, D[i]);
    }

    exit(0);
}

