open AST1
open AST2

let locals_env : (string * left_value) list ref = ref []
let params_env : (string * left_value) list ref = ref []

let offset_counter = ref 0

let get_offset () : int =
  offset_counter := !offset_counter + 1;
  !offset_counter * (-8)

let reset_get_offset () : unit =
  offset_counter := 0

let reset_locals_env () : unit =
  locals_env := []

let jump_number = ref 0

let get_jump_number () : int =
  let j = !jump_number in
  jump_number := j + 1;
  j

(*on garde en memoire les debuts et fin de boucles afin de gerer les break et continue*)
let breaks: string list ref = ref []
let continues: string list ref = ref []

let mem_assoc3 key lst =
  List.exists (fun (k, _, _) -> k = key) lst

let assoc3 key lst =
  let (_, v, b) = List.find (fun (k, _, _) -> k = key) lst in
  (v, b)


let rec expr_to_iexpr (e : expr) (globales : (string * int option * bool) list) : iexpr = 
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
      
      else if List.mem_assoc name !params_env then
        let pos = List.assoc name !params_env in
        Ivalue (Ileft pos)

      else if mem_assoc3 name globales then
        let (_, is_ptr) = assoc3 name globales in
        Ivalue (Ileft ((if is_ptr then IAddrG name else Iglobal name), 64))
      
      else
        failwith ("Variable non declaree1: " ^ name)
  
  | Call (name, args, _, _) ->
      Icall (name, List.map (fun arg -> expr_to_iexpr arg globales) args)

  | Address (name, _) -> (* &x → address of x *)
    if List.mem_assoc name !locals_env then
      let (pos, _) = List.assoc name !locals_env in
      match pos with
      | Ilocal offset -> Ivalue (Ileft (IAddr offset, 64))
      | _ -> failwith ("Cannot take address of non-local variable: " ^ name)

    else if mem_assoc3 name globales then
      let (_, is_ptr) = assoc3 name globales in
      Ivalue (Ileft ((if is_ptr then (IAddrG name) else (Iglobal name)), 64))
    else
      failwith ("Variable non déclarée: " ^ name)

  | Deref (e, _) -> (* *ptr → value at address ptr *)
      let ptr = expr_to_iexpr e globales in
      Ivalue (Ileft (Ideref ptr, 64))

  | Array_get (name, index_expr, _) ->
    let index = expr_to_iexpr index_expr globales in
    let base =
      if List.mem_assoc name !locals_env then
        let (pos, _) = List.assoc name !locals_env in
        match pos with
          | Ilocal offset -> Ivalue (Ileft (IAddr offset, 64))
          | _ -> failwith ("Cannot take address of non-local variable: " ^ name)
      else if mem_assoc3 name globales then
        Ivalue (Ileft (IAddrG name, 64))
      else
        failwith ("Tableau non déclaré : " ^ name)
    in
    (* adresse = base + index * 8 *)
    let addr = Ibinop (Plus, base, Ibinop (Mul, index, Ivalue (Iconst 8))) in
    Ivalue (Ileft (Ideref addr, 64))

  | Sizeof (tname, _) ->
    let size =
      match tname with
      | "int" | "int*" -> 8
      | _ -> failwith ("sizeof: type inconnu " ^ tname)
    in
    Ivalue (Iconst size)

  | Malloc (size_expr, _) ->
    let size_iexpr = expr_to_iexpr size_expr globales in
    Icall ("malloc", [size_iexpr])

  (*renvoie une liste de iAST*)
