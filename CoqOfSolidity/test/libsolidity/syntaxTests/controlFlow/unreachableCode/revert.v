(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "revert" |),
          []
        |) in
      let _ :=
        M.define (|
          [ "a" ],
          Value.Integer 0
        |) in
      let _ :=
        M.get_name (| "a" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
