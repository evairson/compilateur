open Les_4_fantastiques
open Types
open Production

let test_production () =
  let expr = Cst (42, Lexing.dummy_pos) in
  let stmt = Print (expr, Lexing.dummy_pos) in
  let gdef = Function ("main", "x", [stmt], Lexing.dummy_pos) in
  let program = [gdef] in
  compile_program program "output.asm"

let () = test_production ()