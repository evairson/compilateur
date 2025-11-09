int main() {
  int x;
  int *p;
  x = 5;
  p = &x;
  *p = 10;
  print_int(x);

  // Erreur de typecheck
  x = p;
  p = 42;  

  return 0;
}