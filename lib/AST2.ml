open AST1

type iprogram = (string*iAST list) list * (string*int) list

and iAST = | Ireturn of iexpr | Ival of iexpr | Icall of string | Iassign of string * iexpr * int

and value =  | Iconst of int | Iglobal of string | Ireg of string

and iexpr = | Ivalue of value | Iunop of unop * value | Ibinop of binop * value * value
