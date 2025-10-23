open AST1
open AST2

(*Pour les Ilocal*)
let temp_counter = ref 0
let new_temp () =
  incr temp_counter;
  !temp_counter

let rec expr1_to_iAST (e : expr) : (iAST list * value) = 
(*La iAST list correspond aux instructions intermédiaires générées*)
(*Dans value se trouve le resultat final*)
   match e with
  | Cst (n, _) ->([], Iconst n)

  | Binop (op, e1, e2, _) ->
      let (code1, v1) = expr1_to_iAST e1 in
      let (code2, v2) = expr1_to_iAST e2 in
      let tmp = new_temp () in
      let lv = (Ilocal tmp, 8) in
      let assign = Iassign (lv, Ibinop (op, v1, v2)) in
      (code1 @ code2 @ [assign], Ileft lv)

  | Unop (op, e1, _) ->
      let (code1, v1) = expr1_to_iAST e1 in
      let tmp = new_temp () in
      let lv = (Ilocal tmp, 8) in
      let assign = Iassign (lv, Iunop (op, v1)) in
      (code1 @ [assign], Ileft lv)

  | _ -> failwith " expression non supporte"

  (*renvoie une liste de iAST*)
let stmt1_to_iAST (s : stmt) : iAST list=
  match s with
  | Print (e, _) -> let (code, v) = expr1_to_iAST e in
    code @ [ Iassign ((Ilocal (new_temp ()), 8), Ivalue (Ileft (Iglobal "fmt", 32)));
          Iassign ((Ilocal (new_temp ()), 8), Ivalue v);
          Icall "printf"; ]

  | Return (e, _) ->let (code, v) = expr1_to_iAST e in
      code @ [Ireturn (Ivalue v)]

  | _ -> failwith "stmt non géré"

let gdef1_to_iAST_list (g : gdef) : (string * iAST list) =
  match g with
  | Function (name, _arg, stmts, _) ->
      (name, List.flatten (List.map stmt1_to_iAST stmts)) (*On concatene les differentes listes de iAST*)
  | _ -> failwith "expression pas encore pris en compte"

let program1_to_iprogram (p : program) : iprogram =
  let functions = List.map gdef1_to_iAST_list p in
  let symbols = [] in
  (functions, symbols)
