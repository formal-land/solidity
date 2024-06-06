(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "b" ],
          Value.Default
        |) in
      let _ :=
        M.define (|
          [ "c" ],
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.get_name (| "b" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
