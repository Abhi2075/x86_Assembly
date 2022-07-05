#include <stdio.h>
#include <stdlib.h>

int AS_n1;
int AS_n2;

int main()
{
    puts ("Enter AS_n1 :");

    /*  Scan formated input form standrd input device
    *   parameter 1 : type of a data
    *   parameter 2 : address of a variable to hold that data
    */

    scanf ("%d", &AS_n1);

    puts ("Ender AS_n2 :");
    scanf ("%d", &AS_n2);

    if (AS_n1 > AS_n2)
    {
        puts ("AS_n1 > AS_n2");
    }
    else
    {
        puts ("AS_n2 > AS_n1");
    }
    exit (0);
}


