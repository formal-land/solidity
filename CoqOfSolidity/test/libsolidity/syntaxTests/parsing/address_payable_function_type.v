(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f : Value.t :=
    undefined.

  Definition g (α : list Value.t) : M :=
    match α with
    | [_] =>
      let _ :=
        M.define (|
          [ "h" ],
          Value.Default
        |) in
      let _ :=
        M.get_name (| "h" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
