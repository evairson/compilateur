/* Analyseur syntaxique pour notre langage */

%{
  open AST1
%}

%token <int> CST
%token <string> IDENT
%token EOF 
%token LP RP LB RB SEMI COMMA TINT
%token PLUS MINUS MUL DIV REM

%token PRINT
%token AFFECT

%token LT LE GT GE EQ NEQ EQS NEQS

%token AND OR NOT

%token IF ELSE WHILE RETURN


/* priorites et associativites des tokens */

%left PLUS MINUS 
%left MUL DIV REM
%left LT LE GT GE
%left EQ NEQ EQS NEQS
%left OR
%left AND

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

gdef:
  |TINT id1=IDENT LP TINT id2=IDENT RP LB s = seq RB { Function (id1, id2, s, snd $loc) }
  |TINT id=IDENT SEMI { Gvar(id, snd $loc) }  
  |TINT id=IDENT AFFECT e=expr SEMI { Gvar_affect(id, e, snd $loc) }
  |id=IDENT AFFECT e=expr SEMI { Gvar_affect(id, e, snd $loc) }
;

expr:
| c = CST                        { Cst(c,snd $loc) }
| e1 = expr o = op e2 = expr     { Binop (o, e1, e2, snd $loc) }
| MINUS e = expr %prec uminus  { Unop(Opp, e, snd $loc) }
| LP e=expr RP { e }
| i=IDENT { Var(i,snd $loc) } 





;

stmt:
| PRINT LP e = expr RP SEMI { Print(e,snd $loc) }
| RETURN e = expr SEMI { Return(e,snd $loc) }
| TINT id=IDENT SEMI { Lvar(id, snd $loc) }
| TINT id=IDENT AFFECT e=expr SEMI { Lvar_affect(id, e, snd $loc) }
| id=IDENT AFFECT e=expr SEMI { Var_affect(id, e, snd $loc) }

; 

seq:
| s=stmt { [s] }
| s=seq s2=stmt { s @ [s2] }
;


%inline op:
| PLUS  { Plus }
| MINUS { Minus }
| MUL   { Mul }
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

