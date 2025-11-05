int g;

int a() {
  int d;
  int e;
  scanf("%d",&d);
  scanf("%d",&e);
  printf("a: %d\n",d*42);
  printf("b: %d\n",e);
  printf("c: %d\n",e*43+d*42);
  return 0;
}

int b() {
  int d;
  scanf("%d",&d);
  printf("a: %d\n",d*42);
  printf("b: %d\n",g);
  printf("c: %d\n",g+d*42);
  return 0;
}


int main () {
  int d;
  a();
  b();
  return 0;
}
