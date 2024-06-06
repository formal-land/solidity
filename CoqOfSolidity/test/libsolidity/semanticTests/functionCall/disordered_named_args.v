(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition a (α : list Value.t) : M :=
    match α with
    | [a, b, c] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.bin_op (|
            "+",
            M.bin_op (|
              "+",
              M.bin_op (|
                "*",
                M.get_name (| "a" |),
                Value.Integer 100
              |),
              M.bin_op (|
                "*",
                M.get_name (| "b" |),
                Value.Integer 10
              |)
            |),
            M.bin_op (|
              "*",
              M.get_name (| "c" |),
              Value.Integer 1
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition b (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.call (|
            M.get_name (| "a" |),
            [
              Value.Integer 3,
              Value.Integer 1,
              Value.Integer 2
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
