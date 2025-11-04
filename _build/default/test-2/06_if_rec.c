int fib(int n) {
  if(n<=1) {
    return n;
  }
  return fib(n-1)+fib(n-2) ;
}
int syr(int n) {
  print_int(n);
  if(n==1) {
    return 0;
  }
  if(n%2) {
    return syr(3*n+1);
  }
  return syr(n/2);
}

int ack(int m, int n) {
  if(m==0) {
    return n+1;
  }
  if(n==0) {
    return ack(m-1,1);
  }
  return ack(m-1,ack(m,n-1));
}

int fois(int a, int b) {
  if(a==0 || b==0 ) {
    return 0;
  }
  return a+b+fois(a-1,b-1)-1 ;
}
int llf(int a, int b, int c, int d, int e,
        int f, int g, int h, int i, int j,
        int k, int l, int m, int n, int o,
        int p, int q, int r, int s, int t,
        int u, int v) {
  if(a==0) {
    return 42;
  }
  return a+llf(b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,0);
}

int main () {
  int v ;
  v = fib(10);
  print_int(syr(v));
  print_int(ack(3,10));
  print_int(fois(402,205));
  print_int(llf(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22));
  return 0;
}
