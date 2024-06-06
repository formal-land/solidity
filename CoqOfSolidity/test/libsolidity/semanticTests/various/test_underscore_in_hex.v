(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [cond] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 0x1234_ab
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          Value.Integer 0x1234_abcd_1234
        |) in
      let _ :=
        M.return_ (|
          Conditional M.get_name (| "cond" |) M.get_name (| "x" |) M.get_name (| "y" |)

        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
