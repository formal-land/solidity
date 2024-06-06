(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x, y, i] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.get_name (| "y" |)
        |) in
      let _ :=
        M.return_ (|
          M.index_access (|
            M.get_name (| "x" |),
            Some (M.get_name (| "i" |))
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
