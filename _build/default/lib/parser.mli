
(* The type of tokens. *)

type token = 
  | WHILE
  | TINT
  | STAR
  | SEMI
  | RP
  | RETURN
  | REM
  | RB
  | PRINT
  | PLUS
  | OR
  | NOT
  | NEQS
  | NEQ
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
  | END
  | ELSE
  | DIV
  | CST of (int)
  | CONTINUE
  | COMMA
  | BREAK
  | BEGIN
  | AND
  | AFFECT
  | ADDRESS

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (AST1.program)
