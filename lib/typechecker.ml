open AST1 
exception TypeError of string

type typ = Tint
type env = (string * typ) list

let recupere_globals (p : program) : env =
  List.fold_left (fun acc g ->
    match g with
    | Gvar (name, _) -> (name, Tint) :: acc
    | Gvar_affect (name, _, _) -> (name, Tint) :: acc
    | _ -> acc
  ) [] p

let rec type_expr (e : expr) (globals : env) : typ =
  match e with
  | Cst (_, _) -> Tint
  | Unop (op, e1, _) ->
      let t1 = type_expr e1 globals in
      begin match op with
      | Opp ->
          if t1 = Tint then Tint
          else raise (TypeError "Operation unaire Opp sur un type non entier")
      | _ -> raise (TypeError "Operation unaire pas encore implementee")
      end
  | Binop (op, e1, e2, _) ->
      let t1 = type_expr e1 globals in
      let t2 = type_expr e2 globals in
      begin match op with
      | Plus | Minus | Mul | Div | Rem ->
          if t1 = Tint && t2 = Tint then Tint
          else raise (TypeError "Operation binaire sur des types differents de entier")
      | _ -> raise (TypeError "Operation binaire pas encore implementee")
      end
   | Var (name, _) ->
       begin match List.assoc_opt name globals with
      | Some t -> t
      | None -> raise (TypeError ("Variable non déclarée : " ^ name))
      end
  | _ -> raise (TypeError "Expression pas encore implementee")

let type_stmt (s : stmt) (globals : env) : unit =
  match s with
  | Print (e, _) ->
      if type_expr e globals <> Tint then raise (TypeError "Print doit être sur un int")
  | Return (e, _) ->
      if type_expr e globals <> Tint then raise (TypeError "Retour doit être sur un int")
  | Var_affect (name, e, _) ->
      if not (List.mem_assoc name globals) then
        raise (TypeError ("Variable non declaree avant affectation : " ^ name))
      else
        if type_expr e globals <> Tint then
          raise (TypeError ("Affectation non int pour " ^ name));
  | _ -> raise (TypeError "Instruction pas encore implementee")

let type_function (g : gdef) (globals : env) : unit =
   match g with
  | Function (_, _, body, _) ->
      List.iter (fun s -> type_stmt s globals) body
  | _ -> () (* deja fait *)

let type_program (prog : program) : unit =
  let globals = recupere_globals prog in
  List.iter (fun g -> type_function g globals) prog