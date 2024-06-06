(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition x : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.call (|
            M.get_name (| "f" |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            Value.Integer 3,
            M.get_name (| "x" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
