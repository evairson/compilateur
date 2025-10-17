open Typechecker

let compile_ivalue (v : value) : string =
  match v with 
  | Iconst n -> 
      Printf.sprintf "   mov rax, %d\n" n
  

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

let compile_asts (name : string) (asts : iAST list) : string =
  let header = Printf.sprintf "%s:\n" name in
  let body = List.fold_left (fun acc ast -> acc ^ (compile_ast ast)) "" asts in
  header ^ body

let compile_program (prg : iprogram) file =
  let oc = open_out file in
  let print oc s = output_string oc (s ^ "\n") in
  let (cmd, _vars) = prg in

  print oc "section .text\n";
  List.iter
    (fun (name, asts) -> print oc (compile_asts name asts))
    cmd;
  close_out oc