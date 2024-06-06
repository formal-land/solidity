(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encode"
            |),
            [
              Value.Integer 1,
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encodePacked"
            |),
            [
              M.call (|
                M.get_name (| "f" |),
                []
              |)
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encodeWithSelector"
            |),
            [
              Value.Integer 0x12345678,
              Value.Integer 1
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encodeWithSignature"
            |),
            [
              Value.String "f(uint256)",
              Value.Integer 4
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
