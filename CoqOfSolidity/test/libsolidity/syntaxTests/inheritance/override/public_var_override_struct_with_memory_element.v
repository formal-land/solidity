(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  (* Struct S *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.
End C.


(* Contract *)
Module D.
  Definition f : Value.t :=
    undefined.
End D.
