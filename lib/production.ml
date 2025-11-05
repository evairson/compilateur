open AST2

(*logique paresseuse*)
let compteur_lazy = ref 0 

let label prefix = 
  let l = Printf.sprintf "%s_%d" prefix !compteur_lazy in 
  incr compteur_lazy; 
  l

(*Tentative d'ajout*)
let compile_pos (p : pos) : string =
  match p with
  | Ilocal i -> Printf.sprintf "%d(%%rbp)" (i)
  | Iglobal s -> Printf.sprintf "%s(%%rip)" s
  | Ireg s -> Printf.sprintf "%%%s" s
  | Ideref _ -> failwith "Cannot compile Ideref position directly"
  | IAddr i -> Printf.sprintf "%d(%%rbp)" (i)
  | GAddr s -> Printf.sprintf "%s(%%rip)" s

  
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
      end
      | Ibinop (op, v1, v2) ->
        begin
        let v1_code = compile_expr v1 in
        match op with 
        | Or -> 
            begin
            let label_true = label "or_true" in
            let label_end  = label "or_end" in
            v1_code ^
            "   pop %rax\n" ^
            "   cmp $0, %rax\n" ^
            Printf.sprintf "   jne %s\n" label_true ^
            (compile_expr v2) ^
            "   pop %rax\n" ^
            "   cmp $0, %rax\n" ^
            "   setne %al\n" ^
            "   movzbq %al, %rax\n" ^
            Printf.sprintf "   jmp %s\n" label_end ^
            Printf.sprintf "%s:\n" label_true ^
            "   mov $1, %rax\n" ^
            Printf.sprintf "%s:\n" label_end ^
            "   push %rax\n"
            end
        | And ->
            begin
            let label_false = label "and_false" in
            let label_end   = label "and_end" in
            v1_code ^
            "   pop %rax\n" ^
            "   cmp $0, %rax\n" ^
            Printf.sprintf "   je %s\n" label_false ^
            (compile_expr v2) ^
            "   pop %rax\n" ^
            "   cmp $0, %rax\n" ^
            "   setne %al\n" ^
            "   movzbq %al, %rax\n" ^ 
            Printf.sprintf "   jmp %s\n" label_end ^
            Printf.sprintf "%s:\n" label_false ^
            "   mov $0, %rax\n" ^
            Printf.sprintf "%s:\n" label_end ^
            "   push %rax\n"
            end
        | _ -> begin 
                let v2_code = compile_expr v2 in
                match op with
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
                | _ -> failwith "mauvais opérateur dans fonction compile expr"
              end
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



and compile_left_value (lv : left_value) : string =
  match lv with
  | (pos, size) -> 
      match pos with
      | Ideref iexpr ->
          let expr_code = compile_expr iexpr in
          expr_code ^
          "   pop %rax\n" ^
          (match size with
          | 32 -> "   mov (%rax), %eax\n   push %rax\n"
          | _ -> "   mov (%rax), %rax\n   push %rax\n")
      | Ireg _ -> let cp = compile_pos pos in Printf.sprintf "   push %s\n" cp
      | _ -> let cp = compile_pos pos in
        match size with
        | 32 -> Printf.sprintf "   mov %s, %%eax\n   push %%eax\n" cp
        | _ -> Printf.sprintf "   mov %s, %%rax\n   push %%rax\n" cp

and  compile_ivalue (v : value) : string =
  match v with 
  | Iconst n -> 
      Printf.sprintf "   push $%d\n" n
  | Ileft (pos, size) ->
       match pos with
       | Iglobal "fmt" ->Printf.sprintf "   lea %s, %%rax\n   push %%rax\n" (compile_pos pos)
       | IAddr _ -> Printf.sprintf "   lea %s, %%rax\n   push %%rax\n" (compile_pos pos)
       | GAddr _ -> Printf.sprintf "   lea %s, %%rax\n   push %%rax\n" (compile_pos pos)
       | _  -> compile_left_value (pos, size)
      

let compile_ast (ast : iAST) : string =
  match ast with 
  | Ireturn e -> 
      (let expr_code = compile_expr e in
      expr_code ^ "  pop %rax\n    leave\n   ret\n")

  | Ival e -> 
      compile_expr e

  | Iassign ((pos, size), e) ->
      let expr_code = compile_expr e in
      begin match pos with
      | Ideref iexpr ->
          let addr_code = compile_expr iexpr in
          expr_code ^ addr_code ^
          "   pop %rbx\n" ^ (* adresse *)
          "   pop %rax\n" ^ (* valeur *)
          (match size with
          | 32 -> "   mov %eax, (%rbx)\n"
          | _  -> "   mov %rax, (%rbx)\n")
      | _ ->
          let pos_str = compile_pos pos in
          expr_code ^
          (match size with
          | 32 -> Printf.sprintf "   pop %%eax\n   mov %%eax, %s\n" pos_str
          | _ -> Printf.sprintf "   pop %%rax\n   mov %%rax, %s\n" pos_str)
      end

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
    (fun (name, size_opt) ->
      match size_opt with
      | Some n -> Printf.fprintf oc "    %s: .space %d\n" name (n * 8)
      | None -> Printf.fprintf oc "    %s: .quad 0\n" name)
  vars;

  print oc ".section .text";
  List.iter
    (fun (name, asts) -> print oc (compile_asts name asts))
    cmd;
  close_out oc