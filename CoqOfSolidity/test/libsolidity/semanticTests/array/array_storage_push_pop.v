(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition storageArray : Value.t :=
    undefined.

  Definition set_get_length (α : list Value.t) : M :=
    match α with
    | [len] =>
      let _ :=
        M.while (|
          WhileKind.While,
          M.bin_op (|
            "<",
            M.member_access (|
              M.get_name (| "storageArray" |),
              "length"
            |),
            M.get_name (| "len" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "storageArray" |),
              "push"
            |),
            []
          |)
        |) in
      let _ :=
        M.while (|
          WhileKind.While,
          M.bin_op (|
            ">",
            M.member_access (|
              M.get_name (| "storageArray" |),
              "length"
            |),
            Value.Integer 0
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "storageArray" |),
              "pop"
            |),
            []
          |)
        |) in
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "storageArray" |),
            "length"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
