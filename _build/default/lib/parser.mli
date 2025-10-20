
(* The type of tokens. *)

type token = 
  | WHILE
  | TVOID
  | TINT
  | TBOOL
  | SEMI
  | RP
  | RETURN
  | REM
  | RB
  | PRINT
  | PLUS
  | NOT
  | NEQS
  | NEQ
  | MUL
  | MINUS
  | LT
  | LP
  | LE
  | LB
  | IF
  | IDENT of (string)
  | GT
  | GE
  | EQS
  | EQ
  | EOF
  | ELSE
  | DIV
  | CST of (int)
  | COMA
  | AFFECT

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (AST1.expr)
