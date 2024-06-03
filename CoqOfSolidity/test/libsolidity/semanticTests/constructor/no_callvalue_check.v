(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module A1.
  
End A1.


(* Contract *)
Module B1.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B1.


(* Contract *)
Module A2.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End A2.


(* Contract *)
Module B2.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B2.


(* Contract *)
Module B3.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B3.


(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          FunctionCallOptions NewExpression Ty.path "B1"
 [value, ] Value.Integer 10
,
          []
        |) in
      let _ :=
        M.call (|
          FunctionCallOptions NewExpression Ty.path "B2"
 [value, ] Value.Integer 10
,
          []
        |) in
      let _ :=
        M.call (|
          FunctionCallOptions NewExpression Ty.path "B3"
 [value, ] Value.Integer 10
,
          []
        |) in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
