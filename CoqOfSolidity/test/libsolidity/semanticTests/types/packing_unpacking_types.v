(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition run (α : list Value.t) : M :=
    match α with
    | [a, b, c] =>
      let _ :=
        if M.get_name (| "a" |) then
          M.assign (|
            "=",
            M.get_name (| "y" |),
            Value.Integer 1
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.bin_op (|
            "|",
            M.bin_op (|
              "*",
              M.get_name (| "y" |),
              Value.Integer 0x100000000
            |),
            M.un_op (|
              true,
              "~",
              M.get_name (| "b" |)
            |)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.bin_op (|
            "|",
            M.bin_op (|
              "*",
              M.get_name (| "y" |),
              Value.Integer 0x10000000000000000
            |),
            M.un_op (|
              true,
              "~",
              M.get_name (| "c" |)
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
