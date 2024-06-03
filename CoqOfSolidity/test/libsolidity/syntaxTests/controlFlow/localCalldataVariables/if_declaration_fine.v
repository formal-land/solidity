(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [_c] =>
      let _ :=
        M.define (|
          [ "c" ],
          Value.Default
        |) in
      let _ :=
        if M.bin_op (|
          ">",
          M.index_access (|
            M.get_name (| "_c" |),
            Some (Value.Integer 2)
          |),
          Value.Integer 10
        |) then
          M.assign (|
            "=",
            M.get_name (| "c" |),
            M.get_name (| "_c" |)
          |)
        else
          M.assign (|
            "=",
            M.get_name (| "c" |),
            M.get_name (| "_c" |)
          |) in
      let _ :=
        M.index_access (|
          M.get_name (| "c" |),
          Some (Value.Integer 2)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
