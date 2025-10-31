open AST1

type iprogram = (string* locals * iAST list) list * (string*int option) list

and locals = (string * left_value) list

and iAST = | Ireturn of iexpr | Ival of iexpr | Icall of string | Iassign of left_value * iexpr

and value = | Ileft of left_value | Iconst of int

and left_value = pos * int  (* position in memory and size *)

and pos = | Ilocal of int (* offset to RBP *) | Iglobal of string | Ireg of string 

and iexpr = | Ivalue of value | Iunop of unop * iexpr | Ibinop of binop * iexpr * iexpr | Icall_expr of string * iexpr list
