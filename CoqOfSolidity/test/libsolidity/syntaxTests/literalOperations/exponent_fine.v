(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "a" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "**",
            M.get_name (| "a" |),
            Value.Integer 1E5
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "**",
            Value.Integer 0,
            Value.Integer 1E1233
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
