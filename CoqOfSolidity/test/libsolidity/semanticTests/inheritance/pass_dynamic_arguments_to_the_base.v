(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Base.
  Definition  (α : list Value.t) : M :=
    match α with
    | [i] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "m_i" |),
          M.get_name (| "i" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition m_i : Value.t :=
    undefined.
End Base.


(* Contract *)
Module Derived.
  Definition  (α : list Value.t) : M :=
    match α with
    | [i] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Derived.


(* Contract *)
Module Final.
  
End Final.
