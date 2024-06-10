(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module A_7.
  Definition code : M.t BlockUnit.t :=
    do* ltac:(M.monadic (
      M.function (|
        "allocate_unbounded",
        [],
        ["memPtr"],
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
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
        [],
        [],
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
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "round_up_to_mul_of",
        ["value"],
        ["result"],
        do* ltac:(M.monadic (
          M.assign (|
            ["result"],
            Some (M.call (|
              "and",
              [
                M.call (|
                  "add",
                  [
                    M.get (| "value" |);
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
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "panic_error_0x41",
        [],
        [],
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
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "finalize_allocation",
        ["memPtr"; "size"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["newFreePtr"],
            Some (M.call (|
              "add",
              [
                M.get (| "memPtr" |);
                M.call (|
                  "round_up_to_mul_of",
                  [
                    M.get (| "size" |)
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
                    M.get (| "newFreePtr" |);
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
                    M.get (| "newFreePtr" |);
                    M.get (| "memPtr" |)
                  ]
                |)
              ]
            |),
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "panic_error_0x41",
                  []
                |)
              |)
            )) in
            M.od
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 64];
                M.get (| "newFreePtr" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "allocate_memory",
        ["size"],
        ["memPtr"],
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
                M.get (| "memPtr" |);
                M.get (| "size" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
        [],
        [],
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
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_uint256",
        ["value"],
        ["cleaned"],
        do* ltac:(M.monadic (
          M.assign (|
            ["cleaned"],
            Some (M.get (| "value" |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "validator_revert_uint256",
        ["value"],
        [],
        do* ltac:(M.monadic (
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.call (|
                  "eq",
                  [
                    M.get (| "value" |);
                    M.call (|
                      "cleanup_uint256",
                      [
                        M.get (| "value" |)
                      ]
                    |)
                  ]
                |)
              ]
            |),
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
            M.od
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_decode_t_uint256_fromMemory",
        ["offset"; "end"],
        ["value"],
        do* ltac:(M.monadic (
          M.assign (|
            ["value"],
            Some (M.call (|
              "mload",
              [
                M.get (| "offset" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "validator_revert_uint256",
              [
                M.get (| "value" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_decode_uint256_fromMemory",
        ["headStart"; "dataEnd"],
        ["value0"],
        do* ltac:(M.monadic (
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
                [Literal.number 32]
              ]
            |),
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                  []
                |)
              |)
            )) in
            M.od
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
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
                    M.get (| "headStart" |);
                    M.get (| "offset" |)
                  ]
                |);
                M.get (| "dataEnd" |)
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "copy_arguments_for_constructor_object_A",
        [],
        ["ret_param"],
        do* ltac:(M.monadic (
          M.assign (|
            ["programSize"],
            Some (M.call (|
              "datasize",
              [
                [Literal.string "415f37"]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["argSize"],
            Some (M.call (|
              "sub",
              [
                M.call (|
                  "codesize",
                  []
                |);
                M.get (| "programSize" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["memoryDataOffset"],
            Some (M.call (|
              "allocate_memory",
              [
                M.get (| "argSize" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "codecopy",
              [
                M.get (| "memoryDataOffset" |);
                M.get (| "programSize" |);
                M.get (| "argSize" |)
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
                M.get (| "memoryDataOffset" |);
                M.call (|
                  "add",
                  [
                    M.get (| "memoryDataOffset" |);
                    M.get (| "argSize" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
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
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                []
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "pop",
            [
              M.call (|
                "copy_arguments_for_constructor_object_A",
                []
              |)
            ]
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.assign (|
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
            "codecopy",
            [
              M.get (| "_1" |);
              M.call (|
                "dataoffset",
                [
                  [Literal.string "415f375f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "415f375f6465706c6f796564"]
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
              M.get (| "_1" |);
              M.call (|
                "datasize",
                [
                  [Literal.string "415f375f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module A_7_deployed.
    Definition code : M.t BlockUnit.t :=
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
          [],
          [],
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
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
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
        M.od
      )) in
      M.od.

    Definition data : string :=
      "a2646970667358221220f603152b67c643c6eb6345d75f37a1a032d0830508da3ccdcf14fd9f3169c17f64736f6c634300081b0033".
  End A_7_deployed.
End A_7.
