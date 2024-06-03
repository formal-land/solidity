(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module A.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Integer 1
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End A.


(* Contract *)
Module B.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Integer 2
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "ptr" ],
          M.member_access (|
            M.get_name (| "A" |),
            "f"
          |)
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.get_name (| "ptr" |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B.
