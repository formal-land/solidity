(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Interface *)
Module IBase.
  Definition foo (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.
End IBase.


(* Contract *)
Module Base.
  Definition foo (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Base.


(* Interface *)
Module IExt.
  
End IExt.


(* Contract *)
Module Ext.
  
End Ext.


(* Contract *)
Module Impl.
  Definition foo (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Impl.
