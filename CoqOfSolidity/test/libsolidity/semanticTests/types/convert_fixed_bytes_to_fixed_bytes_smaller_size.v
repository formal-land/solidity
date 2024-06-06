(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  Definition bytesToBytes (α : list Value.t) : M :=
    match α with
    | [input] =>
      let _ :=
        M.return_ (|
          M.call (|
            Ty.path "bytes2",
            [
              M.get_name (| "input" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
