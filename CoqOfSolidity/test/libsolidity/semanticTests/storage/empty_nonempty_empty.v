(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  Definition x : Value.t :=
    undefined.

  Definition set (α : list Value.t) : M :=
    match α with
    | [_a] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.get_name (| "_a" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
