open AST2

(*Tentative d'ajout*)
let compile_pos (p : pos) : string =
  match p with
  | Ilocal i -> Printf.sprintf "-%d(%%rbp)" (8 * i) (*Pas sure*)
  | Iglobal s -> Printf.sprintf "   lea %s(%%rip), %%rax\n" s

let compile_ivalue (v : value) : string =
  match v with 
  | Iconst n -> 
      Printf.sprintf "   mov $%d, %%eax\n" n
  | Ileft (lv, _) ->
      (match lv with
       | Ilocal i -> Printf.sprintf " ??"
       | Iglobal s -> Printf.sprintf "??" s
       | _ -> failwith "pas traite")
  (*Maintenant Iglobal est une pos *)
  (*
  | Iglobal s -> 
      Printf.sprintf "   lea %s(%%rip), %%rax\n" s
  | Ireg r -> 
      Printf.sprintf "   mov %%%s, %%rax\n" r*)
  
let compile_expr (e : iexpr) : string =
  match e with 
  | Ivalue v -> compile_ivalue v
  | Iunop (op, v) ->
      let v_code = compile_ivalue v in
      begin match op with
      | Opp -> "??"
      | _ -> failwith "Operation unaire pas encore implementee"
      end
  | Ibinop (op, v1, v2) ->
      let v1_code = compile_ivalue v1 in
      let v2_code = compile_ivalue v2 in
      begin match op with
      | Plus -> "??"
      | Minus -> "??"
      | Mul -> "??"
      | Div -> "??"
      | Rem -> "??"
      | _ -> failwith "Operation binaire pas encore implementee"
      end
  | _ -> failwith "Expression pas encore implementee"


let compile_ast (s : iAST) : string =
  match s with 
  | Ireturn e -> 
      (let expr_code = compile_expr e in
      expr_code ^ "   ret\n")
  | Ival e -> 
      compile_expr e
  (* A modifier. Maintenanr Iassign ((pos, size), iexpr) pos est un int generer pour chaque nouvelle allocation. Je ne sais pas trop comment convertir ca en var*)
  (*| Iassign (var, e, size) ->
      (let expr_code = compile_expr e in
      match size with
      | 32 -> expr_code ^ Printf.sprintf "   mov %%eax, %, %%%s\n" var
      | _ -> expr_code ^ Printf.sprintf "   mov %%rax, %, %%%s\n" var)*)
  | Iassign ((pos, size), e) ->
      let expr_code = compile_expr e in
      match size with
      | 32 -> expr_code ^ Printf.sprintf "   mov %%eax, %s\n" (compile_pos pos)
      | _ -> expr_code ^ Printf.sprintf "   mov %%rax, %s\n" (compile_pos pos)

  | Icall s ->
      Printf.sprintf " xor %%eax, %%eax \n   call %s\n" s

let compile_asts (name : string) (asts : iAST list) : string =
  let header = Printf.sprintf ".global %s \n %s:\n" name name in
  let body = List.fold_left (fun acc ast -> acc ^ (compile_ast ast)) "" asts in
  header ^ body

let compile_program (prg : iprogram) file =
  let oc = open_out file in
  let print oc s = output_string oc (s ^ "\n") in
  let (cmd, _vars) = prg in

  print oc ".extern printf";
  print oc ".section .data";
  print oc "    fmt: .string \"%d\\n\"";
  print oc ".section .text";
  List.iter
    (fun (name, asts) -> print oc (compile_asts name asts))
    cmd;
  close_out oc