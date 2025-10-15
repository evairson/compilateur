type ppos = Lexing.position * Lexing.position

type expr =
    | Cst of int*ppos

type  stmt =
    | Print of expr*ppos

type gdef =
    | Function of string*string*stmt list*ppos

type program = gdef list

