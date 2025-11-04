open AST2

(*Tentative d'ajout*)
let compile_pos (p : pos) : string =
  match p with
  | Ilocal i -> Printf.sprintf "%d(%%rbp)" (i)
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
      | Not ->  v_code ^
        "   pop %rax\n" ^
        "   cmp $0, %rax\n" ^  
        "   sete %al\n" ^  
        "   movzbq %al, %rax\n" ^
        "   push %rax\n"
      | _ -> failwith "cas pointeur pas pris en compte"
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
      | Eq ->
          v1_code ^ v2_code ^
          "   pop %rbx\n   pop %rax\n   cmp %rbx, %rax\n   sete %al\n   movzb %al, %rax\n   push %rax\n"
      | Neq ->
          v1_code ^ v2_code ^
          "   pop %rbx\n   pop %rax\n   cmp %rbx, %rax\n   setne %al\n   movzb %al, %rax\n   push %rax\n"
      | Lt ->
          v1_code ^ v2_code ^
          "   pop %rbx\n   pop %rax\n   cmp %rbx, %rax\n   setl %al\n   movzb %al, %rax\n   push %rax\n"
      | Gt ->
          v1_code ^ v2_code ^
          "   pop %rbx\n   pop %rax\n   cmp %rbx, %rax\n   setg %al\n   movzb %al, %rax\n   push %rax\n"
      | Le -> 
          v1_code ^ v2_code ^
          "   pop %rbx\n   pop %rax\n   cmp %rbx, %rax\n   setle %al\n   movzb %al, %rax\n   push %rax\n"
      | Ge ->
          v1_code ^ v2_code ^
          "   pop %rbx\n   pop %rax\n   cmp %rbx, %rax\n   setge %al\n   movzb %al, %rax\n   push %rax\n"
      | Eqs ->
          v1_code ^ v2_code ^
          "   pop %rbx\n   pop %rax\n   cmp %rbx, %rax\n   sete %al\n   movzb %al, %rax\n   push %rax\n"
      | Neqs ->
          v1_code ^ v2_code ^
          "   pop %rbx\n   pop %rax\n   cmp %rbx, %rax\n   setne %al\n   movzb %al, %rax\n   push %rax\n"
      | And ->
          v1_code ^ v2_code ^
          "   pop %rbx\n" ^
          "   pop %rax\n" ^
          "   cmp $0, %rax\n" ^
          "   setne %al\n" ^
          "   movzbq %al, %rax\n" ^
          "   cmp $0, %rbx\n" ^
          "   setne %bl\n" ^
          "   and %bl, %al\n" ^
          "   movzbq %al, %rax\n" ^
          "   push %rax\n"

      | Or ->
          v1_code ^ v2_code ^
          "   pop %rbx\n" ^
          "   pop %rax\n" ^
          "   cmp $0, %rax\n" ^
          "   setne %al\n" ^
          "   movzbq %al, %rax\n" ^
          "   cmp $0, %rbx\n" ^
          "   setne %bl\n" ^
          "   or %bl, %al\n" ^
          "   movzbq %al, %rax\n" ^
          "   push %rax\n"
      end

  | Icall (name, args) ->
      let args_code =
        List.rev_map (fun arg ->
          let v_code = compile_expr arg in
          v_code
        ) args
        |> String.concat ""
      in

      let cleanup = Printf.sprintf "   add $%d, %%rsp\n" (8 * List.length args) in
      args_code ^
      Printf.sprintf "   call %s\n" name ^
      cleanup ^
      "   push %rax\n"

  | Iprint ->
      "   and $-16, %rsp \n    xor %rax, %rax\n   call printf\n   push %rax\n"

let compile_ast (ast : iAST) : string =
  match ast with 
  | Ireturn e -> 
      (let expr_code = compile_expr e in
      expr_code ^ "  pop %rax\n    leave\n   ret\n")

  | Ival e -> 
      compile_expr e

  | Iassign ((pos, size), e) ->
      let expr_code = compile_expr e in
      let pos_str = compile_pos pos in
      expr_code ^
      (match size with
      | 32 -> Printf.sprintf "   pop %%eax\n   mov %%eax, %s\n" pos_str
      | _ -> Printf.sprintf "   pop %%rax\n   mov %%rax, %s\n" pos_str)

  | Ilabel s ->
      Printf.sprintf "%s:\n" s

  | Icondjump (e, label) ->
      let expr_code = compile_expr e in
      expr_code ^
      "   pop %rax\n   cmp $0, %rax\n" ^
      Printf.sprintf "   je %s\n" label

  | Ijump label ->
      Printf.sprintf "   jmp %s\n" label 



let compile_asts (name : string) (asts : iAST list) : string =
  (*let header = Printf.sprintf ".global %s \n %s:\n   and $-16, %%rsp\n" name name in*)
    let header = Printf.sprintf ".global %s \n %s:\n    push %%rbp\n     mov %%rsp, %%rbp\n    sub $64, %%rsp\n" name name in
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