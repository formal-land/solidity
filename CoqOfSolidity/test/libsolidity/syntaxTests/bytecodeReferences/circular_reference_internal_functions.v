(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition foo (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          NewExpression Ty.path "D"
,
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.


(* Contract *)
Module D.
  Definition foo (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          NewExpression Ty.path "C"
,
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
