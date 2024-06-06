(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "p" ],
          M.call (|
            Ty.path "address",
            [
              M.member_access (|
                M.get_name (| "msg" |),
                "sender"
              |)
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "q" ],
          M.call (|
            Ty.path "address",
            [
              M.call (|
                Ty.path "address",
                [
                  M.member_access (|
                    M.get_name (| "msg" |),
                    "sender"
                  |)
                ]
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
