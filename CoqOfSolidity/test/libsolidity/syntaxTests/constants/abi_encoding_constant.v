(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition a : Value.t :=
    M.call (|
      M.get_name (| "keccak256" |),
      [
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
      ]
    |).

  Definition b : Value.t :=
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
              Ty.path "uint",
              [
                Value.Integer 1
              ]
            |),
            M.get_name (| "a" |)
          ]
        |)
      ]
    |).

  Definition c : Value.t :=
    M.call (|
      M.get_name (| "keccak256" |),
      [
        M.call (|
          M.member_access (|
            M.get_name (| "abi" |),
            "encodeWithSelector"
          |),
          [
            Value.Integer 0x12345678,
            M.get_name (| "b" |),
            Value.Integer 2
          ]
        |)
      ]
    |).

  Definition d : Value.t :=
    M.call (|
      M.get_name (| "keccak256" |),
      [
        M.call (|
          M.member_access (|
            M.get_name (| "abi" |),
            "encodeWithSignature"
          |),
          [
            Value.String "f()",
            Value.Integer 1,
            Value.Integer 2
          ]
        |)
      ]
    |).
End C.
