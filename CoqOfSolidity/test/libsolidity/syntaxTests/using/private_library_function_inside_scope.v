(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Axiom using : M.usingFunctions (|
      Some (Ty.path "uint"),
      UsingKind.Local,
      [
      UsingFunction.Function "L.privateFunction",
    ]
    |).

  Definition privateFunction (α : list Value.t) : M :=
    match α with
    | [_] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.
