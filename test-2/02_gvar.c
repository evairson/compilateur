int a ;
int b ;
int c ;

int main(int x) {
  a = 1 ;
  b = 1 ;
  print_int(a);
  print_int(b);
  
  c = b ;
  b = a+b ;
  a = c ;
  print_int(a);
  print_int(b);
  
  c = b ;
  b = a+b ;
  a = c ;
  print_int(a);
  print_int(b);
  
  c = b ;
  b = a+b ;
  a = c ;
  print_int(a);
  print_int(b);
  
  c = b ;
  b = a+b ;
  a = c ;
  print_int(a);
  print_int(b);
  
  c = b ;
  b = a+b ;
  a = c ;
  print_int(a);
  print_int(b);


  print_int(a+b);
  print_int((a+b)+b);
  print_int(((a+b)+b+(a+b)));
  print_int(((a+b)+b+(a+b))*12);
  return 0;
}
