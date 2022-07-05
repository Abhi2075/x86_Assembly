#include <stdio.h>
#include <stdlib.h>

struct Date
{
    int day;
    int month;
    int year;
};

struct Date date_1 = {22,2,2022};
struct Date date_2;

struct Date *p_date;

int main(void)
{
    puts ("Predfined date :");
    printf ("%d-%d-%d\n", date_1.day, date_1.month, date_1.year);

    puts("Enter day for date_2 :");
    scanf ("%d", &date_2.day);

    puts ("Enter month for date_2 :");
    scanf ("%d", &date_2.month);

    puts ("Enter year for date_3 :");
    scanf ("%d", &date_2.year);

    printf ("%d-%d-%d\n", date_2.day, date_2.month, date_2.year);

    p_date = &date_2;

    printf ("%d-%d-%d\n", p_date->day, p_date->month, p_date->year);

    exit (EXIT_SUCCESS);
}
