(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module A.
  Definition a : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          Value.Integer 5
        |) in
      let _ :=
        M.assign (|
          "%=",
          M.get_name (| "a" |),
          Value.Integer 0
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End A.
