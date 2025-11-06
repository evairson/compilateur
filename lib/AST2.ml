open AST1

type iprogram = (string * iAST list) list * (string*int option) list

and iAST = | Ireturn of iexpr
           | Ival of iexpr
           | Iassign of left_value * iexpr
           | Ilabel of string
           | Icondjump of iexpr * string
           | Ijump of string
           | Iprintf of string * iexpr
           | Iscanf of string * left_value

and value = | Ileft of left_value | Iconst of int

and left_value = pos * int  (* position in memory and size *)

and pos = | Ilocal of int (* offset to RBP *) | Iglobal of string | Ireg of string | Ideref of iexpr | IAddr of int | GAddr of string

and iexpr = | Ivalue of value | Iunop of unop * iexpr | Ibinop of binop * iexpr * iexpr | Icall of string * iexpr list | Iprint
