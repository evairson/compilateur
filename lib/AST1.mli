type ppos = Lexing.position

type unop  = Opp
type binop = Plus | Minus | Mul | Div | Rem | Lt  | Le | Gt | Ge | Eq | Neq | And | Or | Eqs | Neqs


type expr =
  | Cst    of int * ppos
  | Unop   of unop * expr * ppos
  | Binop  of binop * expr * expr * ppos
  | Var of string * ppos

type  stmt =
    | Print of expr*ppos
    | Return of expr*ppos
    | Lvar of string*ppos
    | Lvar_affect of string * expr * ppos
    | Var_affect of string * expr * ppos
  
    (* | While  of expr * seq * ppos * ppos  
    | If     of expr * seq * seq * ppos * ppos *)

and seq = stmt list

type gdef =
  | Function of string * string * seq * ppos
  | Gvar of string*ppos
  | Gvar_affect of string * expr * ppos

type program = gdef list