#include<stdio.h> /*Decleration of standrd I/O functions*/

// Data instances of built in types

char c = 'A';            //signed character, used to store a character
unsigned char uc = 120;  //1 byte integer

short si = -145;         //2 byte signed short
unsigned short usi = 200;//2 byte unsigned short

int i = -250;            //4 byte signed integer
unsigned ui = 350;       //4 byte unsigned integer

long li = -2000;         //4 byte signed long
unsigned long uli = 150;  //4 byte unsigne long

long long lli = -564;    //8 byte signed long long
unsigned long long ulli = 5; //8 byte unsigned long long

float f = 3.14;          //4 byte single precision floatig point value

double d = 6.28;         //8 byte double precision floating point value

int main(void)
{
    printf("signed char : c : %c\n",c);
    printf("Unsigned char : uc : %hhu\n",uc);

    printf("short : si : %hd\n",si);
    printf("unsigned short : %hu\n",usi);

    printf("integer : i :%d\n",i);
    printf("integer : ui : %u\n",ui);

    printf("long : li %ld\n",li);
    printf("unsigned long : uli %lu\n",uli);

    printf("long long : lli : %lld\n",lli);
    printf("unsigned long long : ulli : %llu\n",ulli);

    printf("single precision float : %f\n",f);
    printf("double precision float : %lf\n",d);

    return(0);

}


