(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition x : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "x" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 2)
            |),
            "a"
          |),
          Value.Integer 3
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "x" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 2)
            |),
            "b"
          |),
          Value.Integer 4
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "x" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 2)
            |),
            "c"
          |),
          Value.Integer 5
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "x" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 2)
            |),
            "d"
          |),
          Value.Integer 6
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
