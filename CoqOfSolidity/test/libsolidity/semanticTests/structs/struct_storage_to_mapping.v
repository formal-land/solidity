(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition s : Value.t :=
    undefined.

  Definition m : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "s" |),
            "a"
          |),
          Value.Integer 12
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "m" |),
            Some (Value.Integer 1)
          |),
          M.get_name (| "s" |)
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.member_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              "a"
            |),
            Value.Integer 12
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
