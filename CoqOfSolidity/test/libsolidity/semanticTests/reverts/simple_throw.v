(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        if M.bin_op (|
          ">",
          M.get_name (| "x" |),
          Value.Integer 10
        |) then
          M.return_ (|
            M.bin_op (|
              "+",
              M.get_name (| "x" |),
              Value.Integer 10
            |)
          |)
        else
          M.call (|
            M.get_name (| "revert" |),
            []
          |) in
      let _ :=
        M.return_ (|
          Value.Integer 2
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
