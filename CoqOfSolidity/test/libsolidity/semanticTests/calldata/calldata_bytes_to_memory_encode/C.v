(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_17.
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
                  [Literal.string "435f31375f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f31375f6465706c6f796564"]
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
                  [Literal.string "435f31375f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_17_deployed.
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
          "revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db",
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
          "revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d",
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
          "revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490",
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
          "revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef",
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
          "abi_decode_bytes_calldata_ptr",
          ["offset"; "end"],
          ["arrayPos";
      "length"],
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.call (|
                    "slt",
                    [
                      M.call (|
                        "add",
                        [
                          M.get (| "offset" |);
                          [Literal.number 0x1f]
                        ]
                      |);
                      M.get (| "end" |)
                    ]
                  |)
                ]
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some (M.call (|
                "calldataload",
                [
                  M.get (| "offset" |)
                ]
              |))
            |)
          )) in
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
                    "revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["arrayPos"],
              Some (M.call (|
                "add",
                [
                  M.get (| "offset" |);
                  [Literal.number 0x20]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "gt",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "arrayPos" |);
                      M.call (|
                        "mul",
                        [
                          M.get (| "length" |);
                          [Literal.number 0x01]
                        ]
                      |)
                    ]
                  |);
                  M.get (| "end" |)
                ]
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef",
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
          "abi_decode_bytes_calldata",
          ["headStart"; "dataEnd"],
          ["value0";
      "value1"],
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
              Some (M.call (|
                "calldataload",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 0]
                    ]
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "gt",
                [
                  M.get (| "offset" |);
                  [Literal.number 0xffffffffffffffff]
                ]
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["value0"; "value1"],
              Some (M.call (|
                "abi_decode_bytes_calldata_ptr",
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
          "abi_encode_bytes_memory_ptr",
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
          "abi_encode_bytes",
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
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "abi_encode_bytes_memory_ptr",
                [
                  M.get (| "value0" |);
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
            M.assign (|
              ["param"; "param_1"],
              Some (M.call (|
                "abi_decode_bytes_calldata",
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
            M.assign (|
              ["ret"],
              Some (M.call (|
                "fun_f",
                [
                  M.get (| "param" |);
                  M.get (| "param_1" |)
                ]
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
                "abi_encode_bytes",
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
          "copy_calldata_to_memory_with_cleanup",
          ["src"; "dst"; "length"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "calldatacopy",
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
          "abi_encode_bytes_calldata_ptr",
          ["start"; "length"; "pos"],
          ["end"],
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
                "copy_calldata_to_memory_with_cleanup",
                [
                  M.get (| "start" |);
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
          "abi_encode_bytes_calldata",
          ["headStart"; "value0"; "value1"],
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
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "abi_encode_bytes_calldata_ptr",
                [
                  M.get (| "value0" |);
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
          "fun_f",
          ["var_data_offset"; "var_data_length"],
          ["var_mpos"],
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
              ["_offset"],
              Some (M.get (| "var_data_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_length"],
              Some (M.get (| "var_data_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_offset"],
              Some (M.get (| "_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_11_length"],
              Some (M.get (| "_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_12_offset"],
              Some (M.get (| "expr_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_length"],
              Some (M.get (| "expr_11_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_mpos"],
              Some (M.call (|
                "allocate_unbounded",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_1"],
              Some (M.call (|
                "add",
                [
                  M.get (| "expr_mpos" |);
                  [Literal.number 0x20]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_2"],
              Some (M.call (|
                "abi_encode_bytes_calldata",
                [
                  M.get (| "_1" |);
                  M.get (| "expr_12_offset" |);
                  M.get (| "expr_length" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "expr_mpos" |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "_2" |);
                      M.call (|
                        "add",
                        [
                          M.get (| "expr_mpos" |);
                          [Literal.number 0x20]
                        ]
                      |)
                    ]
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "finalize_allocation",
                [
                  M.get (| "expr_mpos" |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "_2" |);
                      M.get (| "expr_mpos" |)
                    ]
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_mpos"],
              Some (M.get (| "expr_mpos" |))
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
                    Some (Literal.number 0xd45754f8),
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
      "a2646970667358221220df90ec0640ca34626f9f60173e7b8a7c15a8d5b227a3f7598497b10f19bc0b7864736f6c634300081b0033".
  End C_17_deployed.
End C_17.
