(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition e (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "e" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "e" |),
          Value.Integer 0
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
