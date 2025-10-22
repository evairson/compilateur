open Les_4_fantastiques
open AST1
open AST2
open Typechecker
open Conversion

let dummy_pos = Lexing.dummy_pos

let prog1 : program =
  [
    Function (
      "main",             
      "x",                  
      [ Print (Cst (24, dummy_pos), dummy_pos);
      Return (Cst (42, dummy_pos), dummy_pos)
      ],  
      dummy_pos
    )
  ]

let () =
  begin
    try
      type_program prog1;
      print_endline "Typechecking reussi"
    with
    | TypeError msg ->
        Printf.eprintf "Erreur de typage : %s\n" msg;
        exit 1
  end

let iprog : iprogram = program1_to_iprogram prog1

let () =
  let (functions, symbols) = iprog in
  List.iter
    (fun (name, body) ->
      Printf.printf "Function %s:\n" name;
      List.iter
        (function
          | Iassign (v, Ivalue (Iconst n)) ->
              Printf.printf "  Iassign(%s, Iconst %d)\n" v n
          | Iassign (v, Ivalue (Iglobal s)) ->
              Printf.printf "  Iassign(%s, Iglobal %s)\n" v s
          | Iassign (v, Ivalue (Ireg r)) ->
              Printf.printf "  Iassign(%s, Ireg %s)\n" v r
          | Icall fname -> Printf.printf "  Icall(%s)\n" fname
          | Ireturn (Ivalue (Iconst n)) -> Printf.printf "  Ireturn(Iconst %d)\n" n
          | _ -> Printf.printf "  Autre instruction inconnue\n")
        body)
    functions;
  print_endline "Symboles ";
  List.iter (fun (name, value) -> Printf.printf "%s -> %d\n" name value) symbols;
  print_endline "Fonctions converties";
