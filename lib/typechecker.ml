type iprogram = (string*iAST list) list * (string*int) list

and iAST = | Ireturn of iexpr | Ival of iexpr

and value =  | Iconst of int

and iexpr = | Ivalue of value
