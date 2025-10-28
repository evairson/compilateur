open AST1

type iprogram = (string*iAST list) list * (string*int) list

and iAST = | Ireturn of iexpr | Ival of iexpr | Icall of string (*nom + nb arguments*)| Iassign of left_value * iexpr

and value = | Ileft of left_value | Iconst of int

and left_value = pos * int  (* position in memory and size *)

and pos = | Ilocal of int (* offset to RBP *) | Iglobal of string | Ireg of string 

and iexpr = | Ivalue of value | Iunop of unop * value | Ibinop of binop * value * value
