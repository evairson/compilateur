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

%token NOT 

%token IF ELSE WHILE RETURN

%token TBOOL TVOID TINT

/* priorites et associativites des tokens */

%left PLUS MINUS 
%left MUL DIV REM
%left LT LE GT GE
%left EQ NEQ EQS NEQS


%nonassoc NOT
%nonassoc uminus

/* Point d'entree de la grammaire */
%start prog

/* Type des valeurs retournees par l'analyseur syntaxique */
%type <AST1.expr> expr prog

%%

prog:
| e=expr EOF                     { e }

expr:
| c = CST                        { Cst(c,snd $loc) }
| e1 = expr o = op e2 = expr     { Binop (o, e1, e2, snd $loc) }
| MINUS e = expr %prec uminus  { Unop(Opp, e, snd $loc) }

| RETURN e = expr SEMI         { Return(e,snd $loc) }



;

stmt:
| PRINT e = CST SEMI { Print(Cst(e,snd $loc),snd $loc) }
;


%inline op:
| PLUS  { Plus }
| MINUS { Minus }
| MUL   { Mul }
| DIV   { Div }
| REM   { Rem }
;