#include <stdio.h>

// #include <sys/types.h>
#include <unistd.h>
void main()
{
    // child process because return value zero
    // if (fork() == 0)
    //     printf("Hello from Child!\n");

    // // parent process because return value non-zero.
    // else
    //     printf("Hello from Parent!\n");

    int pid;
    pid = fork();
    if(pid < 0){
        printf("error");
    }
    else if(pid ==0){
        printf("It is a child process:%d \n",getpid());

    }
    else{
        printf("It is a parent process: %d \n",getpid());
    }
}
// int main()
// {
//     forkexample();
//     return 0;
// }