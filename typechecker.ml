open Types

type Iprogram = (string*iAST list) list * (string*int) list

and iAST = | Ireturn of expr | Ival of expr

and value =  | Iconst of int

and expr = | Ivalue of value
