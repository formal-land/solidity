(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module ClientReceipt.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End ClientReceipt.
