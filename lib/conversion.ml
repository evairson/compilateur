open AST1
open AST2



let locals_env : (string * left_value) list ref = ref []
let params_env : (string * left_value) list ref = ref []

let vars_type : (string * var_type) list ref = ref []

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

let array_dims : (string * int list) list ref = ref []

let adresse_tableau base indices name =
  let d = List.assoc name !array_dims in
  let rec tab_offset dimensions indices =
    match dimensions,indices with
    | [], [] -> Ivalue (Iconst 0)
    | _::dims, i::ids ->
        let pas = List.fold_left (fun acc d -> acc * d) 1 dims in
        let offset_i = Ibinop (Mul,i,Ivalue(Iconst(pas*8)))
        in
        Ibinop (Plus, offset_i, tab_offset dims ids)
    | _ ->
        failwith "la dimension ne correspond pas"
  in
  let offset = tab_offset d indices in
  Ibinop (Plus,base,offset)


(*on garde en memoire les debuts et fin de boucles afin de gerer les break et continue*)
let breaks: string list ref = ref []
let continues: string list ref = ref []

(*Pour verifier les types des fonctions*)
type fun_types = var_type * (var_type list) (* type_retour * list_types_params *)

let rec expr_to_iexpr (e : expr) (globales : (string * int option) list) (funtab : (string * fun_types) list) : (iexpr * var_type) = 
   match e with
  | Cst (n, _) -> (Ivalue (Iconst n), Int)

  | Binop (op, e1, e2, _) ->

    let (v1, t1) = expr_to_iexpr e1 globales funtab in
    let (v2, t2) = expr_to_iexpr e2 globales funtab in

    (match (op, t1, t2) with
      | ((Plus | Minus), Ptr, Int) ->
          let scaled_v2 = Ibinop (Mul, v2, Ivalue (Iconst 8)) in
          (Ibinop (op, v1, scaled_v2), Ptr) 

      | (Plus, Int, Ptr) -> 
          let scaled_v1 = Ibinop (Mul, v1, Ivalue (Iconst 8)) in
          (Ibinop (op, scaled_v1, v2), Ptr)

      | (_, Int, Int) -> (*operations entiers*)
          (Ibinop (op, v1, v2), Int) 
          
      | _ -> 
          failwith "Erreur de type: operation binaire non supportee entre ces deux types") (*on choisi de pas gerer les autres cas*)

  | Unop (op, e1, _) ->
      let (v1, t1) = expr_to_iexpr e1 globales funtab in
      if t1 <> Int then
        failwith "Erreur de type: Opérateur unaire sur un non-entier"
      ;
      (Iunop (op, v1), Int)

  | Var (name, _) ->
    let typ = 
        try List.assoc name !vars_type 
        with Not_found -> failwith ("Type inconnu pour cette variable : " ^ name)
    in

    let e_iexpr = 
      if List.mem_assoc name !locals_env then
        let pos = List.assoc name !locals_env in
        Ivalue (Ileft pos)
      
      else if List.mem_assoc name !params_env then
        let pos = List.assoc name !params_env in
        Ivalue (Ileft pos)

      else if List.mem_assoc name globales then
        if List.mem_assoc name !vars_type then
          let typ = List.assoc name !vars_type in
          (match typ with
          | Ptr -> Ivalue (Ileft (IAddrG name, 64))
          | Int -> Ivalue (Ileft (Iglobal name, 64)))
        else
          Ivalue (Ileft (Iglobal name, 64))
      
      else
        failwith ("Variable non declaree1: " ^ name)
    in
    (e_iexpr, typ)
  
  | Call (name, args, _, _) ->
    let (return_type, param_types) =
        try List.assoc name funtab
        with Not_found -> failwith ("Fonction non déclaree: " ^ name)
      in
      
      if List.length args <> List.length param_types then
        failwith ("Erreur: Mauvais nombre d'arguments pour " ^ name)
      ;
      
      let i_args = List.map2 (fun arg expected_type ->
        let (i_arg, arg_type) = expr_to_iexpr arg globales funtab in
        if arg_type <> expected_type then
          failwith "Erreur de type: Mauvais type d'argument"
        ;
        i_arg
      ) args param_types in
      
      (Icall (name, i_args), return_type)

  | Address (name, _) -> (* &x → address of x *)
    let e_iexpr = 
      if List.mem_assoc name !locals_env then
        let (pos, _) = List.assoc name !locals_env in
        match pos with
        | Ilocal offset -> Ivalue (Ileft (IAddr offset, 64))
        | _ -> failwith ("Cannot take address of non-local variable: " ^ name)

      else if List.mem_assoc name globales then
        Ivalue (Ileft (IAddrG name, 64))
      else
        failwith ("Variable non déclarée: " ^ name)
    in
    (e_iexpr, Ptr) (*toujour pointeur*)

  | Deref (e, _) -> (* *ptr → value at address ptr *)
      let (i_ptr, typ) = expr_to_iexpr e globales funtab in
      if typ <> Ptr then
        failwith "Erreur de type: Déréférencement d'un non-pointeur"
      ;
      (Ivalue (Ileft (Ideref i_ptr, 64)), Int) (*on pointe par defaut vers un int*)

  | Array_get (name, index_list, _) ->

    let i_indices = List.map (fun e ->
        let (i_e, typ_e) = expr_to_iexpr e globales funtab in
        if typ_e <> Int then
          failwith "Erreur de type: L'indice de tableau n'est pas un entier"
        ;
        i_e
      ) index_list in

    let base =
      if List.mem_assoc name !locals_env then
        let (pos, _) = List.assoc name !locals_env in
        Ivalue (Ileft (pos, 64))
      else if List.mem_assoc name globales then
        Ivalue (Ileft (IAddrG name, 64))
      else
        failwith ("Tableau non déclaré : " ^ name)
    in
    
    let addr = adresse_tableau base i_indices name in
    (Ivalue (Ileft (Ideref addr, 64)), Int) (*Par default on va chercher un int*)

  | Sizeof (tname, _) ->
    let size =
      match tname with
      | "int" | "int*" -> 8
      | _ -> failwith ("sizeof: type inconnu " ^ tname)
    in
    (Ivalue (Iconst size), Int)

  | Malloc (size_expr, _) ->
    let (i_size, typ_size) = expr_to_iexpr size_expr globales funtab in
    if typ_size <> Int then
        failwith "Erreur de type: La taille pour malloc n'est pas un entier"
    ;
    (Icall ("malloc", [i_size]), Ptr) (* Le résultat est Ptr *)

  (*renvoie une liste de iAST*)
