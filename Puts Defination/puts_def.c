#include<stdio.h>
#include<stdlib.h>
#include<errno.h>
#include<string.h>
#include<sys/types.h>
#include<fcntl.h>
#include<unistd.h>

void AS_puts(char* msg);

int main(void)
{
    AS_puts("This is a test line");
    AS_puts("abc\tpqr\tlmn");
    AS_puts("\\t");

    return(0);
}

void AS_puts(char* msg)
{
    write(STDOUT_FILENO,msg,strlen(msg));
    write(STDOUT_FILENO,"\n",1);
}

