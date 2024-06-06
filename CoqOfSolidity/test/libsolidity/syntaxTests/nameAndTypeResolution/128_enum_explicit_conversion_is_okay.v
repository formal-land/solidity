(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  (* Enum ActionChoices *)

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.call (|
            Ty.path "uint256",
            [
              M.member_access (|
                M.get_name (| "ActionChoices" |),
                "GoStraight"
              |)
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          M.call (|
            Ty.path "uint64",
            [
              M.member_access (|
                M.get_name (| "ActionChoices" |),
                "Sit"
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition a : Value.t :=
    undefined.

  Definition b : Value.t :=
    undefined.
End test.
