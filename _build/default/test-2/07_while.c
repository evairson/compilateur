int f(int x) {
  int i ;
  i = 0;
  int a ;
  a = 1;
  int b ;
  b = 1 ;
  int r ;
  while(i<x) {
    i = i+1;
    r = a+b ;
    a = b ;
    b = r;
  }
  return r;
}

int d(int x, int y) {
  int i ;
  i = 0 ;
  int j ;
  j = 0 ;
  while(x>0) {
    while(y>j) {
      i = i+j ;
      j = j+1 ;
    }
    x = x-1;
    y = y+1;
  }
  return i;
}

int main () {
  int i ;
  i = 1;
  while(i<10) {
    i = i+1;
    print_int(f(i));
  }
  while(i<20) {
    print_int(d(i,i*3));
    print_int(d(i*5,i*3));
    i = i+1;
  }
  return 0;
}
