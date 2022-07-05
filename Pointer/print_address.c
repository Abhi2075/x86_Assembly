#include <stdio.h>
#include <stdlib.h>

char clatter = 'A';
short sNum = -100;
int iNum = 100;
long int liNum = 0x20104030;
long long int lliNum = 0xA0B0C0D0;
float fNum = 3.14f;
double dNum = 55.23322313;

int main()
{
    printf ("address of clatter : %p\n", &clatter);
    printf ("address of sNum    : %p\n", &sNum);
    printf ("address of iNum    : %p\n", &iNum);
    printf ("address of liNum   : %p\n", &liNum); 
    printf ("address of lliNum  : %p\n", &lliNum);
    printf ("address of fNum    : %p\n", &fNum);
    printf ("address of dNum    : %p\n", &dNum);
    
    exit (0);
}

