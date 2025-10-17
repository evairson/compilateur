open AST1
open AST2

let expr1_to_expr2 (e : expr) : iexpr =
  match e with
  | Cst (n, _) -> Ivalue (Iconst n)

  (*renvoie une liste de iAST*)
let stmt1_to_iAST (s : stmt) : iAST list=
  match s with
  | Print (e, _) -> [Iassign("rdi", Ivalue(Iglobal "fmt")); Iassign ("esi", expr1_to_expr2 e); Icall "printf"]
  | Return (e, _) -> [Ireturn (expr1_to_expr2 e)]

let gdef1_to_iAST_list (g : gdef) : (string * iAST list) =
  match g with
  | Function (name, _arg, stmts, _) ->
      (name, List.flatten (List.map stmt1_to_iAST stmts)) (*On concatene les differentes listes de iAST*)

let program1_to_iprogram (p : program) : iprogram =
  let functions = List.map gdef1_to_iAST_list p in
  let symbols = [] in
  (functions, symbols)
