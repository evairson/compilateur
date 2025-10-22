{
  open Parser
  open Lexing
}


let letter  = ['a'-'z' 'A'-'Z']
let digit   = ['0'-'9']
let integer = digit+
let space   = [' ' '\t']
let number  = ('-'? integer)
let ident   = (letter | '_') (letter | '_' | digit)*

rule token = parse

  | '%'     { REM }
  | '+'     { PLUS }
  | '-'     { MINUS }
  | '*'     { MUL }
  | '/'     { DIV }
  | "=="    { EQ }
  | '='     { AFFECT }

  | ','     { COMMA }
  | ';'     { SEMI }
  | '('     { LP }
  | ')'     { RP }
  | '{'     { LB }
  | '}'     { RB }

  | "printf" { PRINT }

  | "&&" { AND }
  | "||" { OR }
  | "!"  { NOT }
  | "<"  { LT }
  | "<=" { LE }
  | ">"  { GT }
  | ">=" { GE }
  | "!=" { NEQ }

  | "if"     { IF }
  | "else"   { ELSE }
  | "while"  { WHILE }
  | "return" { RETURN }

  | "int"   { TINT }
  | "void"  { TVOID }
  | "bool"  { TBOOL }

  | integer  { CST(int_of_string (lexeme lexbuf)) }
  | ident    { IDENT (lexeme lexbuf) }
  | space+   { token lexbuf }
  | eof      { EOF }

