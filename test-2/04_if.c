int f(int a, int b) {
  if(a<b) {
    print_int(1);
  } else {
    print_int(0);
  }
  if(a>b) {
    print_int(1);
  } else {
    print_int(0);
  }
  if(a>=b) {
    print_int(1);
  } else {
    print_int(0);
  }
  if(a<=b) {
    print_int(1);
  } else {
    print_int(0);
  }
  if(a==b) {
    print_int(1);
  } else {
    print_int(0);
  }
  if(a*b >= 5*1) {
    print_int(1);
  } else {
    print_int(0);
  }
  return 0;
}

int main() {
  f(0,0);
  f(1,0);
  f(2,0);
  f(3,0);
  f(4,0);
  f(5,0);
  f(0,3);
  f(1,3);
  f(2,3);
  f(3,3);
  f(4,3);
  f(5,3);
  f(0,5);
  f(1,5);
  f(2,5);
  f(3,5);
  f(4,5);
  f(5,5);
  return 0;
}
