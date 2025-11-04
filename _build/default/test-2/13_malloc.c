int  * t;

int main () {
  int i ;
  t = malloc(sizeof(int) * 40) ;
  i=0;
  t[0] = 0;
  t[1] = 1;
  while(i < 30) {
    *(t+i+2) = *(t+i)+t[i+1];
    print_int(*(t+i));
    i = i+1;
  }
  return 0;
}
