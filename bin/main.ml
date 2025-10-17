open Les_4_fantastiques
open Typechecker
open Production

let test_production () =
  let assign_lea = Iassign ("rdi", Ivalue (Iglobal "fmt")) in
  let assign_value = Iassign ("esi", Ivalue (Iconst 42)) in
  let print = Icall "printf" in
  let expr = Ivalue (Iconst 0) in
  let ast = Ireturn expr in
  let program : iprogram = ([("main", [assign_lea; assign_value; print; ast])], []) in
  compile_program program "output.s";
  Printf.printf "Assembly code generated in output.asm\n" 

let () = test_production ()