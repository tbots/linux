#include <stdio.h>

int main() {
//  char word[] = {};   // word[0] = ''
//  printf("sizeof(word): %d\n", sizeof(word));
  //int number=10;
  char character = 'a';
  char word[10];    // array word[0] word[1]  
  printf("word length: %d\n",(int) sizeof(word));
  printf("character is %d\n",  character);

  word[0] = 'd';
  word[1] = 'a';
  word[2] = '\0';
  word[3] = 'h';
  word[4] = 'a';
  word[5] = 'k';
  printf("word[0]: %d %c\n",word[0],word[0]);
  printf("word[1]: %d %c\n",word[1],word[1]);
  printf("word[2]: %d %c\n",word[2],word[2]);
  printf("word[3]: %d %c\n",word[3],word[3]);
  printf("word[4]: %d %c\n",word[4],word[4]);

  printf("0x%08x\t%c\n", &word[0], word[0]);
  printf("0x%08x\t%c\n", &word[1], word[1]);
  printf("0x%08x\t%c\n", &word[2], word[2]);
  printf("0x%08x\t%c\n", &word[3], word[3]);
  printf("0x%08x\t%c\n", &word[4], word[4]);
  /*printf("0x%08x\t%d\n", &word[5], word[5]);
  printf("0x%08x\t%d\n", &word[6], word[6]);*/

  printf("0x%08x     %s\n", &word[0], &word[0]);

  char *pathname = "/etc/root";
  printf("pathname: %s\",pathname);
  return 0;
}
