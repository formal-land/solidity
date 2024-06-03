(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "b" ],
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.get_name (| "b" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
