let () =
  let lexbuf = Lexing.from_string "return 212;" in
  let _ = Les_4_fantastiques.Parser.prog Les_4_fantastiques.Lexer.token lexbuf in
  Printf.printf "ok ça fonctionne!\n";


