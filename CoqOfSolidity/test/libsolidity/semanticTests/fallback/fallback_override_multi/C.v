(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_58.
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
                  [Literal.string "435f35385f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f35385f6465706c6f796564"]
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
                  [Literal.string "435f35385f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_58_deployed.
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
          "cleanup_bool",
          ["value"],
          ["cleaned"],
          do* ltac:(M.monadic (
            M.assign (|
              ["cleaned"],
              Some (M.call (|
                "iszero",
                [
                  M.call (|
                    "iszero",
                    [
                      M.get (| "value" |)
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
          "abi_encode_bool",
          ["value"; "pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_bool",
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
          "array_length_bytes",
          ["value"],
          ["length"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some (M.call (|
                "mload",
                [
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
          "array_storeLengthForEncoding_bytes",
          ["pos"; "length"],
          ["updated_pos"],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.get (| "length" |)
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
          "copy_memory_to_memory_with_cleanup",
          ["src"; "dst"; "length"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mcopy",
                [
                  M.get (| "dst" |);
                  M.get (| "src" |);
                  M.get (| "length" |)
                ]
              |)
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
                      M.get (| "dst" |);
                      M.get (| "length" |)
                    ]
                  |);
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
          "abi_encode_bytes",
          ["value"; "pos"],
          ["end"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some (M.call (|
                "array_length_bytes",
                [
                  M.get (| "value" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "array_storeLengthForEncoding_bytes",
                [
                  M.get (| "pos" |);
                  M.get (| "length" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "copy_memory_to_memory_with_cleanup",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "value" |);
                      [Literal.number 0x20]
                    ]
                  |);
                  M.get (| "pos" |);
                  M.get (| "length" |)
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
                  M.get (| "pos" |);
                  M.call (|
                    "round_up_to_mul_of",
                    [
                      M.get (| "length" |)
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
          "abi_encode_bool_bytes",
          ["headStart"; "value0"; "value1"],
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
                "abi_encode_bool",
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
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 32]
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
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "abi_encode_bytes",
                [
                  M.get (| "value1" |);
                  M.get (| "tail" |)
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "external_fun_f",
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
              ["ret"; "ret_1"],
              Some (M.call (|
                "fun_f",
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
                "abi_encode_bool_bytes",
                [
                  M.get (| "memPos" |);
                  M.get (| "ret" |);
                  M.get (| "ret_1" |)
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
          "zero_value_for_split_bool",
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
          "zero_value_for_split_bytes",
          [],
          ["ret"],
          do* ltac:(M.monadic (
            M.assign (|
              ["ret"],
              Some ([Literal.number 96])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "cleanup_uint160",
          ["value"],
          ["cleaned"],
          do* ltac:(M.monadic (
            M.assign (|
              ["cleaned"],
              Some (M.call (|
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
              |))
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
          "convert_uint160_to_uint160",
          ["value"],
          ["converted"],
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "cleanup_uint160",
                [
                  M.call (|
                    "identity",
                    [
                      M.call (|
                        "cleanup_uint160",
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
          "convert_uint160_to_address",
          ["value"],
          ["converted"],
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "convert_uint160_to_uint160",
                [
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
          "convert_contract_C_to_address",
          ["value"],
          ["converted"],
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "convert_uint160_to_address",
                [
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
          "array_storeLengthForEncoding_bytes_nonPadded_inplace",
          ["pos"; "length"],
          ["updated_pos"],
          do* ltac:(M.monadic (
            M.assign (|
              ["updated_pos"],
              Some (M.get (| "pos" |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "store_literal_in_memory_4e03657aea45a94fc7d47ba826c8d667c0d1e6e33a64a036ec44f58fa12d6c45",
          ["memPtr"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
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
                  [Literal.string "616263"]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_stringliteral_4e03",
          ["pos"],
          ["end"],
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "array_storeLengthForEncoding_bytes_nonPadded_inplace",
                [
                  M.get (| "pos" |);
                  [Literal.number 3]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "store_literal_in_memory_4e03657aea45a94fc7d47ba826c8d667c0d1e6e33a64a036ec44f58fa12d6c45",
                [
                  M.get (| "pos" |)
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
                  M.get (| "pos" |);
                  [Literal.number 3]
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_packed_stringliteral_4e03",
          ["pos"],
          ["end"],
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "abi_encode_stringliteral_4e03",
                [
                  M.get (| "pos" |)
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
                      [Literal.number 0xffffffffffffffff]
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
          "array_allocation_size_bytes",
          ["length"],
          ["size"],
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "gt",
                [
                  M.get (| "length" |);
                  [Literal.number 0xffffffffffffffff]
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
            M.assign (|
              ["size"],
              Some (M.call (|
                "round_up_to_mul_of",
                [
                  M.get (| "length" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["size"],
              Some (M.call (|
                "add",
                [
                  M.get (| "size" |);
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
          "allocate_memory_array_bytes",
          ["length"],
          ["memPtr"],
          do* ltac:(M.monadic (
            M.assign (|
              ["allocSize"],
              Some (M.call (|
                "array_allocation_size_bytes",
                [
                  M.get (| "length" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["memPtr"],
              Some (M.call (|
                "allocate_memory",
                [
                  M.get (| "allocSize" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "memPtr" |);
                  M.get (| "length" |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "extract_returndata",
          [],
          ["data"],
          do* ltac:(M.monadic (
            M.switch (|
              M.call (|
                "returndatasize",
                []
              |),
              [
                (
                  Some (Literal.number 0),
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["data"],
                      Some (M.call (|
                        "zero_value_for_split_bytes",
                        []
                      |))
                    |)
                  )) in
                  M.od
                );
                (
                  None,
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["data"],
                      Some (M.call (|
                        "allocate_memory_array_bytes",
                        [
                          M.call (|
                            "returndatasize",
                            []
                          |)
                        ]
                      |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call (|
                        "returndatacopy",
                        [
                          M.call (|
                            "add",
                            [
                              M.get (| "data" |);
                              [Literal.number 0x20]
                            ]
                          |);
                          [Literal.number 0];
                          M.call (|
                            "returndatasize",
                            []
                          |)
                        ]
                      |)
                    |)
                  )) in
                  M.od
                )        ]
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_f",
          [],
          ["var";
      "var_mpos"],
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_bool"],
              Some (M.call (|
                "zero_value_for_split_bool",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "zero_bool" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_bytes_mpos"],
              Some (M.call (|
                "zero_value_for_split_bytes",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_mpos"],
              Some (M.get (| "zero_bytes_mpos" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_address"],
              Some (M.call (|
                "address",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.call (|
                "convert_contract_C_to_address",
                [
                  M.get (| "expr_address" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_48_address"],
              Some (M.get (| "expr" |))
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
            M.assign (|
              ["_2"],
              Some (M.call (|
                "sub",
                [
                  M.call (|
                    "abi_encode_packed_stringliteral_4e03",
                    [
                      M.get (| "_1" |)
                    ]
                  |);
                  M.get (| "_1" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component"],
              Some (M.call (|
                "call",
                [
                  M.call (|
                    "gas",
                    []
                  |);
                  M.get (| "expr_48_address" |);
                  [Literal.number 0];
                  M.get (| "_1" |);
                  M.get (| "_2" |);
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_mpos"],
              Some (M.call (|
                "extract_returndata",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_success"],
              Some (M.get (| "expr_component" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_retval_mpos"],
              Some (M.get (| "expr_component_mpos" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_3"],
              Some (M.get (| "var_success" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_1"],
              Some (M.get (| "_3" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_1"],
              Some (M.get (| "expr_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_mpos"],
              Some (M.get (| "var_retval_mpos" |))
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
              ["expr_54_component_2_mpos"],
              Some (M.get (| "expr_mpos" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "expr_component_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_mpos"],
              Some (M.get (| "expr_54_component_2_mpos" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.leave (||)
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
                    Some (Literal.number 0x26121ff0),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_f",
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
              "stop",
              []
            |)
          |)
        )) in
        M.od
      )) in
      M.od.

    Definition data : string :=
      "a264697066735822122044162d2ceffa366327dda12feafc8fc4e6e8187b2a3680c78a1f9e52bbe8cada64736f6c634300081b0033".
  End C_58_deployed.
End C_58.
