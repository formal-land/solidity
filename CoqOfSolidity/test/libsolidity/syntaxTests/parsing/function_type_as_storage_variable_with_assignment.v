(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x, y] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f1 : Value.t :=
    M.get_name (| "f" |).
End test.
