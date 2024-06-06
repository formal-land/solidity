(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.define (|
          [ "b" ],
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          Value.Integer 42
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "x" |),
            M.get_name (| "b" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
