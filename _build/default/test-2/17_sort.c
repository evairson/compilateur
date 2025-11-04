int n ;

int sw(int * a, int * b) {
  int tmp ;
  tmp = *a ;
  *a = *b ;
  *b = tmp ;
  return 0;
}

int sort(int * t, int fr, int to) {
  int i ;
  int j ;
  i = 0 ;
  while(i < n) {
    j = 0 ;
    while(j+1 < n) {
      if(t[j]>t[j+1]) {
        sw(&t[j],&t[j+1]);
      }
      j = j+1;
    }
    i = i+1;
  }
  return 10;
}

int * gen_array() {
  int * t ;
  int r ;
  r = 1920;
  t = malloc(n*sizeof(int));
  int i ;
  i = 0 ;
  while(i < n) {
    t[i] = r ;
    r = (r*23)%1000003 ;
    i = i+1;
  }
  return t;
}

int show(int * t) {
  int i ;
  i = 0 ;
  while(i < n) {
    printf("%d\n",t[i]);
    i = i + 500 ;
  }
  return 0;
}

int main () {
  n = 10000 ;
  int * c ;
  c = gen_array();
  sort(c, 0, n);
  show(c);
  return 0;
}
