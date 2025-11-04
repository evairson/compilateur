int g;
char c[100];
char* d[3] ;

int main () {
  scanf("%s",c);
  printf("a: %s\n",c);
  char * e ;
  d[0] = c;
  e = malloc(sizeof(char) * 10);
  scanf("%s",e);
  printf("b: %s\n",e);
  d[1] = e;
  e = malloc(sizeof(char) * 10);
  scanf("%s",e);
  printf("c: %s\n",e);
  d[2] = e ;
  g = 0 ;
  while(g<3) {
    printf("%d", g);
    printf(": [%s]\n", d[g]);
    g = g+1;
  }
  printf("OK!\n",0);
  return 0;
}
