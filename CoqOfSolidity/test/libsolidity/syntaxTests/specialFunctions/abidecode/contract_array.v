(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "decode"
            |),
            [
              M.get_name (| "x" |),
              Value.Tuple [
                M.index_access (|
                  M.get_name (| "C" |),
                  None
                |)
              ]
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
