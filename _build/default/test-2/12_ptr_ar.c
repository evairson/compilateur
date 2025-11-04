int t[1000];

int dyn[20][20];
int seen[20][20];

int bc(int n, int k)
{
  if (k > n) {
    return 0;
  }
  if (k == 0 || k == n) {
    return 1;
  }
  
  if(seen[n][k]) {
    return *(dyn[n]+k);
  }
  
  seen[n][k] = 1;
  dyn[n][k] =  bc(n - 1, k - 1) + bc(n - 1, k);
  return dyn[n][k];
}

int f() {
  int i  ;
  i=0;
  while(i < 20) {
    int j ;
    j=0;
    while(j < 20) {
      print_int(bc(i,j));
      j = j+1;
    }
    i = i+1;
  }
  dyn[0][20] = -1;
  return 0;
}

int g() {
 int i ;
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

int main () {
  f();
  g();
  return 0;
 }
