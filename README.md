# PasswordMicroservice

## Description
This program is designed to provide randomly generated passwords via request/response socket communication. This communication can happen over the internet or on one machine with minimal changes. This program is designed with a C program interface in mind, and a C language API is provided for making a request and receiving the password in char array format.  
## Setup (Server)
1. Download all of the files from this repository onto your server.
2. Run the bash command `make all` to compile the code. 
3. Run the following bash command in the project directory. Replace "socket number" with a socket on your server: `./passwordGen <socket number> &`

## Setup (Client)
1. Download all of the files from this repository onto your client.
2. Run the bash command `make all` to compile the code.
3. Add the following line to the top of your C program: `#include "passwordGenClient.h"`

## Making a Request
After setup, you will have access to the `char* PasswordGenReq(char* hostname, int portNumber)` function within your C program. This function takes the hostname and port number of the server as parameters and will return the result of the request for a generated password as a char array. When using a local server, the hostname is simply "localhost" and the port number the same as the one you select while launching the server.

Use of this function in a C program with a local server should look something like this:
```
printf("This is a randomly generated password: \n");
char* pswrd = PasswordGenReq("localhost", 80000);
printf(pswrd);
```
## UML Diagram
<img width="482" alt="Screenshot 2024-05-21 223726" src="https://github.com/williluk/PasswordMicroservice/assets/146780724/c51365d7-d540-4078-a89a-e37cd40d12d1">
