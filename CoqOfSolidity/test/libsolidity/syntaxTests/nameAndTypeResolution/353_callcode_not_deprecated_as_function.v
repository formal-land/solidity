(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition callcode (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "test" |),
            "callcode"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
