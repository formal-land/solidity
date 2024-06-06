(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module Lib.
  Definition m (α : list Value.t) : M :=
    match α with
    | [x, y] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "*",
            M.get_name (| "x" |),
            M.get_name (| "y" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Lib.

(* Contract *)
Module Test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.get_name (| "Lib" |) in
      let _ :=
        M.member_access (|
          M.get_name (| "Lib" |),
          "m"
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.get_name (| "x" |),
            Value.Integer 9
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