let rec stmt_to_iAST (s : stmt) (globales : (string * int option) list) (funtab : (string * fun_types) list) (current_fun_return_type : var_type) : iAST list =
  match s with
  | Print (e, _) -> 
      let (v1, t1) = expr_to_iexpr e globales funtab in
      if t1 <> Int then
        failwith "Erreur de type: 'print_int' attend un entier"
      ;
      [ Iassign ((Ireg "rsi", 64), v1); 
        Iassign ((Ireg "rdi", 64), Ivalue ( Ileft ((Iglobal "fmt"), 64)));
        Ival (Iprint) ]

  | Return (e, _) -> let (v_iexpr, v_type) = expr_to_iexpr e globales funtab in
      if v_type <> current_fun_return_type then
        failwith "Erreur de type: Type de retour incompatible"
      ;
      [ Ireturn (v_iexpr) ]
  
  | Var_affect (name, expr, _) -> 
      (* cherche le type de la variable (destination) *)
      let var_t = (try List.assoc name !vars_type 
                      with Not_found -> failwith ("Variable inconnue : " ^ name)) in

      let (v, t) = expr_to_iexpr expr globales funtab  in
      if var_t <> t then
        failwith ("Erreur de type lors de affect pour " ^ name);

      if List.mem_assoc name !locals_env then
        let pos = List.assoc name !locals_env in
        [ Iassign (pos, v) ]

      else if List.mem_assoc name !params_env then
        let pos = List.assoc name !params_env in
        [ Iassign (pos, v) ]

      else if List.mem_assoc name globales then
          [ Iassign (((Iglobal name), 64), v) ]
      else
        failwith ("Variable non declaree2: " ^ name)
  
  | Lvar (typ, name, _) -> let pos = (Ilocal (get_offset ()), 64) in
      locals_env := (name, pos) :: !locals_env;
      vars_type := (name, typ) :: !vars_type;
      if typ = Ptr then
        array_dims := (name, [1]) :: !array_dims;
      [ Iassign (pos, Ivalue (Iconst 0)) ]

  | Larray (name, taille_expr_list, _) ->
      let sizes = List.map (fun e ->
          match e with
          | Cst (n, _) -> n
          | _ -> failwith "La taille du tableau doit être une constante"
        ) taille_expr_list
      in

      let total_elems = List.fold_left ( * ) 1 sizes in
      let total_bytes = total_elems * 8 in

      let pos = (Ilocal (get_offset ()), 64) in
      locals_env := (name, pos) :: !locals_env;
      vars_type := (name, Ptr) :: !vars_type;
      array_dims := (name, sizes) :: !array_dims;

      let malloc_expr = Icall ("malloc", [Ivalue (Iconst total_bytes)]) in
      [ Iassign (pos, malloc_expr) ]

  | Lvar_affect (typ, name, expr, _) -> 
      let (v, t) = expr_to_iexpr expr globales funtab in
      (* On vérifie que le type déclare correspond au type de l expression *)
      if typ <> t then
        failwith ("Erreur de type: assignation de Lvar incompatible")
      ;
      let pos = (Ilocal (get_offset ()), 64) in
      locals_env := (name, pos) :: !locals_env;
      vars_type := (name, typ) :: !vars_type;
      [ Iassign (pos, v) ]

  | Pvar_affect (expr_p, expr, _) -> 
      let (v, _) = expr_to_iexpr expr globales funtab in
      let (addr_iexpr, t_addr) = expr_to_iexpr expr_p globales funtab in

      if t_addr <> Ptr then
        failwith "Erreur de type: assignation à un non-pointeur"
      ;

      let pos = (Ideref addr_iexpr, 64) in
        [ Iassign (pos, v) ]

  | SCall (name, args, _, _) ->
      let (_, param_types) =
        try List.assoc name funtab
        with Not_found -> failwith ("Fonction non déclarée: " ^ name)
      in
      
      if List.length args <> List.length param_types then
        failwith ("Erreur: Mauvais nombre d'arguments pour " ^ name)
      ;
      
      let i_args = List.map2 (fun arg expected_type ->
        let (i_arg, arg_type) = expr_to_iexpr arg globales funtab in
        if arg_type <> expected_type then
          failwith "Erreur de type: Mauvais type d'argument"
        ;
        i_arg
      ) args param_types in
      
      [ Ival (Icall (name, i_args)) ]

  | PrintfCall (format_str, e, _) ->
      let (ie, _) = expr_to_iexpr e globales funtab in
      [ Iprintf (format_str, ie) ]
  
  | ScanfCall (format_str, e, _) ->
      let (_, typ) = expr_to_iexpr e globales funtab in
      if typ <> Ptr then
         failwith "Scanf attend une adresse"
      ;
      (match e with
       | Address (name, _) -> (*On recupere la lv (pos, size) en fonction du nom de variable*)
           let lv =
             if List.mem_assoc name !locals_env then
               List.assoc name !locals_env
             else if List.mem_assoc name !params_env then
               List.assoc name !params_env
             else if List.mem_assoc name globales then
               (Iglobal name, 64) 
             else
               failwith ("Variable non declaree pour scanf: " ^ name)
           in
           [ Iscanf (format_str, lv) ]
       | _ ->
           failwith "Scanf attend une adresse")
      
  | If (cond, then_branch, else_branch, _, _) ->
      let (cond_iexpr, _) = expr_to_iexpr cond globales funtab in

      let then_iasts = List.flatten (List.map (fun s -> stmt_to_iAST s globales funtab current_fun_return_type) then_branch) in
      let else_iasts = match else_branch with
        | Some stmts -> List.flatten (List.map (fun s -> stmt_to_iAST s globales funtab current_fun_return_type) stmts)
        | None -> []
      in

      let jump = get_jump_number () in
      let else_label = "else_" ^ string_of_int (jump) in
      let end_label = "end_if_" ^ string_of_int (jump) in

      [
        Icondjump (cond_iexpr, else_label)
      ] @ then_iasts @ [
        Ijump end_label;
        Ilabel else_label
      ] @ else_iasts @ [
        Ilabel end_label
      ]

  | Array_affect (name, index_list, value_expr, _) ->
    let indices = List.map (fun e ->
        let (i_e, typ_e) = expr_to_iexpr e globales funtab in
        if typ_e <> Int then
          failwith "Erreur de type: L'indice de tableau n'est pas un entier"
        ;
        i_e
      ) index_list in

    let (value, _) = expr_to_iexpr value_expr globales funtab in

    let base =
      if List.mem_assoc name !locals_env then
        let (pos, _) = List.assoc name !locals_env in
        Ivalue (Ileft (pos, 64))
      else if List.mem_assoc name globales then
        Ivalue (Ileft (IAddrG name, 64))
      else
        failwith ("Tableau non déclaré : " ^ name)
    in
    let addr = adresse_tableau base indices name in
    [ Iassign ((Ideref addr, 64), value) ]

  | While (cond, contenu, _, _)->

    let jump = get_jump_number () in
    let start_label = "start_while_" ^ string_of_int jump in
    let end_label = "end_while_" ^ string_of_int (jump) in

    (*On rajoute a la pile des break et des continues le point de depart et d'arrivee*)
    continues := start_label :: !continues;
    breaks := end_label :: !breaks;

    let (cond_iexpr, _) = expr_to_iexpr cond globales funtab in
    let contenu_iasts = List.flatten (List.map (fun s -> stmt_to_iAST s globales funtab current_fun_return_type) contenu) in

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
let recupere_globals (p : program) : (string * int option) list =
  List.fold_left (fun acc g ->
    match g with
    | Gvar (name, _) -> 
      vars_type := (name, Int) :: !vars_type;
      (name, None) :: acc
    | Garray (name, sizes_expr, _) ->
        let dims = List.map (fun e->match e with
                              | Cst (n, _) -> n
                              | _ -> failwith "La taille du tableau doit être une constante"

                            ) sizes_expr
        in
        array_dims := (name, dims) :: !array_dims;
        (name, None)::acc
    | Gptr (name, _) -> 
        vars_type := (name, Ptr) :: !vars_type;
      (name, None) :: acc
    | Gvar_affect (typ, name, _, _) -> 
        vars_type := (name, typ) :: !vars_type;
        (name, None) :: acc
    | _ -> acc
  ) [] p

let init_params (params : (string * var_type) list) : unit =
  params_env := [];
  List.iteri (fun i (name, typ) ->
    let pos = (Ilocal (16 + i * 8), 64) in
    params_env := (name, pos) :: !params_env;
    vars_type := (name, typ) :: !vars_type;
  ) params


let program1_to_iprogram (p : program) : iprogram =
  print_endline "Conversion en iAST...";
  let symboles = recupere_globals p in

  (*On passe une premiere fois pour recuperer les definitions de fonctions*)
  let funtab = List.fold_left (fun acc g ->
    match g with
    | Function (return_typ, name, params, _, _) ->
        if List.mem_assoc name acc then
          failwith ("Erreur: Redéfinition de la fonction " ^ name)
        ;
        let param_types = List.map (fun (_, typ) -> typ) params in
        (name, (return_typ, param_types)) :: acc
    | _ -> acc
  ) [] p
  in

  print_endline "Conversion des fonctions...";
  let functions = List.fold_left (fun acc g ->
    match g with
    | Function (return_typ, name, vars, stmts, _) ->
        reset_locals_env ();
        reset_get_offset ();
        init_params vars;
        (let body = List.flatten (List.map (fun s -> stmt_to_iAST s symboles funtab return_typ) stmts) in
 (*on garde les globales pour recuperer les valeurs dans la suite*)
        (name, body) :: acc)
    
    | _ -> acc
  ) [] p in
  (List.rev functions, List.rev symboles)