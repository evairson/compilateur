open Les_4_fantastiques
open Typechecker
open Production

let test_production () =
  let expr = Ivalue (Iconst 42) in
  let ast = Ireturn expr in
  let program : iprogram = ([("main", [ast])], []) in
  compile_program program "output.asm";
  Printf.printf "Assembly code generated in output.asm\n" 

let () = test_production ()