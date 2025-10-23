int nb_nodes;
int ** nxt;
int * seen  ;
int size ;
int seed ;

int dfs(int n) {
  if(seen[n]) {
    return 0;
  }
  seen[n] = 1 ;
  int res ;
  res = 1 ;
  int v ;
  v = 0 ;
  while(v < size) {
    res = res+dfs(nxt[n][v]);
    v = v+1;
  }
  return res;
}

int main() {
  scanf("%d",&nb_nodes) ;
  nb_nodes = 20000+(nb_nodes%3333) ;
  size = 5;
  scanf("%d",&seed) ;
  nxt = malloc(sizeof(int*) * nb_nodes);
  seen = malloc(sizeof(int) * nb_nodes);
  int i ;
  i = 0 ;
  while(i < nb_nodes) {
    nxt[i] = malloc(sizeof(int) * size) ;
    int j ;
    j = 0;
    while(j < size) {
      if(seed<0) {
        seed = - (1+seed) ;
      }
      nxt[i][j] = i + (seed%(nb_nodes-i)) ;
      seed = (seed*231)%1000003 ;
      j = j+1;
    }
    i=i+1;
  }
  i = 0 ;
  while(i < nb_nodes) {
    int k ;
    k = 0 ;
    while(k<nb_nodes) {
      seen[k]=0;
      k=k+1;
    }
    print_int(dfs(i));
    i= i + (nb_nodes/1000) ;
  }
  return 0;
}
