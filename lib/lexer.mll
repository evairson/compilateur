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
  | "&&" { AND }
  | "&"     { ADDRESS }
  | "||" { OR }
  | "!=" { NEQ }
  | "!"  { NOT }
  | "<=" { LE }
  | "<"  { LT }
  | ">=" { GE }
  | ">"  { GT }


  | ','     { COMMA }
  | ';'     { SEMI }
  | '('     { LP }
  | ')'     { RP }
  | '{'     { BEGIN }
  | '}'     { END }
  | '['      { LB }
  | ']'      { RB }


  | "print_int" { PRINT }
  | "scanf" {SCANF}
  | "printf" {PRINTF}

  | "if"     { IF }
  | "else"   { ELSE }
  | "while"  { WHILE }
  | "return" { RETURN }
  | "break"     { BREAK }
  | "continue"  { CONTINUE }
  | "int"   { TINT }

  | "malloc" { MALLOC }
  | "sizeof" { SIZEOF }

  | integer  { CST(int_of_string (lexeme lexbuf)) }
  | ident    { IDENT (lexeme lexbuf) }
  | '"'     { read_string (Buffer.create 16) lexbuf } (*detection debut chaine de charactere pour les formats*)
  | space+   { token lexbuf }
  | "//" [^ '\n']* '\n' { token lexbuf }  (* commentaire sur une ligne *)
  | eof      { EOF }

  | ['\n']            { new_line lexbuf; token lexbuf }
  | [' ' '\t' '\r']+  { token lexbuf }

and read_string buf = parse
  | '"'       { STRING (Buffer.contents buf) }
  | '\\'      { escape buf lexbuf }
  | [^ '"' '\\']+ { Buffer.add_string buf (lexeme lexbuf); read_string buf lexbuf }
  | eof       { failwith "Chaine de caractere non terminee" }

and escape buf = parse
  | 'n'  { Buffer.add_char buf '\n'; read_string buf lexbuf }
  | '\\' { Buffer.add_char buf '\\'; read_string buf lexbuf }
  | '"'  { Buffer.add_char buf '"' ; read_string buf lexbuf }
  | _    { failwith ("Sequence d'echappement inconnue: \\" ^ lexeme lexbuf) }
