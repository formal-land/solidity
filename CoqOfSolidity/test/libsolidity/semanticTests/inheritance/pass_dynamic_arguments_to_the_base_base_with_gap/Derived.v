(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module Derived_39.
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
        "copy_arguments_for_constructor_object_Derived",
        [],
        ["ret_param"],
        do* ltac:(M.monadic (
          M.assign (|
            ["programSize"],
            Some (M.call (|
              "datasize",
              [
                [Literal.string "446572697665645f3339"]
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
      M.function (|
        "cleanup_rational_by",
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
        "identity",
        ["value"],
        ["ret"],
        do* ltac:(M.monadic (
          M.assign (|
            ["ret"],
            Some (M.get (| "value" |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "convert_rational_by_to_uint256",
        ["value"],
        ["converted"],
        do* ltac:(M.monadic (
          M.assign (|
            ["converted"],
            Some (M.call (|
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
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_Derived",
        ["var_i"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some ([Literal.number 0x07])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some (M.call (|
              "convert_rational_by_to_uint256",
              [
                M.get (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2"],
            Some (M.get (| "var_i" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_1"],
            Some (M.get (| "_2" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.get (| "expr_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "constructor_Base1",
              [
                M.get (| "_1" |);
                M.get (| "_3" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_Base1",
        ["var_k"; "_1"],
        [],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "constructor_Base",
              [
                M.get (| "_1" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "shift_left",
        ["value"],
        ["newValue"],
        do* ltac:(M.monadic (
          M.assign (|
            ["newValue"],
            Some (M.call (|
              "shl",
              [
                [Literal.number 0];
                M.get (| "value" |)
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "update_byte_slice_shift",
        ["value"; "toInsert"],
        ["result"],
        do* ltac:(M.monadic (
          M.assign (|
            ["mask"],
            Some (M.call (|
              "not",
              [
                [Literal.number 0]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["toInsert"],
            Some (M.call (|
              "shift_left",
              [
                M.get (| "toInsert" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["value"],
            Some (M.call (|
              "and",
              [
                M.get (| "value" |);
                M.call (|
                  "not",
                  [
                    M.get (| "mask" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["result"],
            Some (M.call (|
              "or",
              [
                M.get (| "value" |);
                M.call (|
                  "and",
                  [
                    M.get (| "toInsert" |);
                    M.get (| "mask" |)
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
        "convert_uint256_to_uint256",
        ["value"],
        ["converted"],
        do* ltac:(M.monadic (
          M.assign (|
            ["converted"],
            Some (M.call (|
              "cleanup_uint256",
              [
                M.call (|
                  "identity",
                  [
                    M.call (|
                      "cleanup_uint256",
                      [
                        M.get (| "value" |)
                      ]
                    |)
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
        "prepare_store_uint256",
        ["value"],
        ["ret"],
        do* ltac:(M.monadic (
          M.assign (|
            ["ret"],
            Some (M.get (| "value" |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "update_storage_value_offsett_uint256_to_uint256",
        ["slot"; "value"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["convertedValue"],
            Some (M.call (|
              "convert_uint256_to_uint256",
              [
                M.get (| "value" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "sstore",
              [
                M.get (| "slot" |);
                M.call (|
                  "update_byte_slice_shift",
                  [
                    M.call (|
                      "sload",
                      [
                        M.get (| "slot" |)
                      ]
                    |);
                    M.call (|
                      "prepare_store_uint256",
                      [
                        M.get (| "convertedValue" |)
                      ]
                    |)
                  ]
                |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_Base",
        ["var_i"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some (M.get (| "var_i" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some (M.get (| "_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "update_storage_value_offsett_uint256_to_uint256",
              [
                [Literal.number 0x00];
                M.get (| "expr" |)
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
        M.assign (|
          ["_1"],
          Some (M.call (|
            "copy_arguments_for_constructor_object_Derived",
            []
          |))
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "constructor_Derived",
            [
              M.get (| "_1" |)
            ]
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.assign (|
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
              M.get (| "_2" |);
              M.call (|
                "dataoffset",
                [
                  [Literal.string "446572697665645f33395f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "446572697665645f33395f6465706c6f796564"]
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
              M.get (| "_2" |);
              M.call (|
                "datasize",
                [
                  [Literal.string "446572697665645f33395f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module Derived_39_deployed.
    Definition code : M.t BlockUnit.t :=
      do* ltac:(M.monadic (
        M.function (|
          "shift_right_unsigned",
          ["value"],
          ["newValue"],
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
                [
                  [Literal.number 224];
                  M.get (| "value" |)
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
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
          "abi_decode",
          ["headStart"; "dataEnd"],
          [],
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
                  [Literal.number 0]
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
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "shift_right_unsigned_dynamic",
          ["bits"; "value"],
          ["newValue"],
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
                [
                  M.get (| "bits" |);
                  M.get (| "value" |)
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "cleanup_from_storage_uint256",
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
          "extract_from_storage_value_dynamict_uint256",
          ["slot_value"; "offset"],
          ["value"],
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "cleanup_from_storage_uint256",
                [
                  M.call (|
                    "shift_right_unsigned_dynamic",
                    [
                      M.call (|
                        "mul",
                        [
                          M.get (| "offset" |);
                          [Literal.number 8]
                        ]
                      |);
                      M.get (| "slot_value" |)
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
          "read_from_storage_split_dynamic_uint256",
          ["slot"; "offset"],
          ["value"],
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "extract_from_storage_value_dynamict_uint256",
                [
                  M.call (|
                    "sload",
                    [
                      M.get (| "slot" |)
                    ]
                  |);
                  M.get (| "offset" |)
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "getter_fun_m_i",
          [],
          ["ret"],
          do* ltac:(M.monadic (
            M.assign (|
              ["slot"],
              Some ([Literal.number 0])
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
              ["ret"],
              Some (M.call (|
                "read_from_storage_split_dynamic_uint256",
                [
                  M.get (| "slot" |);
                  M.get (| "offset" |)
                ]
              |))
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
          "abi_encode_uint256_to_uint256",
          ["value"; "pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_uint256",
                    [
                      M.get (| "value" |)
                    ]
                  |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_uint256",
          ["headStart"; "value0"],
          ["tail"],
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "add",
                [
                  M.get (| "headStart" |);
                  [Literal.number 32]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256_to_uint256",
                [
                  M.get (| "value0" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 0]
                    ]
                  |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "external_fun_m_i",
          [],
          [],
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
                "abi_decode",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    []
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["ret"],
              Some (M.call (|
                "getter_fun_m_i",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["memPos"],
              Some (M.call (|
                "allocate_unbounded",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["memEnd"],
              Some (M.call (|
                "abi_encode_uint256",
                [
                  M.get (| "memPos" |);
                  M.get (| "ret" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
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
              |)
            |)
          )) in
          M.od
        |)
      )) in
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
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.call (|
                  "lt",
                  [
                    M.call (|
                      "calldatasize",
                      []
                    |);
                    [Literal.number 4]
                  ]
                |)
              ]
            |),
            do* ltac:(M.monadic (
              M.assign (|
                ["selector"],
                Some (M.call (|
                  "shift_right_unsigned",
                  [
                    M.call (|
                      "calldataload",
                      [
                        [Literal.number 0]
                      ]
                    |)
                  ]
                |))
              |)
            )) in
            do* ltac:(M.monadic (
              M.switch (|
                M.get (| "selector" |),
                [
                  (
                    Some (Literal.number 0x72a7b800),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_m_i",
                          []
                        |)
                      |)
                    )) in
                    M.od
                  );
                  (
                    None,
                    M.od
                  )          ]
              |)
            )) in
            M.od
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
      "a2646970667358221220afc3bf76ed7d1da3fee56f307d0dde51f1544b3c1acda88b51a2d0388f3d983b64736f6c634300081b0033".
  End Derived_39_deployed.
End Derived_39.
