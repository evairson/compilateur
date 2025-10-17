int t[20][20];
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
    return t[n][k];
  }
  
  seen[n][k] = 1;
  t[n][k] =  bc(n - 1, k - 1) + bc(n - 1, k);
  return t[n][k];
}

int main () {
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
  t[0][20] = -1;
  return 0;
}
