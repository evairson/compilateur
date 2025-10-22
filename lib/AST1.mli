type ppos = Lexing.position

type unop  = Opp  | Not
type binop = Plus | Minus | Mul | Div | Rem | Lt  | Le | Gt | Ge | Eq | Neq | And | Or | Eqs | Neqs


type expr =
  | Cst    of int * ppos
  | Unop   of unop * expr * ppos
  | Binop  of binop * expr * expr * ppos
(* ajouté *)
  | Var of string * ppos
  | Call of string * expr list * ppos * ppos

type  stmt =
    | Print of expr*ppos
    | Return of expr*ppos

    | Lvar of string*ppos
    | Lvar_affect of string * expr * ppos
    | Var_affect of string * expr * ppos
 (* 
    | While  of expr * seq * ppos * ppos  
    | If     of expr * seq * seq option* ppos * ppos  *)

and seq = stmt list

type gdef =
  | Function of string * string * seq * ppos
(*il faut changer la ligne du dessus par la ligne suivante
le code correspondant est commenté sur parser*)
  (* | Function of string * (string list) option * seq * ppos *)
  | Gvar of string*ppos
  | Gvar_affect of string * expr * ppos 

type program = gdef list