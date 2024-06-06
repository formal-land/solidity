(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  Definition set (α : list Value.t) : M :=
    match α with
    | [_data, i] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "l" |),
          M.member_access (|
            M.get_name (| "_data" |),
            "length"
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.index_access (|
            M.get_name (| "_data" |),
            Some (M.get_name (| "i" |))
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
