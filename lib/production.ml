open Types

let compile_expr (e : expr) : string =
  match e with 
  | Cst (i, _) -> let code = Printf.sprintf "$%d" i in code

let compile_stmt (s : stmt) : string =
  match s with 
  | Print (expr, _) -> 
      let expr_code = compile_expr expr in
      let expr_mov = Printf.sprintf "    mov %s, %%edi\n" expr_code in
      expr_mov ^
      "    lea fmt(%rip), %rsi\n    xor %rax, %rax\n    call printf\n"

let compile_gdef (g : gdef) : string =
  match g with
  | Function (name, _arg, body, _) ->
      let global_label = Printf.sprintf "global %s \n" name in
      let func_label = Printf.sprintf "%s:\n" name in
      let body_code =
        String.concat ""
          (List.map (fun stmt -> compile_stmt stmt) body)
      in
      let end_code = "    mov $0, %rax\n    ret\n" in
      global_label ^ func_label ^ body_code ^ end_code


let compile_program (cmd : program) file =
  let oc = open_out file in
  let print oc s = Printf.fprintf oc "%s\n" s in
  print oc "section .data";
  print oc "    fmt: .string \"%%d\\n\"\n";

  print oc "section .text\n";
  List.iter
    (fun gdef -> print oc (compile_gdef gdef))
    cmd;
  close_out oc