
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | TINT
    | STAR
    | SEMI
    | RP
    | RETURN
    | REM
    | RB
    | PRINT
    | PLUS
    | OR
    | NOT
    | NEQS
    | NEQ
    | MINUS
    | LT
    | LP
    | LE
    | LB
    | IF
    | IDENT of (
# 8 "lib/parser.mly"
       (string)
# 35 "lib/parser.ml"
  )
    | GT
    | GE
    | EQS
    | EQ
    | EOF
    | END
    | ELSE
    | DIV
    | CST of (
# 7 "lib/parser.mly"
       (int)
# 48 "lib/parser.ml"
  )
    | CONTINUE
    | COMMA
    | BREAK
    | BEGIN
    | AND
    | AFFECT
    | ADDRESS
  
end

include MenhirBasics

# 3 "lib/parser.mly"
  
  open AST1

# 66 "lib/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_prog) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: prog. *)

  | MenhirState008 : (('s, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT _menhir_cell0_LP _menhir_cell0_RP, _menhir_box_prog) _menhir_state
    (** State 008.
        Stack shape : TINT IDENT LP RP.
        Start symbol: prog. *)

  | MenhirState012 : (('s, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 012.
        Stack shape : TINT IDENT.
        Start symbol: prog. *)

  | MenhirState013 : (('s, _menhir_box_prog) _menhir_cell1_STAR, _menhir_box_prog) _menhir_state
    (** State 013.
        Stack shape : STAR.
        Start symbol: prog. *)

  | MenhirState014 : (('s, _menhir_box_prog) _menhir_cell1_NOT, _menhir_box_prog) _menhir_state
    (** State 014.
        Stack shape : NOT.
        Start symbol: prog. *)

  | MenhirState015 : (('s, _menhir_box_prog) _menhir_cell1_MINUS, _menhir_box_prog) _menhir_state
    (** State 015.
        Stack shape : MINUS.
        Start symbol: prog. *)

  | MenhirState016 : (('s, _menhir_box_prog) _menhir_cell1_LP, _menhir_box_prog) _menhir_state
    (** State 016.
        Stack shape : LP.
        Start symbol: prog. *)

  | MenhirState018 : (('s, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP, _menhir_box_prog) _menhir_state
    (** State 018.
        Stack shape : IDENT LP.
        Start symbol: prog. *)

  | MenhirState024 : (('s, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_STAR, _menhir_box_prog) _menhir_state
    (** State 024.
        Stack shape : expr STAR.
        Start symbol: prog. *)

  | MenhirState026 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 026.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState028 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 028.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState030 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 030.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState032 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 032.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState034 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 034.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState036 : (('s, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_MINUS, _menhir_box_prog) _menhir_state
    (** State 036.
        Stack shape : expr MINUS.
        Start symbol: prog. *)

  | MenhirState038 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 038.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState040 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 040.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState042 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 042.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState044 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 044.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState046 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 046.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState048 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 048.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState050 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 050.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState052 : (('s, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 052.
        Stack shape : expr.
        Start symbol: prog. *)

  | MenhirState056 : ((('s, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_arg_list, _menhir_box_prog) _menhir_state
    (** State 056.
        Stack shape : IDENT LP arg_list.
        Start symbol: prog. *)

  | MenhirState065 : (('s, _menhir_box_prog) _menhir_cell1_STAR, _menhir_box_prog) _menhir_state
    (** State 065.
        Stack shape : STAR.
        Start symbol: prog. *)

  | MenhirState067 : ((('s, _menhir_box_prog) _menhir_cell1_STAR, _menhir_box_prog) _menhir_cell1_expr, _menhir_box_prog) _menhir_state
    (** State 067.
        Stack shape : STAR expr.
        Start symbol: prog. *)

  | MenhirState070 : (('s, _menhir_box_prog) _menhir_cell1_RETURN, _menhir_box_prog) _menhir_state
    (** State 070.
        Stack shape : RETURN.
        Start symbol: prog. *)

  | MenhirState074 : (('s, _menhir_box_prog) _menhir_cell1_PRINT _menhir_cell0_LP, _menhir_box_prog) _menhir_state
    (** State 074.
        Stack shape : PRINT LP.
        Start symbol: prog. *)

  | MenhirState079 : (('s, _menhir_box_prog) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_prog) _menhir_state
    (** State 079.
        Stack shape : IF LP.
        Start symbol: prog. *)

  | MenhirState082 : ((('s, _menhir_box_prog) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_RP, _menhir_box_prog) _menhir_state
    (** State 082.
        Stack shape : IF LP expr RP.
        Start symbol: prog. *)

  | MenhirState084 : (('s, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP, _menhir_box_prog) _menhir_state
    (** State 084.
        Stack shape : IDENT LP.
        Start symbol: prog. *)

  | MenhirState090 : (('s, _menhir_box_prog) _menhir_cell1_IDENT, _menhir_box_prog) _menhir_state
    (** State 090.
        Stack shape : IDENT.
        Start symbol: prog. *)

  | MenhirState094 : (((('s, _menhir_box_prog) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_RP, _menhir_box_prog) _menhir_cell1_seq, _menhir_box_prog) _menhir_state
    (** State 094.
        Stack shape : IF LP expr RP seq.
        Start symbol: prog. *)

  | MenhirState097 : ((((('s, _menhir_box_prog) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_RP, _menhir_box_prog) _menhir_cell1_seq, _menhir_box_prog) _menhir_cell1_RB, _menhir_box_prog) _menhir_state
    (** State 097.
        Stack shape : IF LP expr RP seq RB.
        Start symbol: prog. *)

  | MenhirState098 : (((((('s, _menhir_box_prog) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_RP, _menhir_box_prog) _menhir_cell1_seq, _menhir_box_prog) _menhir_cell1_RB, _menhir_box_prog) _menhir_cell1_seq, _menhir_box_prog) _menhir_state
    (** State 098.
        Stack shape : IF LP expr RP seq RB seq.
        Start symbol: prog. *)

  | MenhirState101 : ((('s, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT _menhir_cell0_LP _menhir_cell0_RP, _menhir_box_prog) _menhir_cell1_seq, _menhir_box_prog) _menhir_state
    (** State 101.
        Stack shape : TINT IDENT LP RP seq.
        Start symbol: prog. *)

  | MenhirState105 : (('s, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT _menhir_cell0_LP _menhir_cell0_params _menhir_cell0_RP, _menhir_box_prog) _menhir_state
    (** State 105.
        Stack shape : TINT IDENT LP params RP.
        Start symbol: prog. *)

  | MenhirState106 : ((('s, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT _menhir_cell0_LP _menhir_cell0_params _menhir_cell0_RP, _menhir_box_prog) _menhir_cell1_seq, _menhir_box_prog) _menhir_state
    (** State 106.
        Stack shape : TINT IDENT LP params RP seq.
        Start symbol: prog. *)

  | MenhirState111 : (('s, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 111.
        Stack shape : TINT IDENT.
        Start symbol: prog. *)

  | MenhirState115 : (('s, _menhir_box_prog) _menhir_cell1_IDENT, _menhir_box_prog) _menhir_state
    (** State 115.
        Stack shape : IDENT.
        Start symbol: prog. *)

  | MenhirState119 : (('s, _menhir_box_prog) _menhir_cell1_list_gdef, _menhir_box_prog) _menhir_state
    (** State 119.
        Stack shape : list_gdef.
        Start symbol: prog. *)


and ('s, 'r) _menhir_cell1_arg_list = 
  | MenhirCell1_arg_list of 's * ('s, 'r) _menhir_state * (AST1.expr list)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (AST1.expr) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_list_gdef = 
  | MenhirCell1_list_gdef of 's * ('s, 'r) _menhir_state * (AST1.program)

and 's _menhir_cell0_params = 
  | MenhirCell0_params of 's * (AST1.params)

and ('s, 'r) _menhir_cell1_seq = 
  | MenhirCell1_seq of 's * ('s, 'r) _menhir_state * (AST1.seq)

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 8 "lib/parser.mly"
       (string)
# 294 "lib/parser.ml"
) * Lexing.position * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 8 "lib/parser.mly"
       (string)
# 301 "lib/parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LP = 
  | MenhirCell1_LP of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LP = 
  | MenhirCell0_LP of 's * Lexing.position

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_MINUS = 
  | MenhirCell0_MINUS of 's * Lexing.position

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_PRINT = 
  | MenhirCell1_PRINT of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RB = 
  | MenhirCell1_RB of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_RP = 
  | MenhirCell0_RP of 's * Lexing.position

and ('s, 'r) _menhir_cell1_STAR = 
  | MenhirCell1_STAR of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_STAR = 
  | MenhirCell0_STAR of 's * Lexing.position

and ('s, 'r) _menhir_cell1_TINT = 
  | MenhirCell1_TINT of 's * ('s, 'r) _menhir_state * Lexing.position

and _menhir_box_prog = 
  | MenhirBox_prog of (AST1.program) [@@unboxed]

let _menhir_action_01 =
  fun e ->
    (
# 105 "lib/parser.mly"
          ([e])
# 351 "lib/parser.ml"
     : (AST1.expr list))

let _menhir_action_02 =
  fun e l ->
    (
# 106 "lib/parser.mly"
                           (l@[e])
# 359 "lib/parser.ml"
     : (AST1.expr list))

let _menhir_action_03 =
  fun _endpos_c_ _startpos_c_ c ->
    let _endpos = _endpos_c_ in
    let _startpos = _startpos_c_ in
    let _loc = (_startpos, _endpos) in
    (
# 83 "lib/parser.mly"
                                 ( Cst(c,snd _loc) )
# 370 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_04 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 144 "lib/parser.mly"
        ( Plus )
# 378 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 386 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_05 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 145 "lib/parser.mly"
        ( Minus )
# 394 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 402 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_06 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 146 "lib/parser.mly"
         ( Mul )
# 410 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 418 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_07 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 147 "lib/parser.mly"
        ( Div )
# 426 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 434 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_08 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 148 "lib/parser.mly"
        ( Rem )
# 442 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 450 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_09 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 149 "lib/parser.mly"
     ( Lt )
# 458 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 466 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_10 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 150 "lib/parser.mly"
       ( Le )
# 474 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 482 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_11 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 151 "lib/parser.mly"
       ( Gt )
# 490 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 498 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_12 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 152 "lib/parser.mly"
       ( Ge )
# 506 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 514 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_13 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 153 "lib/parser.mly"
     ( Eq )
# 522 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 530 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_14 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 154 "lib/parser.mly"
        ( Neq )
# 538 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 546 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_15 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 155 "lib/parser.mly"
        ( And )
# 554 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 562 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_16 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 156 "lib/parser.mly"
       ( Or )
# 570 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 578 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_17 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 157 "lib/parser.mly"
        ( Eqs )
# 586 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 594 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_18 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let o = 
# 158 "lib/parser.mly"
         ( Neqs )
# 602 "lib/parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    let _loc = (_startpos, _endpos) in
    (
# 84 "lib/parser.mly"
                                 ( Binop (o, e1, e2, snd _loc) )
# 610 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_19 =
  fun _endpos_e_ _startpos__1_ e ->
    let _endpos = _endpos_e_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 85 "lib/parser.mly"
                               ( Unop(Opp, e, snd _loc) )
# 621 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_20 =
  fun e ->
    (
# 86 "lib/parser.mly"
               ( e )
# 629 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_21 =
  fun _endpos_e_ _startpos__1_ e ->
    let _endpos = _endpos_e_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 87 "lib/parser.mly"
                ( Unop(Not, e, snd _loc) )
# 640 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_22 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    let _loc = (_startpos, _endpos) in
    (
# 88 "lib/parser.mly"
          ( Var(i,snd _loc) )
# 651 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_23 =
  fun _endpos__3_ _startpos_id_ id ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos_id_ in
    let _loc = (_startpos, _endpos) in
    (
# 89 "lib/parser.mly"
                 (Call(id,[],fst _loc,snd _loc))
# 662 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_24 =
  fun _endpos__4_ _startpos_id_ args id ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_id_ in
    let _loc = (_startpos, _endpos) in
    (
# 90 "lib/parser.mly"
                               (Call(id,args,fst _loc, snd _loc))
# 673 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_25 =
  fun _endpos_e_ _startpos__1_ e ->
    let _endpos = _endpos_e_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 92 "lib/parser.mly"
              ( Deref(e, snd _loc) )
# 684 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_26 =
  fun _endpos_id_ _startpos__1_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 93 "lib/parser.mly"
                   ( Address(id, snd _loc) )
# 695 "lib/parser.ml"
     : (AST1.expr))

let _menhir_action_27 =
  fun _endpos__7_ _startpos__1_ id1 s ->
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 70 "lib/parser.mly"
                                           ( Function (id1, [], s, snd _loc) )
# 706 "lib/parser.ml"
     : (AST1.gdef))

let _menhir_action_28 =
  fun _endpos__8_ _startpos__1_ id1 p s ->
    let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 71 "lib/parser.mly"
                                                    ( Function (id1, p, s, snd _loc) )
# 717 "lib/parser.ml"
     : (AST1.gdef))

let _menhir_action_29 =
  fun _endpos__3_ _startpos__1_ id ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 74 "lib/parser.mly"
                       ( Gvar(id, snd _loc) )
# 728 "lib/parser.ml"
     : (AST1.gdef))

let _menhir_action_30 =
  fun _endpos__5_ _startpos__1_ e id ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 75 "lib/parser.mly"
                                     ( Gvar_affect(id, e, snd _loc) )
# 739 "lib/parser.ml"
     : (AST1.gdef))

let _menhir_action_31 =
  fun _endpos__4_ _startpos_id_ e id ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_id_ in
    let _loc = (_startpos, _endpos) in
    (
# 76 "lib/parser.mly"
                                ( Gvar_affect(id, e, snd _loc) )
# 750 "lib/parser.ml"
     : (AST1.gdef))

let _menhir_action_32 =
  fun g ->
    (
# 60 "lib/parser.mly"
             ( [g] )
# 758 "lib/parser.ml"
     : (AST1.program))

let _menhir_action_33 =
  fun g lgdef ->
    (
# 61 "lib/parser.mly"
                               (lgdef @ [g])
# 766 "lib/parser.ml"
     : (AST1.program))

let _menhir_action_34 =
  fun id ->
    (
# 65 "lib/parser.mly"
                  ( [id] )
# 774 "lib/parser.ml"
     : (AST1.params))

let _menhir_action_35 =
  fun id p ->
    (
# 66 "lib/parser.mly"
                                 ( p @ [id] )
# 782 "lib/parser.ml"
     : (AST1.params))

let _menhir_action_36 =
  fun p ->
    (
# 55 "lib/parser.mly"
                      ( p )
# 790 "lib/parser.ml"
     : (AST1.program))

let _menhir_action_37 =
  fun s ->
    (
# 138 "lib/parser.mly"
         ( [s] )
# 798 "lib/parser.ml"
     : (AST1.seq))

let _menhir_action_38 =
  fun s s2 ->
    (
# 139 "lib/parser.mly"
                ( s @ [s2] )
# 806 "lib/parser.ml"
     : (AST1.seq))

let _menhir_action_39 =
  fun _endpos__5_ _startpos__1_ e ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 111 "lib/parser.mly"
                            ( Print(e,snd _loc) )
# 817 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_40 =
  fun _endpos__3_ _startpos__1_ e ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 112 "lib/parser.mly"
                       ( Return(e,snd _loc) )
# 828 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_41 =
  fun _endpos__3_ _startpos__1_ id ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 113 "lib/parser.mly"
                     ( Lvar(id, snd _loc) )
# 839 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_42 =
  fun _endpos__5_ _startpos__1_ e id ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 114 "lib/parser.mly"
                                   ( Lvar_affect(id, e, snd _loc) )
# 850 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_43 =
  fun _endpos__4_ _startpos_id_ e id ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_id_ in
    let _loc = (_startpos, _endpos) in
    (
# 115 "lib/parser.mly"
                              (Var_affect(id, e, snd _loc))
# 861 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_44 =
  fun _endpos__4_ _startpos_id_ id ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_id_ in
    let _loc = (_startpos, _endpos) in
    (
# 116 "lib/parser.mly"
                      (SCall(id,[],fst _loc,snd _loc))
# 872 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_45 =
  fun _endpos__5_ _startpos_id_ args id ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos_id_ in
    let _loc = (_startpos, _endpos) in
    (
# 117 "lib/parser.mly"
                                    (SCall(id,args,fst _loc, snd _loc))
# 883 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_46 =
  fun _endpos__5_ _startpos__1_ e1 e2 ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 118 "lib/parser.mly"
                                   ( Pvar_affect(e1, e2, snd _loc))
# 894 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_47 =
  fun _endpos__7_ _startpos__1_ e s ->
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 119 "lib/parser.mly"
                                ( If(e,s,None,fst _loc, snd _loc))
# 905 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_action_48 =
  fun _endpos__11_ _startpos__1_ e s1 s2 ->
    let _endpos = _endpos__11_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    (
# 120 "lib/parser.mly"
                                                   ( If(e,s1,Some s2,fst _loc, snd _loc))
# 916 "lib/parser.ml"
     : (AST1.stmt))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ADDRESS ->
        "ADDRESS"
    | AFFECT ->
        "AFFECT"
    | AND ->
        "AND"
    | BEGIN ->
        "BEGIN"
    | BREAK ->
        "BREAK"
    | COMMA ->
        "COMMA"
    | CONTINUE ->
        "CONTINUE"
    | CST _ ->
        "CST"
    | DIV ->
        "DIV"
    | ELSE ->
        "ELSE"
    | END ->
        "END"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | EQS ->
        "EQS"
    | GE ->
        "GE"
    | GT ->
        "GT"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | LB ->
        "LB"
    | LE ->
        "LE"
    | LP ->
        "LP"
    | LT ->
        "LT"
    | MINUS ->
        "MINUS"
    | NEQ ->
        "NEQ"
    | NEQS ->
        "NEQS"
    | NOT ->
        "NOT"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | PRINT ->
        "PRINT"
    | RB ->
        "RB"
    | REM ->
        "REM"
    | RETURN ->
        "RETURN"
    | RP ->
        "RP"
    | SEMI ->
        "SEMI"
    | STAR ->
        "STAR"
    | TINT ->
        "TINT"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__3_, id, _startpos__1_) = (_endpos_1, _v, _startpos) in
              let _v = _menhir_action_29 _endpos__3_ _startpos__1_ id in
              _menhir_goto_gdef _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | LP ->
              let _menhir_stack = MenhirCell1_TINT (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_2) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TINT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENT _v_4 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let id = _v_4 in
                      let _v = _menhir_action_34 id in
                      _menhir_goto_params _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | RP ->
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_RP (_menhir_stack, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | BEGIN ->
                      let _menhir_s = MenhirState008 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | TINT ->
                          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | STAR ->
                          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | RETURN ->
                          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | PRINT ->
                          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | IF ->
                          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | IDENT _v ->
                          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | AFFECT ->
              let _menhir_stack = MenhirCell1_TINT (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
              let _menhir_s = MenhirState111 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | STAR ->
                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOT ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MINUS ->
                  _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LP ->
                  _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | CST _v ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ADDRESS ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_gdef : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_122 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let g = _v in
      let _v = _menhir_action_32 g in
      _menhir_goto_list_gdef _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_gdef : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TINT ->
          let _menhir_stack = MenhirCell1_list_gdef (_menhir_stack, _menhir_s, _v) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_list_gdef (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState119
      | EOF ->
          let p = _v in
          let _v = _menhir_action_36 p in
          MenhirBox_prog _v
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | AFFECT ->
          let _menhir_s = MenhirState115 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STAR ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LP ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CST _v ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ADDRESS ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_STAR (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState013 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState014 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState015 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LP (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState016 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_017 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STAR ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
          | RP ->
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__3_, _startpos_id_, id) = (_endpos_1, _startpos, _v) in
              let _v = _menhir_action_23 _endpos__3_ _startpos_id_ id in
              _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos_id_ _v _menhir_s _tok
          | NOT ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
          | MINUS ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
          | LP ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
          | IDENT _v_2 ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState018
          | CST _v_3 ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState018
          | ADDRESS ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
          | _ ->
              _eRR ())
      | AFFECT | AND | COMMA | DIV | EQ | EQS | GE | GT | LE | LT | MINUS | NEQ | NEQS | OR | PLUS | REM | RP | SEMI | STAR ->
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_22 _endpos_i_ _startpos_i_ i in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState014 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState015 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState016 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState030 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState028 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState024 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState084 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_116 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, id, _startpos_id_, _) = _menhir_stack in
          let (e, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_31 _endpos__4_ _startpos_id_ e id in
          _menhir_goto_gdef _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_STAR (_menhir_stack, _startpos) in
      let _menhir_s = MenhirState024 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_c_, _startpos_c_, c) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_03 _endpos_c_ _startpos_c_ c in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_c_ _startpos_c_ _v _menhir_s _tok
  
  and _menhir_run_021 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, id, _startpos__1_) = (_endpos, _v, _startpos) in
          let _v = _menhir_action_26 _endpos_id_ _startpos__1_ id in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState026 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState028 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState032 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState034 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState046 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_MINUS (_menhir_stack, _startpos) in
      let _menhir_s = MenhirState036 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState038 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState040 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState042 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState044 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState048 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState050 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState030 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState052 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, id, _, _) = _menhir_stack in
          let MenhirCell1_TINT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_30 _endpos__5_ _startpos__1_ e id in
          _menhir_goto_gdef _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, id, _startpos_id_, _) = _menhir_stack in
          let (e, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_43 _endpos__4_ _startpos_id_ e id in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState106 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState101 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState094 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState098 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState105 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_100 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_seq -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_seq (_menhir_stack, _menhir_s, s) = _menhir_stack in
      let s2 = _v in
      let _v = _menhir_action_38 s s2 in
      _menhir_goto_seq _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_seq : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState105 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_106 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT _menhir_cell0_LP _menhir_cell0_params _menhir_cell0_RP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TINT ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | STAR ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | RETURN ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | PRINT ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | IF ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState106
      | END ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_params (_menhir_stack, p) = _menhir_stack in
          let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_IDENT (_menhir_stack, id1, _, _) = _menhir_stack in
          let MenhirCell1_TINT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (s, _endpos__8_) = (_v, _endpos) in
          let _v = _menhir_action_28 _endpos__8_ _startpos__1_ id1 p s in
          _menhir_goto_gdef _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__3_, id, _startpos__1_) = (_endpos_1, _v, _startpos) in
              let _v = _menhir_action_41 _endpos__3_ _startpos__1_ id in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | AFFECT ->
              let _menhir_stack = MenhirCell1_TINT (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
              let _menhir_s = MenhirState012 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | STAR ->
                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOT ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MINUS ->
                  _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LP ->
                  _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | CST _v ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | ADDRESS ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_STAR (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState065 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState070 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_PRINT (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState074 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STAR ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LP ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CST _v ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ADDRESS ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState079 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STAR ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LP ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CST _v ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ADDRESS ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STAR ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | RP ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SEMI ->
                  let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos_id_, id, _endpos__4_) = (_startpos, _v, _endpos_2) in
                  let _v = _menhir_action_44 _endpos__4_ _startpos_id_ id in
                  _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | NOT ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | MINUS ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | LP ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | IDENT _v_3 ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState084
          | CST _v_4 ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState084
          | ADDRESS ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
          | _ ->
              _eRR ())
      | AFFECT ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _menhir_s = MenhirState090 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STAR ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LP ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CST _v ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ADDRESS ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT _menhir_cell0_LP _menhir_cell0_RP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TINT ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | STAR ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | RETURN ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | PRINT ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | IF ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState101
      | END ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_IDENT (_menhir_stack, id1, _, _) = _menhir_stack in
          let MenhirCell1_TINT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (s, _endpos__7_) = (_v, _endpos) in
          let _v = _menhir_action_27 _endpos__7_ _startpos__1_ id1 s in
          _menhir_goto_gdef _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack. (((((ttv_stack, _menhir_box_prog) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_RP, _menhir_box_prog) _menhir_cell1_seq, _menhir_box_prog) _menhir_cell1_RB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TINT ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | STAR ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | RETURN ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | RB ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RB (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_seq (_menhir_stack, _, s1) = _menhir_stack in
          let MenhirCell0_RP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e, _, _) = _menhir_stack in
          let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (s2, _endpos__11_) = (_v, _endpos) in
          let _v = _menhir_action_48 _endpos__11_ _startpos__1_ e s1 s2 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PRINT ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | IF ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState098
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_IF _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_RP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TINT ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | STAR ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | RETURN ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | RB ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ELSE ->
              let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell1_RB (_menhir_stack, MenhirState094, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LB ->
                  let _menhir_s = MenhirState097 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TINT ->
                      _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | STAR ->
                      _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | RETURN ->
                      _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | PRINT ->
                      _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | IF ->
                      _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | IDENT _v ->
                      _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | END | IDENT _ | IF | PRINT | RB | RETURN | STAR | TINT ->
              let MenhirCell0_RP (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_expr (_menhir_stack, _, e, _, _) = _menhir_stack in
              let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
              let (s, _endpos__7_) = (_v, _endpos) in
              let _v = _menhir_action_47 _endpos__7_ _startpos__1_ e s in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | PRINT ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | IF ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_seq (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState094
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let s = _v in
      let _v = _menhir_action_37 s in
      _menhir_goto_seq _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IF _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RP (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LB ->
              let _menhir_s = MenhirState082 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TINT ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | STAR ->
                  _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | RETURN ->
                  _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | PRINT ->
                  _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IF ->
                  _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | REM ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_PRINT _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_PRINT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
              let (e, _endpos__5_) = (_v, _endpos_1) in
              let _v = _menhir_action_39 _endpos__5_ _startpos__1_ e in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__3_, e) = (_endpos_0, _v) in
          let _v = _menhir_action_40 _endpos__3_ _startpos__1_ e in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_STAR, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expr (_menhir_stack, _, e1, _, _) = _menhir_stack in
          let MenhirCell1_STAR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e2, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_46 _endpos__5_ _startpos__1_ e1 e2 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_STAR as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT ->
          let _menhir_s = MenhirState067 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STAR ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LP ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CST _v ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | ADDRESS ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, id, _, _) = _menhir_stack in
          let MenhirCell1_TINT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_42 _endpos__5_ _startpos__1_ e id in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_STAR -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_STAR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_e_, e) = (_endpos, _v) in
      let _v = _menhir_action_25 _endpos_e_ _startpos__1_ e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_061 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_e_, e) = (_endpos, _v) in
      let _v = _menhir_action_21 _endpos_e_ _startpos__1_ e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_060 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_e_, e) = (_endpos, _v) in
      let _v = _menhir_action_19 _endpos_e_ _startpos__1_ e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_058 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LP as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LP (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__3_, e) = (_endpos_0, _v) in
          let _v = _menhir_action_20 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos__1_ _v _menhir_s _tok
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_arg_list as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RP ->
          let MenhirCell1_arg_list (_menhir_stack, _menhir_s, l) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_02 e l in
          _menhir_goto_arg_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_arg_list : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState084 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_087 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_IDENT (_menhir_stack, _menhir_s, id, _startpos_id_, _) = _menhir_stack in
              let (_endpos__5_, args) = (_endpos_0, _v) in
              let _v = _menhir_action_45 _endpos__5_ _startpos_id_ args id in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | COMMA ->
          let _menhir_stack = MenhirCell1_arg_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_056 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP, _menhir_box_prog) _menhir_cell1_arg_list -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState056 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LP ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CST _v ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | ADDRESS ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RP ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, id, _startpos_id_, _) = _menhir_stack in
          let (_endpos__4_, args) = (_endpos, _v) in
          let _v = _menhir_action_24 _endpos__4_ _startpos_id_ args id in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_id_ _v _menhir_s _tok
      | COMMA ->
          let _menhir_stack = MenhirCell1_arg_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_053 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_15 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | NEQ | NEQS | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_13 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | NEQ | NEQS | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_17 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | NEQ | NEQS | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_14 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | GE | GT | LE | LT | NEQ | NEQS | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_12 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | GE | GT | LE | LT | NEQ | NEQS | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_11 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | GE | GT | LE | LT | NEQ | NEQS | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_10 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | GE | GT | LE | LT | NEQ | NEQS | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_09 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_MINUS as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | GE | GT | LE | LT | MINUS | NEQ | NEQS | OR | PLUS | RP | SEMI ->
          let MenhirCell0_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_05 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | NEQ | NEQS | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_18 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | COMMA | OR | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_16 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
      let (_endpos_e2_, e2) = (_endpos, _v) in
      let _v = _menhir_action_07 _endpos_e2_ _startpos_e1_ e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_run_029 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AFFECT | AND | COMMA | EQ | EQS | GE | GT | LE | LT | MINUS | NEQ | NEQS | OR | PLUS | RP | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_04 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
      let (_endpos_e2_, e2) = (_endpos, _v) in
      let _v = _menhir_action_08 _endpos_e2_ _startpos_e1_ e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_run_025 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_expr _menhir_cell0_STAR -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_STAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
      let (_endpos_e2_, e2) = (_endpos, _v) in
      let _v = _menhir_action_06 _endpos_e2_ _startpos_e1_ e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_run_023 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_IDENT _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer
      | REM ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RP ->
          let e = _v in
          let _v = _menhir_action_01 e in
          _menhir_goto_arg_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_121 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_list_gdef -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_list_gdef (_menhir_stack, _menhir_s, lgdef) = _menhir_stack in
      let g = _v in
      let _v = _menhir_action_33 g lgdef in
      _menhir_goto_list_gdef _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_params : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TINT _menhir_cell0_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RP ->
          let _menhir_stack = MenhirCell0_params (_menhir_stack, _v) in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RP (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | BEGIN ->
              let _menhir_s = MenhirState105 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TINT ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | STAR ->
                  _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | RETURN ->
                  _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | PRINT ->
                  _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IF ->
                  _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TINT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v_1 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (id, p) = (_v_1, _v) in
                  let _v = _menhir_action_35 id p in
                  _menhir_goto_params _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState000 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TINT ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
end

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
