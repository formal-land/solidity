(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.bin_op (|
          "==",
          M.call (|
            Ty.path "uint32",
            [
              Value.Integer 2
            ]
          |),
          M.call (|
            Ty.path "uint64",
            [
              Value.Integer 2
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
