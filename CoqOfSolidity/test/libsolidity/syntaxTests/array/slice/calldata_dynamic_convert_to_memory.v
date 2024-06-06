(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          IndexRangeAccess M.get_name (| "x" |) Value.Integer 1 Value.Integer 2

        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
