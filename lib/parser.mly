/* Analyseur syntaxique pour notre langage */

%{
  open AST1
%}

%token <int> CST
%token <string> IDENT
%token EOF
%token LP RP LB RB SEMI COMMA TINT
%token BEGIN END
%token PLUS MINUS DIV REM

%token PRINT
%token AFFECT

%token LT LE GT GE EQ NEQ EQS NEQS

%token AND OR NOT

%token IF ELSE WHILE RETURN BREAK CONTINUE

%token STAR ADDRESS


/* priorites et associativites des tokens */

%left OR
%left AND
%left EQ NEQ EQS NEQS
%left LT LE GT GE
%left PLUS MINUS
%left STAR DIV REM

%nonassoc NOT
%nonassoc uminus

/* Point d'entree de la grammaire */
%start prog

/* Type des valeurs retournees par l'analyseur syntaxique */

%type <AST1.program> prog
%type <AST1.gdef> gdef
%type <AST1.expr> expr
%type <AST1.stmt> stmt
%type <AST1.seq> seq


%%



prog:
  | p = list_gdef EOF { p }
;


list_gdef :
  | g = gdef { [g] }
  | lgdef = list_gdef g = gdef {lgdef @ [g]}
;

params :
  | TINT id=IDENT { [id] }
  | TINT STAR id=IDENT { [id] }
  | p=params COMMA TINT id=IDENT { p @ [id] }
  | p=params COMMA TINT STAR id=IDENT { p @ [id] }

gdef:
  
  | TINT id1=IDENT LP RP BEGIN s = seq END { Function (id1, [], s, snd $loc) }
  | TINT id1=IDENT LP p=params RP BEGIN s = seq END { Function (id1, p, s, snd $loc) }
  // |TINT id=IDENT LP RP BEGIN s=seq END { Function  (id,None,s,snd $loc) }
  // |TINT id1=IDENT LP TINT params=param_list RP LB s = seq RB { Function (id1, Some params, s, snd $loc) }
  | TINT id=IDENT SEMI { Gvar(id, snd $loc) }  
  | TINT id=IDENT AFFECT e=expr SEMI { Gvar_affect(id, e, snd $loc) }
  | id=IDENT AFFECT e=expr SEMI { Gvar_affect(id, e, snd $loc) }

  // | TINT id=IDENT LB e=expr RB SEMI { Garray(id, e, snd $loc) }

;

expr:
| c = CST                        { Cst(c,snd $loc) }
| e1 = expr o = op e2 = expr     { Binop (o, e1, e2, snd $loc) }
| MINUS e = expr %prec uminus  { Unop(Opp, e, snd $loc) }
| LP e=expr RP { e }
| NOT e = expr  { Unop(Not, e, snd $loc) }
| i=IDENT { Var(i,snd $loc) }
| id=IDENT LP RP {Call(id,[],fst $loc,snd $loc)}
| id=IDENT LP args=arg_list RP {Call(id,args,fst $loc, snd $loc)}

| STAR e=expr { Deref(e, snd $loc) }
| ADDRESS id=IDENT { Address(id, snd $loc) }


// | LB args=arg_list RB { Array(args,snd $loc) }
// | id=IDENT LB e=expr RB { Array_get (id, e, snd $loc) }




;

arg_list:
  |e=expr {[e]}
  |l=arg_list COMMA e=expr {l@[e]}

// ;

stmt:
| PRINT LP e = expr RP SEMI { Print(e,snd $loc) }
| RETURN e = expr SEMI { Return(e,snd $loc) }
| TINT id=IDENT SEMI { Lvar(id, snd $loc) }
| TINT id=IDENT AFFECT e=expr SEMI { Lvar_affect(id, e, snd $loc) }
| id=IDENT AFFECT e=expr SEMI {Var_affect(id, e, snd $loc)}
| id=IDENT LP RP SEMI {SCall(id,[],fst $loc,snd $loc)}
| id=IDENT LP args=arg_list RP SEMI {SCall(id,args,fst $loc, snd $loc)}
| STAR e1=expr AFFECT e2=expr SEMI { Pvar_affect(e1, e2, snd $loc)}
| IF LP e = expr RP LB s=seq RB { If(e,s,None,fst $loc, snd $loc)}
| IF LP e = expr RP LB s1=seq RB ELSE LB s2=seq RB { If(e,s1,Some s2,fst $loc, snd $loc)}




// | WHILE LP e=expr RP LB s=seq RB {While(e,s,fst $loc,snd $loc)}


// | BREAK SEMI {Break(snd $loc)}
// | CONTINUE SEMI {Continue(snd $loc)}
// | TINT STAR id=IDENT SEMI { Lvar_p(id, snd $loc) }
// | STAR id=IDENT AFFECT e=expr SEMI {Var_affect_p(id, e, snd $loc)}
// | TINT STAR id=IDENT AFFECT e=expr SEMI { Lvar_affect_p(id, e, snd $loc) }
// | id=IDENT LB e1=expr RB AFFECT e2=expr SEMI { Array_affect(id, e1, e2, snd $loc) }

;

seq:
| s=stmt { [s] }
| s=seq s2=stmt { s @ [s2] }
;


%inline op:
| PLUS  { Plus }
| MINUS { Minus }
| STAR   { Mul }
| DIV   { Div }
| REM   { Rem }
| LT { Lt }
| LE   { Le }
| GT   { Gt }
| GE   { Ge }
| EQ { Eq }
| NEQ   { Neq }
| AND   { And }
| OR   { Or }
| EQS   { Eqs }
| NEQS   { Neqs }

;