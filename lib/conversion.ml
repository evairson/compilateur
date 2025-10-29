open AST1
open AST2

let rec expr_to_iexpr (e : expr) : iexpr = 
   match e with
  | Cst (n, _) -> Ivalue (Iconst n)
  | Binop (op, e1, e2, _) ->
      let v1 = expr_to_iexpr e1 in
      let v2 = expr_to_iexpr e2 in
      Ibinop (op, v1, v2)

  | Unop (op, e1, _) ->
      let v1 = expr_to_iexpr e1 in
      Iunop (op, v1)

  | _ -> failwith " expression pas implemente"

  (*renvoie une liste de iAST*)
let stmt_to_iAST (s : stmt) : iAST list=
  match s with
  | Print (e, _) -> let v = expr_to_iexpr e in
      [ Iassign ((Ireg "rdi", 64), Ivalue ( Ileft ((Iglobal "fmt"), 64)));
        Iassign ((Ireg "rsi", 64), v); 
        Icall "printf" ] 

  | Return (e, _) -> let v = expr_to_iexpr e in
      [ Ireturn (v) ]

  | _ -> failwith "stmt non géré"

let gdef1_to_iAST_list (g : gdef) : (string * iAST list) =
  match g with
  | Function (name, _arg, stmts, _) ->
      (name, List.flatten (List.map stmt_to_iAST stmts)) (*On concatene les differentes listes de iAST*)
  | _ -> failwith "expression pas encore pris en compte"

let program1_to_iprogram (p : program) : iprogram =
  let functions = List.map gdef1_to_iAST_list p in
  let symbols = [] in
  (functions, symbols)
