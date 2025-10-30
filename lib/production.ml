open AST2

(*Tentative d'ajout*)
let compile_pos (p : pos) : string =
  match p with
  | Ilocal i -> Printf.sprintf "-%d(%%rbp)" (8 * i)
  | Iglobal s -> Printf.sprintf "%s(%%rip)" s
  | Ireg s -> Printf.sprintf "%%%s" s

let compile_left_value (lv : left_value) : string =
  match lv with
  | (pos, size) -> let cp = compile_pos pos in
      match pos with
      | Ireg _ -> Printf.sprintf "   push %s\n" cp
      | _ ->
        match size with
        | 32 -> Printf.sprintf "   mov %s, %%eax\n   push %%eax\n" cp
        | _ -> Printf.sprintf "   mov %s, %%rax\n   push %%rax\n" cp

let compile_ivalue (v : value) : string =
  match v with 
  | Iconst n -> 
      Printf.sprintf "   push $%d\n" n
  | Ileft (pos, size) ->
       match pos with
       | Iglobal "fmt" ->Printf.sprintf "   lea %s, %%rax\n   push %%rax\n" (compile_pos pos)
       | _  -> compile_left_value (pos, size)
      
  
let rec compile_expr (e : iexpr) : string =
  match e with 
  | Ivalue v -> 
    compile_ivalue v
  | Iunop (op, v) ->
      let v_code = compile_expr v in
      begin match op with
      | Opp -> v_code ^ "   pop %rax\n   neg %rax\n   push %rax\n"
      | Not -> v_code ^ "   pop %rax\n   not %rax\n   push %rax\n"
      end
  | Ibinop (op, v1, v2) ->
      let v1_code = compile_expr v1 in
      let v2_code = compile_expr v2 in
      begin match op with
      | Plus -> v1_code ^ v2_code ^
      "   pop %rbx\n   pop %rax\n   add %rbx, %rax\n   push %rax\n"
      | Minus ->  v1_code ^ v2_code ^
        "   pop %rbx\n   pop %rax\n   sub %rbx, %rax\n   push %rax\n"
      | Mul ->  v1_code ^ v2_code ^
        "   pop %rbx\n   pop %rax\n   imul %rbx, %rax\n   push %rax\n"
      | Div ->  v1_code ^ v2_code ^
        "   pop %rbx\n   pop %rax\n   xor %rdx, %rdx\n   idiv %rbx\n   push %rax\n"
      | Rem ->  v1_code ^ v2_code ^
        "   pop %rbx\n   pop %rax\n   xor %rdx, %rdx\n   idiv %rbx\n   push %rdx\n"
      | _ -> failwith "Operation binaire pas encore implementee"
      end

let compile_ast (ast : iAST) : string =
  match ast with 
  | Ireturn e -> 
      (let expr_code = compile_expr e in
      expr_code ^ "   pop %rax\n   ret\n")

  | Ival e -> 
      compile_expr e

  | Iassign ((pos, size), e) ->
      let expr_code = compile_expr e in
      let pos_str = compile_pos pos in
      expr_code ^
      (match size with
      | 32 -> Printf.sprintf "   pop %%eax\n   mov %%eax, %s\n" pos_str
      | _ -> Printf.sprintf "   pop %%rax\n   mov %%rax, %s\n" pos_str)
      (*
      (match size with
      | 32 -> expr_code ^ Printf.sprintf "    pop %s\n" (compile_pos pos)
      | _ -> expr_code ^ Printf.sprintf "   pop %s\n" (compile_pos pos))*)

  | Icall s ->
      Printf.sprintf "   xor %%eax, %%eax \n   call %s\n" s


let compile_asts (name : string) (asts : iAST list) : string =
  let header = Printf.sprintf ".global %s \n %s:\n" name name in
  let body = List.fold_left (fun acc ast -> acc ^ (compile_ast ast)) "" asts in
  header ^ body


let compile_program (prog : iprogram) file =
  let oc = open_out file in
  let print oc s = output_string oc (s ^ "\n") in
  let (cmd, vars) = prog in

  print oc ".extern printf";
  print oc ".section .data";
  print oc "    fmt: .string \"%d\\n\"";

   List.iter
    (fun (name, _) ->
      Printf.fprintf oc "    %s: .quad 0\n" name)
    vars;

  print oc ".section .text";
  List.iter
    (fun (name, asts) -> print oc (compile_asts name asts))
    cmd;
  close_out oc