(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_38.
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
        "constructor_C",
        [],
        [],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "fun_f",
              []
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
        "allocate_memory_struct_struct_S",
        [],
        ["memPtr"],
        do* ltac:(M.monadic (
          M.assign (|
            ["memPtr"],
            Some (M.call (|
              "allocate_memory",
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
        "zero_value_for_uint8",
        [],
        ["ret"],
        do* ltac:(M.monadic (
          M.assign (|
            ["ret"],
            Some ([Literal.number 0])
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "zero_value_for_int16",
        [],
        ["ret"],
        do* ltac:(M.monadic (
          M.assign (|
            ["ret"],
            Some ([Literal.number 0])
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "allocate_and_zero_memory_struct_struct_S",
        [],
        ["memPtr"],
        do* ltac:(M.monadic (
          M.assign (|
            ["memPtr"],
            Some (M.call (|
              "allocate_memory_struct_struct_S",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["offset"],
            Some (M.get (| "memPtr" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.get (| "offset" |);
                M.call (|
                  "zero_value_for_uint8",
                  []
                |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["offset"],
            Some (M.call (|
              "add",
              [
                M.get (| "offset" |);
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
                M.get (| "offset" |);
                M.call (|
                  "zero_value_for_int16",
                  []
                |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["offset"],
            Some (M.call (|
              "add",
              [
                M.get (| "offset" |);
                [Literal.number 32]
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "zero_value_for_split_struct_S",
        [],
        ["ret"],
        do* ltac:(M.monadic (
          M.assign (|
            ["ret"],
            Some (M.call (|
              "allocate_and_zero_memory_struct_struct_S",
              []
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_uint8",
        ["value"],
        ["cleaned"],
        do* ltac:(M.monadic (
          M.assign (|
            ["cleaned"],
            Some (M.call (|
              "and",
              [
                M.get (| "value" |);
                [Literal.number 0xff]
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_encode_uint8",
        ["value"; "pos"],
        [],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.get (| "pos" |);
                M.call (|
                  "cleanup_uint8",
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
        "abi_encodeUpdatedPos_uint8",
        ["value0"; "pos"],
        ["updatedPos"],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "abi_encode_uint8",
              [
                M.get (| "value0" |);
                M.get (| "pos" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["updatedPos"],
            Some (M.call (|
              "add",
              [
                M.get (| "pos" |);
                [Literal.number 0x20]
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_int16",
        ["value"],
        ["cleaned"],
        do* ltac:(M.monadic (
          M.assign (|
            ["cleaned"],
            Some (M.call (|
              "signextend",
              [
                [Literal.number 1];
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
        "abi_encode_int16",
        ["value"; "pos"],
        [],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.get (| "pos" |);
                M.call (|
                  "cleanup_int16",
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
        "abi_encodeUpdatedPos_int16",
        ["value0"; "pos"],
        ["updatedPos"],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "abi_encode_int16",
              [
                M.get (| "value0" |);
                M.get (| "pos" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["updatedPos"],
            Some (M.call (|
              "add",
              [
                M.get (| "pos" |);
                [Literal.number 0x20]
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_encode_struct_S",
        ["value"; "pos"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["memberValue0"],
            Some (M.call (|
              "mload",
              [
                M.call (|
                  "add",
                  [
                    M.get (| "value" |);
                    [Literal.number 0x00]
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["pos"],
            Some (M.call (|
              "abi_encodeUpdatedPos_uint8",
              [
                M.get (| "memberValue0" |);
                M.get (| "pos" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["memberValue0_1"],
            Some (M.call (|
              "mload",
              [
                M.call (|
                  "add",
                  [
                    M.get (| "value" |);
                    [Literal.number 0x20]
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["pos"],
            Some (M.call (|
              "abi_encodeUpdatedPos_int16",
              [
                M.get (| "memberValue0_1" |);
                M.get (| "pos" |)
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "abi_encode_packed_struct_S",
        ["pos"; "value0"],
        ["end"],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "abi_encode_struct_S",
              [
                M.get (| "value0" |);
                M.get (| "pos" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["pos"],
            Some (M.call (|
              "add",
              [
                M.get (| "pos" |);
                [Literal.number 64]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["end"],
            Some (M.get (| "pos" |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "packed_hashed_struct_S_to_struct_S",
        ["var"],
        ["hash"],
        do* ltac:(M.monadic (
          M.assign (|
            ["pos"],
            Some (M.call (|
              "allocate_unbounded",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["end"],
            Some (M.call (|
              "abi_encode_packed_struct_S",
              [
                M.get (| "pos" |);
                M.get (| "var" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["hash"],
            Some (M.call (|
              "keccak256",
              [
                M.get (| "pos" |);
                M.call (|
                  "sub",
                  [
                    M.get (| "end" |);
                    M.get (| "pos" |)
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
        "abi_encode_uint8_to_uint8",
        ["value"; "pos"],
        [],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.get (| "pos" |);
                M.call (|
                  "cleanup_uint8",
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
        "abi_encode_int16_to_int16",
        ["value"; "pos"],
        [],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.get (| "pos" |);
                M.call (|
                  "cleanup_int16",
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
        "abi_encode_struct_S_memory_ptr",
        ["value"; "pos"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["memberValue0"],
            Some (M.call (|
              "mload",
              [
                M.call (|
                  "add",
                  [
                    M.get (| "value" |);
                    [Literal.number 0x00]
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "abi_encode_uint8_to_uint8",
              [
                M.get (| "memberValue0" |);
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0x00]
                  ]
                |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["memberValue0_1"],
            Some (M.call (|
              "mload",
              [
                M.call (|
                  "add",
                  [
                    M.get (| "value" |);
                    [Literal.number 0x20]
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "abi_encode_int16_to_int16",
              [
                M.get (| "memberValue0_1" |);
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0x20]
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
        "abi_encode_tuple_struct_S",
        ["headStart"; "value0"],
        ["tail"],
        do* ltac:(M.monadic (
          M.assign (|
            ["tail"],
            Some (M.call (|
              "add",
              [
                M.get (| "headStart" |);
                [Literal.number 64]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "abi_encode_struct_S_memory_ptr",
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
        "fun_f",
        [],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["var_s_mpos"],
            None
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["zero_struct_S_mpos"],
            Some (M.call (|
              "zero_value_for_split_struct_S",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["var_s_mpos"],
            Some (M.get (| "zero_struct_S_mpos" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3_mpos"],
            Some (M.get (| "var_s_mpos" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_22_mpos"],
            Some (M.get (| "_3_mpos" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_mpos"],
            Some (M.get (| "var_s_mpos" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_mpos"],
            Some (M.get (| "_mpos" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some ([Literal.number 0xde36958a609314d3ec594bea4ec463de5d1a213a4294213bca60d20e4dc69fa4])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2"],
            Some (M.call (|
              "packed_hashed_struct_S_to_struct_S",
              [
                M.get (| "expr_22_mpos" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.call (|
              "allocate_unbounded",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_4"],
            Some (M.call (|
              "abi_encode_tuple_struct_S",
              [
                M.get (| "_3" |);
                M.get (| "expr_mpos" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "log2",
              [
                M.get (| "_3" |);
                M.call (|
                  "sub",
                  [
                    M.get (| "_4" |);
                    M.get (| "_3" |)
                  ]
                |);
                M.get (| "_1" |);
                M.get (| "_2" |)
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
        M.expr_stmt (|
          M.call (|
            "constructor_C",
            []
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
                  [Literal.string "435f33385f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f33385f6465706c6f796564"]
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
                  [Literal.string "435f33385f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_38_deployed.
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
      "a2646970667358221220b702331f2f39c5b3cd0f358995e730fda4cc30456fe28a9e680ac61fc62e140f64736f6c634300081b0033".
  End C_38_deployed.
End C_38.
