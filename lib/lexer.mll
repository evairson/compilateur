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
  | "&"     { ADDRESS }

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
  | "<=" { LE }
  | "<"  { LT }
  | ">=" { GE }
  | ">"  { GT }
  | "!=" { NEQ }
  | "!" {NOT}

  | "if"     { IF }
  | "else"   { ELSE }
  | "while"  { WHILE }
  | "return" { RETURN }

  | "break"     { BREAK }
  | "continue"  { CONTINUE }

  | "int"   { TINT }

  | integer  { CST(int_of_string (lexeme lexbuf)) }
  | ident    { IDENT (lexeme lexbuf) }
  | space+   { token lexbuf }
  | eof      { EOF }

  | ['\n']            { new_line lexbuf; token lexbuf }
  | [' ' '\t' '\r']+  { token lexbuf }