(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Interface *)
Module I.
  (* Event A *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.
End I.


(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
