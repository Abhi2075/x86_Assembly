void exit(int);
int printf(const char* fmt,...);

int AS_Num1,AS_Num2,AS_Num3;

int main(void)
{
    /*Initialization of variables */
    AS_Num1 = 100;
    AS_Num2 = 200;

    AS_Num3 = AS_Num1 + AS_Num2;

    printf("AS_Num3 = %d\n", AS_Num3);

    exit(0);
}

