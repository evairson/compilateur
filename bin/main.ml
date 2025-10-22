open Les_4_fantastiques
open AST1
open AST2
open Typecheck_conversion
open Production

let dummy_pos = Lexing.dummy_pos

let prog1 : program =
  [
    Function (
      "main",             
      "x",                  
      [ Print (Cst (4, dummy_pos), dummy_pos);
      Return (Cst (0, dummy_pos), dummy_pos)
      ],  
      dummy_pos
    );
  ]

let iprog : iprogram = program1_to_iprogram prog1

let () =
  let file_name = Sys.argv.(1) in
  let ic = open_in file_name in
  let lexbuf = Lexing.from_channel ic in
  let _ = Les_4_fantastiques.Parser.prog Les_4_fantastiques.Lexer.token lexbuf in

  let (functions, symbols) = iprog in
  print_endline "Fonctions converties";
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
          | _ -> Printf.printf "  Autre instruction inconnue\n")
        body)
    functions;
  print_endline "Symboles ";
  List.iter (fun (name, value) -> Printf.printf "%s -> %d\n" name value) symbols;
  compile_program iprog "output.s";
  print_endline "Compilation terminée, voir output.s";
  close_in ic
