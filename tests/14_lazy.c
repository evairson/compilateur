int f() {
  print_int(0);
  return 0;

}

int g() {
  print_int(1);
  return 1;
}

int h() {
  print_int(2);
  return 2;
}

int main () {
  print_int(f() || g() );
  print_int(42);
  print_int(g() || f() );
  print_int(42);
  print_int(f() && g() );
  print_int(42);
  print_int(g() && f() );
  print_int(42);
  print_int( (g()||f()) && (f()||g()) && (g() && f()) && h()) ;
  return 0;
}
