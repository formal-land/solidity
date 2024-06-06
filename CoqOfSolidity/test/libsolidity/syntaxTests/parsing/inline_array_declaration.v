(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
  Definition a : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          Value.Array [
            Value.Integer 1,
            Value.Integer 2,
            Value.Integer 3
          ]
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 3)
            |),
            M.index_access (|
              Value.Array [
                Value.Integer 2,
                Value.Integer 3,
                Value.Integer 4
              ],
              Some (Value.Integer 0)
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
