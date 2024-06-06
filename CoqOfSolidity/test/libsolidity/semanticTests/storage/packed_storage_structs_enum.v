(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Enum small *)

  (* Enum larger *)

  (* Struct str *)

  Definition data : Value.t :=
    undefined.

  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "data" |),
            "a"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "B"
          |)
        |) in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "a"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "B"
          |)
        |) then
          M.return_ (|
            Value.Integer 2
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "data" |),
            "b"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "C"
          |)
        |) in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "b"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "C"
          |)
        |) then
          M.return_ (|
            Value.Integer 3
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "data" |),
            "c"
          |),
          M.member_access (|
            M.get_name (| "larger" |),
            "D"
          |)
        |) in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "c"
          |),
          M.member_access (|
            M.get_name (| "larger" |),
            "D"
          |)
        |) then
          M.return_ (|
            Value.Integer 4
          |)
        else
          Value.Tuple [] in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "a"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "B"
          |)
        |) then
          M.return_ (|
            Value.Integer 5
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "data" |),
            "a"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "C"
          |)
        |) in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "a"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "C"
          |)
        |) then
          M.return_ (|
            Value.Integer 6
          |)
        else
          Value.Tuple [] in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "b"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "C"
          |)
        |) then
          M.return_ (|
            Value.Integer 7
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "data" |),
            "b"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "D"
          |)
        |) in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "b"
          |),
          M.member_access (|
            M.get_name (| "small" |),
            "D"
          |)
        |) then
          M.return_ (|
            Value.Integer 8
          |)
        else
          Value.Tuple [] in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "c"
          |),
          M.member_access (|
            M.get_name (| "larger" |),
            "D"
          |)
        |) then
          M.return_ (|
            Value.Integer 9
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "data" |),
            "c"
          |),
          M.member_access (|
            M.get_name (| "larger" |),
            "B"
          |)
        |) in
      let _ :=
        if M.bin_op (|
          "!=",
          M.member_access (|
            M.get_name (| "data" |),
            "c"
          |),
          M.member_access (|
            M.get_name (| "larger" |),
            "B"
          |)
        |) then
          M.return_ (|
            Value.Integer 10
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.return_ (|
          Value.Integer 1
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
