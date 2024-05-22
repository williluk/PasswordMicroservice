#include "passwordGenClient.h"

int main()
{
    printf("This is a randomly generated password: \n");
    char* x = PasswordGenReq("localhost", 55590);
    printf(x);
    printf("\n");
}