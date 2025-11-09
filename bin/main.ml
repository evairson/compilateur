open Les_4_fantastiques
open AST1
open Conversion
open Production

let dummy_pos = Lexing.dummy_pos

let prog1 : program =
  [
    Function (
      Int,
      "main",             
      [],                  
      [ Print (Cst (4, dummy_pos), dummy_pos);
      Return (Cst (0, dummy_pos), dummy_pos)
      ],  
      dummy_pos
    )
  ]



let () =
  let file_name = Sys.argv.(1) in
  let ic = open_in file_name in
  let lexbuf = try
     Lexing.from_channel ic
  with e ->
     Printf.eprintf "Erreur lors de l'ouverture du fichier : %s\n" (Printexc.to_string e);
     exit 1
  in

  let prog = try
    Les_4_fantastiques.Parser.prog Les_4_fantastiques.Lexer.token lexbuf
  with e ->
    let pos = lexbuf.Lexing.lex_curr_p in
    let line = pos.Lexing.pos_lnum in
    let col = pos.Lexing.pos_cnum - pos.Lexing.pos_bol in
    let lexeme =
      try Lexing.lexeme lexbuf with _ -> "<end of input>"
    in
    begin
      match e with
      | Parsing.Parse_error ->
        Printf.eprintf "Parse error (Menhir) at line %d, column %d: near '%s'\n" line col lexeme
      | _ ->
        Printf.eprintf "Erreur lors de l'analyse du programme: %s\n  at line %d, column %d: near '%s'\n"
        (Printexc.to_string e) line col lexeme
    end;
    exit 1
  in

  let iprog =
    begin
      try
        let ip = program1_to_iprogram prog in
        print_endline "Le programme est bien type";
        ip
      with
      | Failure msg -> 
          Printf.eprintf "Erreur de typage/conversion : %s\n" msg;
          exit 1
      | e ->
          Printf.eprintf "Erreur inattendue lors de la conversion : %s\n" (Printexc.to_string e);
          exit 1
    end
  in
  
  compile_program iprog "output/output.s";
  print_endline "Compilation terminée, voir output/output.s";
  close_in ic
