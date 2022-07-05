#include <stdio.h>
#include <stdlib.h>

int AS_choise;
int AS_should_continue;

int main()
{
    do 
    {
        puts ("[1] Inseert [2] Delete [3] Saerch");
        scanf ("%d", &AS_choise);

        switch (AS_choise)
        {
            case 1 :
            {
                puts ("Insert was selected");
                break;
            }
            case 2 :
            {
                puts ("Delete was selected");
                break;
            }
            case 3 :
            {
                puts ("Search was selected");
                break;
            }
            default :
            {
                puts ("Wrong choise");
            }
        }

        puts ("Are you want to continue? Yes - [1], No - [0]");
        scanf ("%d", &AS_should_continue);

        if (AS_should_continue != 1 && AS_should_continue !=0 )
        {
            AS_should_continue = 0;
        }
    }while (AS_should_continue == 1);

    exit (0);
}

