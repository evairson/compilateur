int g;
int *pg;

int main() {
  int x;
  int *p;

  x = 42;
  p = &x;
  print_int(*p);

  *p = 99;
  print_int(x);

  g = 7;
  pg = &g;
  *pg = *pg + 1;
  print_int(*pg);

  return 0;
}