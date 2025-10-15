/* Analyseur syntaxique pour notre langage */

%{
  open Ast

%}

%token <int> CST
%token <string> IDENT
%token EOF 
%token LP RP LB RB SEMI COMA
%token PLUS MINUS MUL DIV REM

%token PRINT
%token AFFECT


%token IF ELSE WHILE RETURN

%token TBOOL TVOID TINT

/* D�finitions des priorit�s et associativit�s des tokens */

%left PLUS MINUS 
%left MUL DIV REM
%nonassoc uminus

/* Point d'entr�e de la grammaire */
%start prog

/* Type des valeurs retourn�es par l'analyseur syntaxique */
%type <Ast.expr> expr prog

%%

prog:
| e=expr EOF                     { e }
expr:
| c = CST                        { Cst(c,$loc) }
| e1 = expr o = op e2 = expr     { Binop (o, e1, e2, $loc) }
| MINUS e = expr %prec uminus    { Neg(e, $loc) } 
| LP e = expr RP                 { e }
;

%inline op:
| PLUS  { Add }
| MINUS { Sub }
| TIMES { Mul }
| DIV   { Div }
;