let rec stmt_to_iAST (s : stmt) (globales : (string * int option * bool) list) : iAST list =
  match s with
  | Print (e, _) -> let v = expr_to_iexpr e globales in
      [ Iassign ((Ireg "rsi", 64), v); 
        Iassign ((Ireg "rdi", 64), Ivalue ( Ileft ((Iglobal "fmt"), 64)));
        Ival (Iprint) ]

  | Return (e, _) -> let v = expr_to_iexpr e globales in
      [ Ireturn (v) ]
  
  | Var_affect (name, expr, _) -> 
      let v = expr_to_iexpr expr globales in

      if List.mem_assoc name !locals_env then
        let pos = List.assoc name !locals_env in
        [ Iassign (pos, v) ]

      else if List.mem_assoc name !params_env then
        let pos = List.assoc name !params_env in
        [ Iassign (pos, v) ]

      else if mem_assoc3 name globales then
          let (_, is_ptr) = assoc3 name globales in
          [ Iassign (((if is_ptr then (IAddrG name) else (Iglobal name)), 64), v) ]
      else
        failwith ("Variable non declaree2: " ^ name)
  
  | Lvar (name, _) -> let pos = (Ilocal (get_offset ()), 64) in
      locals_env := (name, pos) :: !locals_env;
      [ Iassign (pos, Ivalue (Iconst 0)) ]

  | Lvar_affect (name, expr, _) -> let v = expr_to_iexpr expr globales in
      let pos = (Ilocal (get_offset ()), 64) in
      locals_env := (name, pos) :: !locals_env;
      [ Iassign (pos, v) ]

  | Pvar_affect (expr_p, expr, _) -> let v = expr_to_iexpr expr globales in
      let addr_iexpr = expr_to_iexpr expr_p globales in
      let pos = (Ideref addr_iexpr, 64) in
        [ Iassign (pos, v) ]

  | SCall (name, args, _, _) ->
      [ Ival (Icall (name, List.map (fun arg -> expr_to_iexpr arg globales) args)) ]
      

  | If (cond, then_branch, else_branch, _, _) ->
      let cond_iexpr = expr_to_iexpr cond globales in
      let then_iasts = List.flatten (List.map (fun s -> stmt_to_iAST s globales) then_branch) in
      let else_iasts = match else_branch with
        | Some stmts -> List.flatten (List.map (fun s -> stmt_to_iAST s globales) stmts)
        | None -> []
      in
      let jump = get_jump_number () in
      let else_label = "else_" ^ string_of_int (jump) in
      let end_label = "end_if_" ^ string_of_int (jump) in
      let iasts = [
        Icondjump (cond_iexpr, else_label)
      ] @ then_iasts @ [
        Ijump end_label;
        Ilabel else_label
      ] @ else_iasts @ [
        Ilabel end_label
      ] in
      iasts

  | Array_affect (name, index_expr, value_expr, _) ->
    let index = expr_to_iexpr index_expr globales in
    let value = expr_to_iexpr value_expr globales in
    let base =
      if List.mem_assoc name !locals_env then
        let (pos, _) = List.assoc name !locals_env in
        match pos with
        | Ilocal offset -> Ivalue (Ileft (IAddr offset, 64))
        | _ -> failwith ("Cannot take address of non-local variable: " ^ name)
      else if mem_assoc3 name globales then
        Ivalue (Ileft (IAddrG name, 64))
      else
        failwith ("Tableau non déclaré : " ^ name)
    in
    let addr = Ibinop (Plus, base, Ibinop (Mul, index, Ivalue (Iconst 8))) in
    [ Iassign ((Ideref addr, 64), value) ]

  | While (cond, contenu, _, _)->

    let jump = get_jump_number () in
    let start_label = "start_while_" ^ string_of_int jump in
    let end_label = "end_while_" ^ string_of_int (jump) in

    (*On rajoute a la pile des break et des continues le point de depart et d'arrivee*)
    continues := start_label :: !continues;
    breaks := end_label :: !breaks;

    let cond_iexpr = expr_to_iexpr cond globales in
    let contenu_iasts = List.flatten (List.map (fun s -> stmt_to_iAST s globales) contenu) in

    (*On pop les derniers elts car on n'en a plus besoin*)
    continues := List.tl !continues;
    breaks := List.tl !breaks;

    [Ilabel start_label;
    Icondjump (cond_iexpr, end_label);] (* si cond == 0  alors sortir *)
    @ contenu_iasts
    @ [Ijump start_label;  (* reboucler *)
    Ilabel end_label;   (* fin de boucle *)
    ]
  
  | Break _ ->
    if !breaks = [] then
      failwith "Erreur: 'break' en dehors d'une boucle"
    else
      let label = List.hd !breaks in (*on regarde le premier elt de la pile*)
      [ Ijump label ]

  | Continue _ ->
    if !continues = [] then
      failwith "Erreur: 'continue' en dehors d'une boucle"
    else
      let label = List.hd !continues in
      [ Ijump label ]

(*On doit passer une premiere fois pour recuperer les variables globales*)
let recupere_globals (p : program) : (string * int option * bool) list =
  List.fold_left (fun acc g ->
    match g with
    | Gvar (name, _) -> (name, None, false) :: acc
    | Garray (name, size_expr, _) ->
        let size =
          match size_expr with
          | Cst (n, _) -> n
          | _ -> failwith "La taille du tableau doit être une constante"
        in
        (name, Some size, false) :: acc
    | Gptr (name, _) -> (name, None, true) :: acc
    | _ -> acc
  ) [] p

let init_params (params : string list) : unit =
  params_env := [];
  List.iteri (fun i (name) ->
    let pos = (Ilocal (16 + i * 8), 64) in
    params_env := (name, pos) :: !params_env
  ) params

let program1_to_iprogram (p : program) : iprogram =
  print_endline "Conversion en iAST...";
  let symboles = recupere_globals p in
  print_endline "Conversion des fonctions...";
  let functions = List.fold_left (fun acc g ->
    match g with
    | Function (name, vars, stmts, _) ->
        reset_locals_env ();
        reset_get_offset ();
        init_params vars;
        (let body = List.flatten (List.map (fun s -> stmt_to_iAST s symboles) stmts) in
 (*on garde les globales pour recuperer les valeurs dans la suite*)
        (name, body) :: acc)
    
    | _ -> acc
  ) [] p in
  (List.rev functions, List.map (fun (a, b, _) -> (a, b)) (List.rev symboles))

