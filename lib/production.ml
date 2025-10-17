open AST2

let compile_ivalue (v : value) : string =
  match v with 
  | Iconst n -> 
      Printf.sprintf "   mov $%d, %%eax\n" n
  | Iglobal s -> 
      Printf.sprintf "   lea %s(%%rip), %%rax\n" s
  | Ireg r -> 
      Printf.sprintf "   mov %%%s, %%rax\n" r
  
let compile_expr (e : iexpr) : string =
  match e with 
  | Ivalue v -> compile_ivalue v


let compile_ast (s : iAST) : string =
  match s with 
  | Ireturn e -> 
      (let expr_code = compile_expr e in
      expr_code ^ "   ret\n")
  | Ival e -> 
      compile_expr e
  | Iassign (var, e, size) ->
      (let expr_code = compile_expr e in
      match size with
      | 32 -> expr_code ^ Printf.sprintf "   mov %%eax, %, %%%s\n" var
      | _ -> expr_code ^ Printf.sprintf "   mov %%rax, %, %%%s\n" var)

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