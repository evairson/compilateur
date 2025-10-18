int t(){
  return 3;
}

int f(int x) {
  print_int(x);
  int y ;
  int z ;
  int w ;
  y = x ;
  z = x+x ;
  w = x+z ;
  return w*x*t() ;
}

int g(int y, int w) {
  print_int(y);
  int x ;
  int z ;
  x = f(1)+f(y);
  z = f(w)+f(2);
  return x+z+w*4+y*9+f(y+w);
}

int un(int x) {
  return x;
}

int deux(int y) {
  return un(y)+un(y) ;
}

int trois(int y) {
  return deux(y)+un(y) ;
}

int quatre(int y) {
  return (deux(y)+deux(y))*un(y) ;
}

int cinq(int y) {
  return (quatre(y))+un(y)*un(y)*un(y) ;
}

int pargs(int a, int b, int c, int d) {
  print_int(a);
  print_int(b);
  print_int(c);
  print_int(d);
  return 0; 
}

int main (int a) {
  print_int(un(1));
  print_int(deux(2));
  print_int(trois(3));
  print_int(quatre(4));
  print_int(cinq(5));
  print_int(un(deux(trois(quatre(cinq(2))))));
  print_int(g(1,11));
  print_int(g(2,12));
  print_int(g(3,13));
  print_int(g(4,14));
  print_int(g(5,15));
  pargs(0,1,2,3);
  pargs(1,2,3,0);
  pargs(2,3,0,1);
  pargs(3,0,1,2);
  pargs(42,17,283,19923);
  return 0;
}
