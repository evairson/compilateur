type ppos = Lexing.position


type unop  = Opp
type binop = Plus | Minus | Mul | Div | Rem
(* 
| Lt  | Le | Gt | Ge | Eq | Neq
| And | Or | Eqs | Neqs
*)  (* inutilisé pour ce test *)

type expr =
  | Cst    of int * ppos
  | Unop   of unop * expr * ppos
  | Binop  of binop * expr * expr * ppos
  | Return of expr * ppos

  (* 
  | While  of expr * seq * ppos * ppos
  | If     of expr * seq * seq * ppos * ppos
  *) 


type instr = 
  | Print  of expr * ppos
  | ReturnInstr of expr * ppos
  (* 
  | While  of expr * seq * ppos * ppos
  | If     of expr * seq * seq * ppos * ppos
  *)
and seq = instr list





type  stmt =
    | Print of expr*ppos
    | Return of expr*ppos


type gdef =
  | Function of string * string * stmt list * ppos

type program = gdef list
