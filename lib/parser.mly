/* Analyseur syntaxique pour notre langage */

%{
  open AST1
%}

%token <int> CST
%token <string> IDENT
%token EOF 
%token LP RP LB RB SEMI COMA
%token PLUS MINUS MUL DIV REM

%token PRINT
%token AFFECT

%token LT LE GT GE EQ NEQ EQS NEQS

%token AND OR NOT

%token IF ELSE WHILE RETURN

%token TBOOL TVOID TINT

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
%type <AST1.expr> expr
%type <AST1.seq> prog

%%

prog:
| stmts=seq EOF { stmts }
;

expr:
| c = CST                        { Cst(c,snd $loc) }
| e1 = expr o = op e2 = expr     { Binop (o, e1, e2, snd $loc) }
| MINUS e = expr %prec uminus  { Unop(Opp, e, snd $loc) }

;

stmt:
| PRINT e = expr SEMI { Print(e,snd $loc) }
| RETURN e = expr SEMI { Return(e,snd $loc) }

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