(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Scope.
  Definition stateVar : Value.t :=
    Value.Integer 42.

  Definition getStateVar (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "stateVar" |),
          M.member_access (|
            M.get_name (| "Scope" |),
            "stateVar"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Scope.
