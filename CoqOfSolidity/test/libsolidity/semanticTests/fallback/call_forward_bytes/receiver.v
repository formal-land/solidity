(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module receiver_23.
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
                  [Literal.string "72656365697665725f32335f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "72656365697665725f32335f6465706c6f796564"]
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
                  [Literal.string "72656365697665725f32335f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module receiver_23_deployed.
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
          "getter_fun_received",
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
          "external_fun_received",
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
                "getter_fun_received",
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
          "abi_decode_uint256",
          ["offset"; "end"],
          ["value"],
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "calldataload",
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
          "abi_decode_tuple_uint256",
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
                "abi_decode_uint256",
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
          "abi_encode_tuple",
          ["headStart"],
          ["tail"],
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "add",
                [
                  M.get (| "headStart" |);
                  [Literal.number 0]
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "external_fun_recv",
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
            M.assign (|
              ["param"],
              Some (M.call (|
                "abi_decode_tuple_uint256",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    []
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "fun_recv",
                [
                  M.get (| "param" |)
                ]
              |)
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
                "abi_encode_tuple",
                [
                  M.get (| "memPos" |)
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
          "cleanup_t_rational_by",
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
          "convert_t_rational_by_to_t_uint256",
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
                        "cleanup_t_rational_by",
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
          "panic_error_0x11",
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
                  [Literal.number 0x11]
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
          "checked_add_uint256",
          ["x"; "y"],
          ["sum"],
          do* ltac:(M.monadic (
            M.assign (|
              ["x"],
              Some (M.call (|
                "cleanup_uint256",
                [
                  M.get (| "x" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["y"],
              Some (M.call (|
                "cleanup_uint256",
                [
                  M.get (| "y" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["sum"],
              Some (M.call (|
                "add",
                [
                  M.get (| "x" |);
                  M.get (| "y" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "gt",
                [
                  M.get (| "x" |);
                  M.get (| "sum" |)
                ]
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "panic_error_0x11",
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
          "shift_right_0_unsigned",
          ["value"],
          ["newValue"],
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
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
          "extract_from_storage_value_offsett_uint256",
          ["slot_value"],
          ["value"],
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "cleanup_from_storage_uint256",
                [
                  M.call (|
                    "shift_right_0_unsigned",
                    [
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
          "read_from_storage_split_offset_uint256",
          ["slot"],
          ["value"],
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "extract_from_storage_value_offsett_uint256",
                [
                  M.call (|
                    "sload",
                    [
                      M.get (| "slot" |)
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
          "fun_recv",
          ["var_x"],
          [],
          do* ltac:(M.monadic (
            M.assign (|
              ["_1"],
              Some (M.get (| "var_x" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.get (| "_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_1"],
              Some ([Literal.number 0x01])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_2"],
              Some (M.call (|
                "checked_add_uint256",
                [
                  M.get (| "expr" |);
                  M.call (|
                    "convert_t_rational_by_to_t_uint256",
                    [
                      M.get (| "expr_1" |)
                    ]
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_2"],
              Some (M.call (|
                "read_from_storage_split_offset_uint256",
                [
                  [Literal.number 0x00]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_3"],
              Some (M.call (|
                "checked_add_uint256",
                [
                  M.get (| "_2" |);
                  M.get (| "expr_2" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "update_storage_value_offsett_uint256_to_uint256",
                [
                  [Literal.number 0x00];
                  M.get (| "expr_3" |)
                ]
              |)
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
          "fun",
          [],
          [],
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some ([Literal.number 0x80])
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
            M.expr_stmt (|
              M.call (|
                "update_storage_value_offsett_uint256_to_uint256",
                [
                  [Literal.number 0x00];
                  M.get (| "_1" |)
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
                    Some (Literal.number 0x83a6deb5),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_received",
                          []
                        |)
                      |)
                    )) in
                    M.od
                  );
                  (
                    Some (Literal.number 0x93bf938e),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_recv",
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
              "fun",
              []
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "stop",
              []
            |)
          |)
        )) in
        M.od
      )) in
      M.od.

    Definition data : string :=
      "a264697066735822122075900d679d68bac3f0382db9c8a7054068d5c7fe88afc19a921e918cb933288764736f6c634300081b0033".
  End receiver_23_deployed.
End receiver_23.
