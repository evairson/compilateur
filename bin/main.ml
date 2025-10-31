open Les_4_fantastiques
open AST1
(*open Typechecker*)
open Conversion
open Production

let dummy_pos = Lexing.dummy_pos

let prog1 : program =
  [
    Function (
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

  print_endline "Programme parsé:";
  List.iter
    (fun gdef ->
      match gdef with
      | Function (name, _arg, stmts, _) ->
          Printf.printf "Function %s:\n" name;
          List.iter
            (function
              | Print (Cst (n, _), _) ->
                  Printf.printf "  Print(Cst %d)\n" n
              | Return (Cst (n, _), _) ->
                  Printf.printf "  Return(Cst %d)\n" n
              | _ -> Printf.printf "  Autre instruction inconnue1")
            stmts
      | _ -> Printf.printf "autre instruction inconnue"
    ) prog;

  print_endline "Programme typé";
  begin
    try
      (*type_program prog;*)
      print_endline "Le programme est bien type"
    with
    | Typechecker.TypeError msg ->
        Printf.eprintf "Erreur de typage : %s\n" msg;
        exit 1
    | e ->
        Printf.eprintf "Erreur pas traitee typage : %s\n" (Printexc.to_string e);
        exit 1
  end;

  let iprog = program1_to_iprogram prog in
  print_endline "Programme parsé et converti en iAST:";
  
  let (_functions, symbols) = iprog in
  (*Il faut modifier l'affichage pour les iAST*)
  (*
  List.iter
    (fun (name, body) ->
      Printf.printf "Function %s:\n" name;
      List.iter
        (function
          | Iassign (v, Ivalue (Iconst n), _) ->
              Printf.printf "  Iassign(%s, Iconst %d)\n" v n
          | Iassign (v, Ivalue (Iglobal s), _) ->
              Printf.printf "  Iassign(%s, Iglobal %s)\n" v s
          | Iassign (v, Ivalue (Ireg r), _) ->
              Printf.printf "  Iassign(%s, Ireg %s)\n" v r
          | Icall fname -> Printf.printf "  Icall(%s)\n" fname
          | Ireturn (Ivalue (Iconst n)) -> Printf.printf "  Ireturn(Iconst %d)\n" n
          | _ -> failwith "  Autre instruction inconnue2\n")
        body)
    functions;*)
  print_endline "Symboles ";
  List.iter (fun (name, value) -> 
    match value with 
    | None -> Printf.printf "%s -> None\n" name
    | Some value -> Printf.printf "%s -> %d\n" name value) symbols;
  compile_program iprog "output.s";
  print_endline "Compilation terminée, voir output.s";
  close_in ic
