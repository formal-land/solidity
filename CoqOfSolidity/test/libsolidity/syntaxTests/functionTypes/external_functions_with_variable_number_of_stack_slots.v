(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.member_access (|
          FunctionCallOptions M.member_access (|
            M.get_name (| "this" |),
            "f"
          |) [gas, ] Value.Integer 42
,
          "address"
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
