(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module Reverts_11.
  Definition code : M.t BlockUnit.t :=
    do* M.open_scope in
    do* ltac:(M.monadic (
      M.function (|
        "allocate_unbounded",
        [],
        ["memPtr"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["memPtr"],
            Some (M.call (|
              "mload",
              [
                [Literal.number 64]
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
        [],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0]
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "round_up_to_mul_of",
        ["value"],
        ["result"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["result"],
            Some (M.call (|
              "and",
              [
                M.call (|
                  "add",
                  [
                    M.get_var (| "value" |);
                    [Literal.number 31]
                  ]
                |);
                M.call (|
                  "not",
                  [
                    [Literal.number 31]
                  ]
                |)
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "panic_error_0x41",
        [],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 0];
                M.call (|
                  "shl",
                  [
                    [Literal.number 224];
                    [Literal.number 0x4e487b71]
                  ]
                |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 4];
                [Literal.number 0x41]
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0x24]
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "finalize_allocation",
        ["memPtr"; "size"],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["newFreePtr"],
            Some (M.call (|
              "add",
              [
                M.get_var (| "memPtr" |);
                M.call (|
                  "round_up_to_mul_of",
                  [
                    M.get_var (| "size" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.if_ (|
            M.call (|
              "or",
              [
                M.call (|
                  "gt",
                  [
                    M.get_var (| "newFreePtr" |);
                    M.call (|
                      "sub",
                      [
                        M.call (|
                          "shl",
                          [
                            [Literal.number 64];
                            [Literal.number 1]
                          ]
                        |);
                        [Literal.number 1]
                      ]
                    |)
                  ]
                |);
                M.call (|
                  "lt",
                  [
                    M.get_var (| "newFreePtr" |);
                    M.get_var (| "memPtr" |)
                  ]
                |)
              ]
            |),
            do* M.open_scope in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "panic_error_0x41",
                  []
                |)
              |)
            )) in
            M.close_scope
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 64];
                M.get_var (| "newFreePtr" |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "allocate_memory",
        ["size"],
        ["memPtr"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["memPtr"],
            Some (M.call (|
              "allocate_unbounded",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "finalize_allocation",
              [
                M.get_var (| "memPtr" |);
                M.get_var (| "size" |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
        [],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0]
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_uint256",
        ["value"],
        ["cleaned"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["cleaned"],
            Some (M.get_var (| "value" |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "validator_revert_uint256",
        ["value"],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.call (|
                  "eq",
                  [
                    M.get_var (| "value" |);
                    M.call (|
                      "cleanup_uint256",
                      [
                        M.get_var (| "value" |)
                      ]
                    |)
                  ]
                |)
              ]
            |),
            do* M.open_scope in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "revert",
                  [
                    [Literal.number 0];
                    [Literal.number 0]
                  ]
                |)
              |)
            )) in
            M.close_scope
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_decode_t_uint256_fromMemory",
        ["offset"; "end"],
        ["value"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["value"],
            Some (M.call (|
              "mload",
              [
                M.get_var (| "offset" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "validator_revert_uint256",
              [
                M.get_var (| "value" |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_decode_uint256_fromMemory",
        ["headStart"; "dataEnd"],
        ["value0"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.if_ (|
            M.call (|
              "slt",
              [
                M.call (|
                  "sub",
                  [
                    M.get_var (| "dataEnd" |);
                    M.get_var (| "headStart" |)
                  ]
                |);
                [Literal.number 32]
              ]
            |),
            do* M.open_scope in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                  []
                |)
              |)
            )) in
            M.close_scope
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["offset"],
            Some ([Literal.number 0])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["value0"],
            Some (M.call (|
              "abi_decode_t_uint256_fromMemory",
              [
                M.call (|
                  "add",
                  [
                    M.get_var (| "headStart" |);
                    M.get_var (| "offset" |)
                  ]
                |);
                M.get_var (| "dataEnd" |)
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "copy_arguments_for_constructor_object_Reverts",
        [],
        ["ret_param"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["programSize"],
            Some (M.call (|
              "datasize",
              [
                [Literal.string "526576657274735f3131"]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["argSize"],
            Some (M.call (|
              "sub",
              [
                M.call (|
                  "codesize",
                  []
                |);
                M.get_var (| "programSize" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["memoryDataOffset"],
            Some (M.call (|
              "allocate_memory",
              [
                M.get_var (| "argSize" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "codecopy",
              [
                M.get_var (| "memoryDataOffset" |);
                M.get_var (| "programSize" |);
                M.get_var (| "argSize" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["ret_param"],
            Some (M.call (|
              "abi_decode_uint256_fromMemory",
              [
                M.get_var (| "memoryDataOffset" |);
                M.call (|
                  "add",
                  [
                    M.get_var (| "memoryDataOffset" |);
                    M.get_var (| "argSize" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "array_storeLengthForEncoding_string",
        ["pos"; "length"],
        ["updated_pos"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.get_var (| "pos" |);
                M.get_var (| "length" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["updated_pos"],
            Some (M.call (|
              "add",
              [
                M.get_var (| "pos" |);
                [Literal.number 0x20]
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "store_literal_in_memory_96ae6d0f1de8e9d482dbc193da1fb5d10539532ad83b695a9a1067937018ce81",
        ["memPtr"],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.call (|
                  "add",
                  [
                    M.get_var (| "memPtr" |);
                    [Literal.number 0]
                  ]
                |);
                [Literal.string "74657374206d6573736167652e"]
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_encode_stringliteral_96ae6d0f1de8e9d482dbc193da1fb5d10539532ad83b695a9a1067937018ce81",
        ["pos"],
        ["end"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["pos"],
            Some (M.call (|
              "array_storeLengthForEncoding_string",
              [
                M.get_var (| "pos" |);
                [Literal.number 13]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "store_literal_in_memory_96ae6d0f1de8e9d482dbc193da1fb5d10539532ad83b695a9a1067937018ce81",
              [
                M.get_var (| "pos" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["end"],
            Some (M.call (|
              "add",
              [
                M.get_var (| "pos" |);
                [Literal.number 32]
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_encode_stringliteral_96ae",
        ["headStart"],
        ["tail"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["tail"],
            Some (M.call (|
              "add",
              [
                M.get_var (| "headStart" |);
                [Literal.number 32]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.call (|
                  "add",
                  [
                    M.get_var (| "headStart" |);
                    [Literal.number 0]
                  ]
                |);
                M.call (|
                  "sub",
                  [
                    M.get_var (| "tail" |);
                    M.get_var (| "headStart" |)
                  ]
                |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["tail"],
            Some (M.call (|
              "abi_encode_stringliteral_96ae6d0f1de8e9d482dbc193da1fb5d10539532ad83b695a9a1067937018ce81",
              [
                M.get_var (| "tail" |)
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_Reverts",
        ["var"],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["_1"],
            Some (M.call (|
              "allocate_unbounded",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.get_var (| "_1" |);
                M.call (|
                  "shl",
                  [
                    [Literal.number 229];
                    [Literal.number 4594637]
                  ]
                |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["_2"],
            Some (M.call (|
              "abi_encode_stringliteral_96ae",
              [
                M.call (|
                  "add",
                  [
                    M.get_var (| "_1" |);
                    [Literal.number 4]
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "revert",
              [
                M.get_var (| "_1" |);
                M.call (|
                  "sub",
                  [
                    M.get_var (| "_2" |);
                    M.get_var (| "_1" |)
                  ]
                |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      do* M.open_scope in
      do* ltac:(M.monadic (
        M.expr_stmt (|
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
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.if_ (|
          M.call (|
            "callvalue",
            []
          |),
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                []
              |)
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.declare (|
          ["_1"],
          Some (M.call (|
            "copy_arguments_for_constructor_object_Reverts",
            []
          |))
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "constructor_Reverts",
            [
              M.get_var (| "_1" |)
            ]
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.declare (|
          ["_2"],
          Some (M.call (|
            "allocate_unbounded",
            []
          |))
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "codecopy",
            [
              M.get_var (| "_2" |);
              M.call (|
                "dataoffset",
                [
                  [Literal.string "526576657274735f31315f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "526576657274735f31315f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "return",
            [
              M.get_var (| "_2" |);
              M.call (|
                "datasize",
                [
                  [Literal.string "526576657274735f31315f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.close_scope
    )) in
    M.close_scope.

  Module Reverts_11_deployed.
    Definition code : M.t BlockUnit.t :=
      do* M.open_scope in
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
          [],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |)
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.expr_stmt (|
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
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
              []
            |)
          |)
        )) in
        M.close_scope
      )) in
      M.close_scope.

    Definition data : string :=
      "a2646970667358221220b91df47256b38fc00ee8460040b8277b733ec5232cd324a83c683676aa4713f464736f6c634300081b0033".
  End Reverts_11_deployed.
End Reverts_11.
