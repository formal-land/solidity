(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
  Definition a : Value.t :=
    undefined.

  Definition b : Value.t :=
    undefined.

  Definition c : Value.t :=
    undefined.

  Definition test (α : list Value.t) : M :=
    match α with
    | [d] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.get_name (| "d" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.get_name (| "b" |)
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "|",
            M.bin_op (|
              "|",
              M.bin_op (|
                "|",
                M.index_access (|
                  M.index_access (|
                    M.get_name (| "c" |),
                    Some (Value.Integer 1)
                  |),
                  Some (Value.Integer 1)
                |),
                M.index_access (|
                  M.index_access (|
                    M.get_name (| "c" |),
                    Some (Value.Integer 1)
                  |),
                  Some (Value.Integer 2)
                |)
              |),
              M.index_access (|
                M.index_access (|
                  M.get_name (| "c" |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 3)
              |)
            |),
            M.index_access (|
              M.index_access (|
                M.get_name (| "c" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 4)
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
