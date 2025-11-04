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
  | '*'     { STAR }
  | '/'     { DIV }
  | "=="    { EQ }
  | '='     { AFFECT }

  | ','     { COMMA }
  | ';'     { SEMI }
  | '('     { LP }
  | ')'     { RP }
  | '{'     { BEGIN }
  | '}'     { END }
  | '['      { LB }
  | ']'      { RB }

  | "print_int" { PRINT }

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

  | integer  { CST(int_of_string (lexeme lexbuf)) }
  | ident    { IDENT (lexeme lexbuf) }
  | space+   { token lexbuf }
  | eof      { EOF }

  | ['\n']            { new_line lexbuf; token lexbuf }
  | [' ' '\t' '\r']+  { token lexbuf }