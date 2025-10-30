int sw(int * a, int * b) {
  int t ;
  t = *a ;
  *a = *b ;
  *b = t ;
  return 0;
}

int f() {
  int x ;
  x = 42 ;
  int y;
  y = 100 ;
  sw(&x, &y);
  return y;
}

int main() {
  int x;
  int y;
  int z;
  x=1;
  y=2;
  z=3;
  int i ;
  i = 0 ;
  while(i<10) {
    print_int(x);
    print_int(y);
    print_int(z);
    sw(&x,&y);
    sw(&y,&z);
    i=i+1;
  }
  print_int(f());
  return 0;
}
