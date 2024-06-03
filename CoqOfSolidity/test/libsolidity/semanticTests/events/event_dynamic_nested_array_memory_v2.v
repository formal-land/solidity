(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  (* Event E *)

  Definition createEvent (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.define (|
          [ "arr" ],
          M.call (|
            NewExpression Ty.array (Ty.array (Ty.path "uint") None) None
,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "arr" |),
            Some (Value.Integer 0)
          |),
          M.call (|
            NewExpression Ty.array (Ty.path "uint") None
,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "arr" |),
            Some (Value.Integer 1)
          |),
          M.call (|
            NewExpression Ty.array (Ty.path "uint") None
,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "arr" |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "arr" |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          M.bin_op (|
            "+",
            M.get_name (| "x" |),
            Value.Integer 1
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "arr" |),
              Some (Value.Integer 1)
            |),
            Some (Value.Integer 0)
          |),
          M.bin_op (|
            "+",
            M.get_name (| "x" |),
            Value.Integer 2
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "arr" |),
              Some (Value.Integer 1)
            |),
            Some (Value.Integer 1)
          |),
          M.bin_op (|
            "+",
            M.get_name (| "x" |),
            Value.Integer 3
          |)
        |) in
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "E" |),
          [
            M.get_name (| "arr" |)
          ]
        |)
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
