(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module Voting_47.
  Definition code : M.t unit := ltac:(M.monadic (
    let _ :=
      let _ :=
        M.call (|
          "mstore",
          [
            [Literal.number 64];
            M.call (|
              "memoryguard",
              [
                [Literal.number 0x80]
              ]
            |)
          ]
        |) in
      let _ :=
        M.if_ (|
          M.call (|
            "callvalue",
            [

            ]
          |),
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                [

                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.call (|
          "constructor_Voting",
          [

          ]
        |) in
      let _ :=
        M.assign (|
          ["_1"],
          M.call (|
            "allocate_unbounded",
            [

            ]
          |)
        |) in
      let _ :=
        M.call (|
          "codecopy",
          [
            M.get (| "_1" |);
            M.call (|
              "dataoffset",
              [
                [Literal.string "566f74696e675f34375f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "566f74696e675f34375f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          "return",
          [
            M.get (| "_1" |);
            M.call (|
              "datasize",
              [
                [Literal.string "566f74696e675f34375f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      tt in
    let _ :=
      M.function (|
        "allocate_unbounded",
        [],
        ["memPtr"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["memPtr"],
              M.call (|
                "mload",
                [
                  [Literal.number 64]
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0]
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "cleanup_rational_by",
        ["value"],
        ["cleaned"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["cleaned"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "cleanup_uint256",
        ["value"],
        ["cleaned"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["cleaned"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "identity",
        ["value"],
        ["ret"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["ret"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "convert_rational_by_to_uint256",
        ["value"],
        ["converted"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["converted"],
              M.call (|
                "cleanup_uint256",
                [
                  M.call (|
                    "identity",
                    [
                      M.call (|
                        "cleanup_rational_by",
                        [
                          M.get (| "value" |)
                        ]
                      |)
                    ]
                  |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "constructor_Voting",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["expr"],
              [Literal.number 0x01]
            |) in
          let _ :=
            M.assign (|
              ["_1"],
              M.call (|
                "convert_rational_by_to_uint256",
                [
                  M.get (| "expr" |)
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "fun_init",
              [
                M.get (| "_1" |)
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "array_storeLengthForEncoding_string",
        ["pos"; "length"],
        ["updated_pos"],
        ltac:(M.monadic (
          let _ :=
            M.call (|
              "mstore",
              [
                M.get (| "pos" |);
                M.get (| "length" |)
              ]
            |) in
          let _ :=
            M.declare (|
              ["updated_pos"],
              M.call (|
                "add",
                [
                  M.get (| "pos" |);
                  [Literal.number 0x20]
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "abi_encode_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470",
        ["pos"],
        ["end"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["pos"],
              M.call (|
                "array_storeLengthForEncoding_string",
                [
                  M.get (| "pos" |);
                  [Literal.number 0]
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["end"],
              M.call (|
                "add",
                [
                  M.get (| "pos" |);
                  [Literal.number 0]
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "abi_encode_stringliteral_c5d2",
        ["headStart"],
        ["tail"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["tail"],
              M.call (|
                "add",
                [
                  M.get (| "headStart" |);
                  [Literal.number 32]
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 0]
                  ]
                |);
                M.call (|
                  "sub",
                  [
                    M.get (| "tail" |);
                    M.get (| "headStart" |)
                  ]
                |)
              ]
            |) in
          let _ :=
            M.declare (|
              ["tail"],
              M.call (|
                "abi_encode_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470",
                [
                  M.get (| "tail" |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "require_helper_stringliteral_c5d2",
        ["condition"],
        [],
        ltac:(M.monadic (
          let _ :=
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.get (| "condition" |)
                ]
              |),
              ltac:(M.monadic (
                let _ :=
                  M.assign (|
                    ["memPtr"],
                    M.call (|
                      "allocate_unbounded",
                      [

                      ]
                    |)
                  |) in
                let _ :=
                  M.call (|
                    "mstore",
                    [
                      M.get (| "memPtr" |);
                      M.call (|
                        "shl",
                        [
                          [Literal.number 229];
                          [Literal.number 4594637]
                        ]
                      |)
                    ]
                  |) in
                let _ :=
                  M.assign (|
                    ["end"],
                    M.call (|
                      "abi_encode_stringliteral_c5d2",
                      [
                        M.call (|
                          "add",
                          [
                            M.get (| "memPtr" |);
                            [Literal.number 4]
                          ]
                        |)
                      ]
                    |)
                  |) in
                let _ :=
                  M.call (|
                    "revert",
                    [
                      M.get (| "memPtr" |);
                      M.call (|
                        "sub",
                        [
                          M.get (| "end" |);
                          M.get (| "memPtr" |)
                        ]
                      |)
                    ]
                  |) in
                tt
              ))
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "fun_init",
        ["var_phaseLength"],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["expr"],
              [Literal.number 0x01]
            |) in
          let _ :=
            M.call (|
              "require_helper_stringliteral_c5d2",
              [
                M.get (| "expr" |)
              ]
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module Voting_47_deployed.
    Definition code : M.t unit := ltac:(M.monadic (
      let _ :=
        let _ :=
          M.call (|
            "mstore",
            [
              [Literal.number 64];
              M.call (|
                "memoryguard",
                [
                  [Literal.number 0x80]
                ]
              |)
            ]
          |) in
        let _ :=
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.call (|
                  "lt",
                  [
                    M.call (|
                      "calldatasize",
                      [

                      ]
                    |);
                    [Literal.number 4]
                  ]
                |)
              ]
            |),
            ltac:(M.monadic (
              let _ :=
                M.assign (|
                  ["selector"],
                  M.call (|
                    "shift_right_unsigned",
                    [
                      M.call (|
                        "calldataload",
                        [
                          [Literal.number 0]
                        ]
                      |)
                    ]
                  |)
                |) in
              let _ :=
                M.switch (|
                  M.get (| "selector" |),
                  [
                    (
                      Some (Literal.number 0x715018a6),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_renounceOwnership",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      None,
                      ltac:(M.monadic (
                        tt
                      ))              )            ]
                |) in
              tt
            ))
          |) in
        let _ :=
          M.call (|
            "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
            [

            ]
          |) in
        tt in
      let _ :=
        M.function (|
          "shift_right_unsigned",
          ["value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shr",
                  [
                    [Literal.number 224];
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_unbounded",
          [],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "mload",
                  [
                    [Literal.number 64]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode",
          ["headStart"; "dataEnd"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "slt",
                  [
                    M.call (|
                      "sub",
                      [
                        M.get (| "dataEnd" |);
                        M.get (| "headStart" |)
                      ]
                    |);
                    [Literal.number 0]
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_tuple",
          ["headStart"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_renounceOwnership",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "callvalue",
                  [

                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.call (|
                "abi_decode",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.call (|
                "fun_renounceOwnership",
                [

                ]
              |) in
            let _ :=
              M.assign (|
                ["memPos"],
                M.call (|
                  "allocate_unbounded",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["memEnd"],
                M.call (|
                  "abi_encode_tuple",
                  [
                    M.get (| "memPos" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "return",
                [
                  M.get (| "memPos" |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "memEnd" |);
                      M.get (| "memPos" |)
                    ]
                  |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "shift_right_0_unsigned",
          ["value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shr",
                  [
                    [Literal.number 0];
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_from_storage_address",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.call (|
                  "and",
                  [
                    M.get (| "value" |);
                    M.call (|
                      "sub",
                      [
                        M.call (|
                          "shl",
                          [
                            [Literal.number 160];
                            [Literal.number 1]
                          ]
                        |);
                        [Literal.number 1]
                      ]
                    |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "extract_from_storage_value_offsett_address",
          ["slot_value"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["value"],
                M.call (|
                  "cleanup_from_storage_address",
                  [
                    M.call (|
                      "shift_right_0_unsigned",
                      [
                        M.get (| "slot_value" |)
                      ]
                    |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "read_from_storage_split_offset_address",
          ["slot"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["value"],
                M.call (|
                  "extract_from_storage_value_offsett_address",
                  [
                    M.call (|
                      "sload",
                      [
                        M.get (| "slot" |)
                      ]
                    |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_uint160",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.call (|
                  "and",
                  [
                    M.get (| "value" |);
                    M.call (|
                      "sub",
                      [
                        M.call (|
                          "shl",
                          [
                            [Literal.number 160];
                            [Literal.number 1]
                          ]
                        |);
                        [Literal.number 1]
                      ]
                    |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_address",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.call (|
                  "cleanup_uint160",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_storeLengthForEncoding_string",
          ["pos"; "length"],
          ["updated_pos"],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.get (| "length" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["updated_pos"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "store_literal_in_memory_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe",
          ["memPtr"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 0]
                    ]
                  |);
                  [Literal.string "4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572"]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_stringliteral_9924",
          ["pos"],
          ["end"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["pos"],
                M.call (|
                  "array_storeLengthForEncoding_string",
                  [
                    M.get (| "pos" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "store_literal_in_memory_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe",
                [
                  M.get (| "pos" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["end"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_stringliteral",
          ["headStart"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 0]
                    ]
                  |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "tail" |);
                      M.get (| "headStart" |)
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "abi_encode_stringliteral_9924",
                  [
                    M.get (| "tail" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "require_helper_stringliteral",
          ["condition"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.get (| "condition" |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.assign (|
                      ["memPtr"],
                      M.call (|
                        "allocate_unbounded",
                        [

                        ]
                      |)
                    |) in
                  let _ :=
                    M.call (|
                      "mstore",
                      [
                        M.get (| "memPtr" |);
                        M.call (|
                          "shl",
                          [
                            [Literal.number 229];
                            [Literal.number 4594637]
                          ]
                        |)
                      ]
                    |) in
                  let _ :=
                    M.assign (|
                      ["end"],
                      M.call (|
                        "abi_encode_stringliteral",
                        [
                          M.call (|
                            "add",
                            [
                              M.get (| "memPtr" |);
                              [Literal.number 4]
                            ]
                          |)
                        ]
                      |)
                    |) in
                  let _ :=
                    M.call (|
                      "revert",
                      [
                        M.get (| "memPtr" |);
                        M.call (|
                          "sub",
                          [
                            M.get (| "end" |);
                            M.get (| "memPtr" |)
                          ]
                        |)
                      ]
                    |) in
                  tt
                ))
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "modifier_onlyOwner",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["expr"],
                M.call (|
                  "caller",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.call (|
                  "read_from_storage_split_offset_address",
                  [
                    [Literal.number 0x00]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.get (| "_1" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "eq",
                  [
                    M.call (|
                      "cleanup_address",
                      [
                        M.get (| "expr" |)
                      ]
                    |);
                    M.call (|
                      "cleanup_address",
                      [
                        M.get (| "expr_1" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "require_helper_stringliteral",
                [
                  M.get (| "expr_2" |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_renounceOwnership",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "modifier_onlyOwner",
                [

                ]
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a26469706673582212202e9871ddc6c5a37c5da1d64b3feaa18f84328f6458cc249ddcfc2774d2d8b2c764736f6c634300081b0033".
  End Voting_47_deployed.
End Voting_47.
