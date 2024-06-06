(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [input] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.get_name (| "keccak256" |),
            [
              M.call (|
                M.member_access (|
                  M.get_name (| "abi" |),
                  "encodePacked"
                |),
                [
                  M.call (|
                    Ty.path "bytes32",
                    [
                      M.call (|
                        Ty.path "uint256",
                        [
                          M.get_name (| "input" |)
                        ]
                      |)
                    ]
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
