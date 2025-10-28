open AST1
open AST2

let rec expr_to_iexpr (e : expr) (globales : (string * int option ) list) : iexpr = 
   match e with
  | Cst (n, _) -> Ivalue (Iconst n)
  | Binop (op, e1, e2, _) ->
      let v1 = expr_to_iexpr e1 globales in
      let v2 = expr_to_iexpr e2 globales in
      Ibinop (op, v1, v2)

  | Unop (op, e1, _) ->
      let v1 = expr_to_iexpr e1 globales in
      Iunop (op, v1)

  | Var (name, _) ->
      if List.mem_assoc name globales then
        Ivalue (Ileft (Iglobal name, 32))
      else
        failwith ("Variable non declaree: " ^ name)

  | _ -> failwith " expression pas implemente"

  (*renvoie une liste de iAST*)
let stmt_to_iAST (s : stmt) (globales : (string * int option ) list) : iAST list=
  match s with
  | Print (e, _) -> let v = expr_to_iexpr e globales in
      [ Iassign ((Ireg "rdi", 32), Ivalue ( Ileft ((Iglobal "fmt"), 32)));
        Iassign ((Ireg "rsi", 32), v); 
        Icall "printf" ] 

  | Return (e, _) -> let v = expr_to_iexpr e globales in
      [ Ireturn (v) ]
  
  | Var_affect (name, expr, _) -> 
      let v = expr_to_iexpr expr globales in
      if List.mem_assoc name globales then
        [
          Iassign ((Ireg "rax", 32), v);
          Iassign ((Iglobal name, 32), Ivalue (Ileft (Ireg "rax", 32)));
        ]
      else
        failwith ("Variable non declaree: " ^ name)

  | _ -> failwith "stmt non géré"

(*On doit passer une premiere fois pour recuperer les variables globales*)
let recupere_globals (p : program) : (string *  int option ) list =
  List.fold_left (fun acc g ->
    match g with
    | Gvar (name, _) -> (name, None) :: acc
    (*| Gvar_affect (name, expr, _) -> (name, Some (expr_to_iexpr expr)) :: acc*)
    | _ -> acc
  ) [] p

let program1_to_iprogram (p : program) : iprogram =
  let symboles = recupere_globals p in
  let functions = List.fold_left (fun acc g ->
    match g with
    | Function (name, _, stmts, _) ->
        let body = List.flatten (List.map (fun s -> stmt_to_iAST s symboles) stmts) in
 (*on garde les globales pour recuperer les valeurs dans la suite*)
        (name, body) :: acc;
    | _ -> acc
  ) [] p in
  (List.rev functions, List.rev symboles)
