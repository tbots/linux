#include <unistd.h>
#include <stdio.h>

int main(int argc,char *argv[]) {
 // int   unlink   (const char *pathname) 
 char *pathname = argv[1];
 if ( unlink(pathname) == -1 )
  printf("ERROR!!!!!!\n");
 return 0;
}
