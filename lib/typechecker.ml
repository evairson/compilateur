type iprogram = (string*iAST list) list * (string*int) list

and iAST = | Ireturn of iexpr | Ival of iexpr | Icall of string | Iassign of string * iexpr

and value =  | Iconst of int | Iglobal of string 

and iexpr = | Ivalue of value
