(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  (* Struct Nested *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [_] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.
