(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "type" |),
          [
            M.get_name (| "Test" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
