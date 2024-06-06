(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

Definition add (α : list Value.t) : M :=
  match α with
  | [a, b] =>
    let _ :=
      M.return_ (|
        M.bin_op (|
          "+",
          M.get_name (| "a" |),
          M.get_name (| "b" |)
        |)
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.
(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.get_name (| "add" |),
            [
              M.get_name (| "x" |),
              Value.Integer 2
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
