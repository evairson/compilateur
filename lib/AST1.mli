type ppos = Lexing.position

type unop  = Opp  | Not
type binop = Plus | Minus | Mul | Div | Rem | Lt  | Le | Gt | Ge | Eq | Neq | And | Or | Eqs | Neqs


type expr =
  | Cst    of int * ppos
  | Unop   of unop * expr * ppos
  | Binop  of binop * expr * expr * ppos
  | Var of string * ppos
  | Call of string * expr list * ppos * ppos
  | Address of string * ppos
  | Deref of expr * ppos
  | Array_get of string * expr * ppos


type  stmt =
    | Print of expr*ppos
    | Return of expr*ppos
    | Lvar of string*ppos
    | Lvar_affect of string * expr * ppos
    | Var_affect of string * expr * ppos
    | Pvar_affect of expr * expr * ppos
    | SCall of string * expr list * ppos * ppos
    | If of expr * seq * seq option * ppos * ppos (* expression, then, else, pos debut, pos fin *)
    | Array_affect of string * expr * expr * ppos
    | While  of expr * seq * ppos * ppos
    | Break of ppos
    | Continue of ppos
    | PrintfCall of string * expr * ppos
    | ScanfCall of string * expr * ppos
    (*
    | Lvar_p of string*ppos
    | Lvar_affect_p of string * expr * ppos
    | Var_affect_p of string * expr * ppos 
     *)
     

and seq = stmt list

type params = string list

type gdef =
  | Function of string * params * seq * ppos
  | Gvar of string * ppos
  | Gvar_affect of string * expr * ppos
  | Garray of string * expr * ppos

type program = gdef list