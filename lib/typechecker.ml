open AST1 
exception TypeError of string

type typ = Tint

let rec type_expr (e : expr) : typ =
  match e with
  | Cst (_, _) -> Tint
  | Unop (op, e1, _) ->
      let t1 = type_expr e1 in
      begin match op with
      | Opp ->
          if t1 = Tint then Tint
          else raise (TypeError "Operation unaire Opp sur un type non entier")
      end
  | Binop (op, e1, e2, _) ->
      let t1 = type_expr e1 in
      let t2 = type_expr e2 in
      begin match op with
      | Plus | Minus | Mul | Div | Rem ->
          if t1 = Tint && t2 = Tint then Tint
          else raise (TypeError "Operation binaire sur des types differents de entier")
      end

let type_stmt (s : stmt) : unit =
  match s with
  | Print (e, _) ->
      if type_expr e <> Tint then raise (TypeError "Print doit être sur un int")
  | Return (e, _) ->
      if type_expr e <> Tint then raise (TypeError "Retour doit être sur un int")

let type_function (Function (_, _, body, _)) : unit =
  List.iter type_stmt body

let type_program (prog : program) : unit =
  List.iter type_function prog