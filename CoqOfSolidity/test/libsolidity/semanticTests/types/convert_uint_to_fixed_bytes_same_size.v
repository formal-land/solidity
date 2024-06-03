(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  Definition uintToBytes (α : list Value.t) : M :=
    match α with
    | [h] =>
      let _ :=
        M.return_ (|
          M.call (|
            Ty.path "bytes32",
            [
              M.get_name (| "h" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
