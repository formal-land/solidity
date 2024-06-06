(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module TransferTest.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.member_access (|
          M.call (|
            Ty.path "address",
            [
              M.get_name (| "this" |)
            ]
          |),
          "transfer"
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End TransferTest.
