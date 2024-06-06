(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "flag" ],
          Value.Default
        |) in
      let _ :=
        Value.Tuple [
          Conditional Value.Tuple [
            M.assign (|
              "=",
              M.get_name (| "flag" |),
              Value.Bool true
            |)
          ] Value.Tuple [
            Value.Integer 1,
            Value.Integer 2,
            Value.Integer 3
          ] Value.Tuple [
            Value.Integer 3,
            Value.Integer 2,
            Value.Integer 1
          ]

        ] in
      let _ :=
        M.return_ (|
          M.get_name (| "flag" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
