type program = gdef list
and gdef =
| Function of string*string*stmt list*ppos
and stmt =
| Print of expr*ppos
and expr =
| Cst of int*ppos
let _ = match
| Function("main","argc",[Print(Cst i)],_pos) ->
compile_print_int i
| _ -> failwith "Not supported"
