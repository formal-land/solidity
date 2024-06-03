(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Integer 3
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.


(* Contract *)
Module C.
  Definition foo (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            Value.Tuple [
              M.member_access (|
                M.get_name (| "L" |),
                "f"
              |)
            ],
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
