(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "a" ],
          Value.Array [
            M.call (|
              Ty.path "fixed",
              [
                Value.Integer 3.5
              ]
            |),
            M.call (|
              Ty.path "fixed",
              [
                M.un_op (|
                  true,
                  "-",
                  Value.Integer 4.25
                |)
              ]
            |),
            M.call (|
              Ty.path "fixed",
              [
                Value.Integer 967.125
              ]
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
