{
  open Parser
}


let letter  = ['a'-'z' 'A'-'Z']
let digit   = ['0'-'9']
let integer = digit+
let space   = [' ' '\t']
let number  = ('-'? digit+)
let ident   = (letter | '_') (letter | '_' | digit)*

rule token = parse

  | '%'     { REM }
  | '+'     { PLUS }
  | '-'     { MINUS }
  | '*'     { MUL }
  | '/'     { DIV }
  | '='     { AFFECT }
  | "=="    { EQ }

  | ','     { COMA }
  | ';'     { SEMI }
  | '('     { LP }
  | ')'     { RP }
  | '{'     { LB }
  | '}'     { RB }

  | eof     { EOF }
  | "printf" { PRINT }
  | '='     { AFFECT }
  
  | "if"     { IF }
  | "else"   { ELSE }
  | "while"  { WHILE }
  | "return" { RETURN }

  | integer  { CST(int_of_string (Lexing.lexeme lexbuf)) }
  | ident    { IDENT (Lexing.lexeme lexbuf) }
  | space+   { token lexbuf }