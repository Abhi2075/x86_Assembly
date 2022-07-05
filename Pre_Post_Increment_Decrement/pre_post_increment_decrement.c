#include <stdio.h>
#include <stdlib.h>

int AS_n = 10;
int AS_m;

int main ()
{
    //Pre-Increment
    AS_m = ++AS_n;
    puts ("Pre-Increment");
    printf ("AS_m : %d\tAS_n : %d\n",AS_m,AS_n);    //AS_m = 11, AS_n = 11

    //Post-Increment
    AS_n = 10;
    AS_m = AS_n++;
    puts ("Post-Increment");
    printf ("AS_m : %d\tAS_n : %d\n",AS_m,AS_n);    //AS_m = 10, AS_n = 11

    //Pre-Decrement
    AS_n = 10;
    AS_m = --AS_n;
    puts ("Pre-Decrement");
    printf ("AS_m : %d\tAS_n : %d\n",AS_m,AS_n);    //AS_m = 9, AS_n = 9

    //POst-Decrement
    AS_n = 10;
    AS_m = AS_n--;
    puts ("Post-Decremetn");
    printf ("AS_m : %d\tAS_n : %d\n",AS_m,AS_n);    //AS_m = 10, AS_n = 9

    exit (0);
}


