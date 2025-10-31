open AST1
open AST2

let counter = ref 1

let get_offset () : int =
  let c = !counter in
  counter := c + 1;
  c * (-8)

let reset_offset () : unit =
  counter := 1

let reg_param_to_str (i : int) : string =
  match i with
  | 0 -> "rdi"
  | 1 -> "rsi"
  | 2 -> "rdx"
  | 3 -> "rcx"
  | 4 -> "r8"
  | 5 -> "r9"
  | _ -> failwith "Trop de parametres"

let reg_params = ref 0

let get_reg_param () : string =
  let r = reg_param_to_str (!reg_params) in
  reg_params := !reg_params + 1;
  r

let reset_reg_params () : unit =
  reg_params := 0

let locals_env : (string * left_value) list ref = ref []

let find_local name =
  try Some (List.assoc name !locals_env)
  with Not_found -> None

let reset_locals_env () : unit =
  locals_env := []


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
      if List.mem_assoc name !locals_env then
        let pos = List.assoc name !locals_env in
        Ivalue (Ileft pos)
      
      else if List.mem_assoc name globales then
        Ivalue (Ileft (Iglobal name, 64))
      
      else
        failwith ("Variable non declaree: " ^ name)
  
  | Call (name, args, _, _) ->
      Icall_expr (name, List.map (fun arg -> expr_to_iexpr arg globales) args)

  (*renvoie une liste de iAST*)
let stmt_to_iAST (s : stmt) (globales : (string * int option ) list) : iAST list =
  match s with
  | Print (e, _) -> let v = expr_to_iexpr e globales in
      [ Iassign ((Ireg "rsi", 64), v); 
        Iassign ((Ireg "rdi", 64), Ivalue ( Ileft ((Iglobal "fmt"), 64)));
        Icall "printf" ]

  | Return (e, _) -> let v = expr_to_iexpr e globales in
      [ Ireturn (v) ]
  
  | Var_affect (name, expr, _) -> 
      let v = expr_to_iexpr expr globales in
      if List.mem_assoc name !locals_env then
        let pos = List.assoc name !locals_env in
        [ Iassign (pos, v) ]
      else
      (if List.mem_assoc name globales then
          [Iassign ((Iglobal name, 64), v)]
      else
        failwith ("Variable non declaree: " ^ name))
  
  | Lvar (name, _) -> let pos = (Ilocal (get_offset ()), 64) in
      locals_env := (name, pos) :: !locals_env;
      [ Iassign (pos, Ivalue (Iconst 0)) ]

  | Lvar_affect (name, expr, _) -> let v = expr_to_iexpr expr globales in
      let pos = (Ilocal (get_offset ()), 64) in
      locals_env := (name, pos) :: !locals_env;
      [ Iassign (pos, v) ]

  | SCall (name, args, _, _) ->
      let iasts =
          List.mapi
            (fun i arg ->
              let v = expr_to_iexpr arg globales in
              Iassign ((Ireg (reg_param_to_str i), 64), v)
            )
            args
        in
      iasts @ [
        Icall name ]

(*On doit passer une premiere fois pour recuperer les variables globales*)
let recupere_globals (p : program) : (string *  int option ) list =
  List.fold_left (fun acc g ->
    match g with
    | Gvar (name, _) -> (name, None) :: acc
    (*| Gvar_affect (name, expr, _) -> (name, Some (expr_to_iexpr expr)) :: acc*)
    | _ -> acc
  ) [] p

let recupere_locals (vars : string list) : iAST list =
  let locals = List.map (fun var -> (var, (Ilocal (get_offset ()), 64))) vars in
  locals_env := locals @ !locals_env;
  let init_ast = List.map (fun (_, (pos, size)) -> Iassign ((pos, size) , Ivalue (Ileft(
    Ireg (get_reg_param ()), 64)))) locals in
  init_ast

let program1_to_iprogram (p : program) : iprogram =
  print_endline "Conversion en iAST...";
  let symboles = recupere_globals p in
  print_endline "Conversion des fonctions...";
  let functions = List.fold_left (fun acc g ->
    match g with
    | Function (name, vars, stmts, _) ->
        (reset_reg_params ();
        reset_locals_env ();
        reset_offset ();
        let init_ast = recupere_locals vars in
        let body = List.flatten (List.map (fun s -> stmt_to_iAST s symboles) stmts) in
 (*on garde les globales pour recuperer les valeurs dans la suite*)
        (name, !locals_env, init_ast @ body) :: acc)
    | _ -> acc
  ) [] p in
  (List.rev functions, List.rev symboles)
