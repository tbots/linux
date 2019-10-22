#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main() {
  const char *filename = "notes";   // filename="notes"
  int fd = -1;    // fd=-1

  fd = open(filename, O_RDWR);    // open("notes",1201);
  printf("fd: %d\n",fd);

  int r;
  char *text = "URA!!!\n";
  r = write(fd, text ,strlen(text));
  printf("r: %d\n",r);
  return 0;
}
