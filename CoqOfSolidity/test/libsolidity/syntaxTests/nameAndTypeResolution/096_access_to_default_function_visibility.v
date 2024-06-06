(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.

(* Contract *)
Module d.
  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.call (|
              M.get_name (| "c" |),
              [
                M.call (|
                  Ty.path "address",
                  [
                    Value.Integer 0
                  ]
                |)
              ]
            |),
            "f"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End d.
