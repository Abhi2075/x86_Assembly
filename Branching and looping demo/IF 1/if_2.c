#include <stdio.h>
#include <stdlib.h>

int AS_n1;
int AS_n2;

int main()
{
    puts ("Start of program");
    puts ("Enter number 1 :");
    scanf ("%d",&AS_n1);

    puts ("Enter number 2 :");
    scanf ("%d",&AS_n2);

    if (AS_n1 <= AS_n2)
    {
        puts ("This message is print because number 1 is less then or equal to nuber 2");
    }

    puts ("End of program");

    exit(0);
}

