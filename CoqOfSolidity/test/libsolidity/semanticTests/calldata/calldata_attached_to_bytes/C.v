(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_42.
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
                  [Literal.string "435f34325f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f34325f6465706c6f796564"]
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
                  [Literal.string "435f34325f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_42_deployed.
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
          "abi_decode_bytes_calldata",
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
          "abi_decode_uint256t_bytes_calldatat_uint256",
          ["headStart"; "dataEnd"],
          ["value0";
      "value1";
      "value2";
      "value3"],
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
                  [Literal.number 96]
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
          do* ltac:(M.monadic (
            M.assign (|
              ["offset_1"],
              Some (M.call (|
                "calldataload",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 32]
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
                  M.get (| "offset_1" |);
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
              ["value1"; "value2"],
              Some (M.call (|
                "abi_decode_bytes_calldata",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      M.get (| "offset_1" |)
                    ]
                  |);
                  M.get (| "dataEnd" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["offset_2"],
              Some ([Literal.number 64])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["value3"],
              Some (M.call (|
                "abi_decode_uint256",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      M.get (| "offset_2" |)
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
          "cleanup_bytes1",
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
                    "shl",
                    [
                      [Literal.number 248];
                      [Literal.number 255]
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
          "abi_encode_bytes1",
          ["value"; "pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_bytes1",
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
          "abi_encode_bytes1_bytes1",
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
                "abi_encode_bytes1",
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
                "abi_encode_bytes1",
                [
                  M.get (| "value1" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 32]
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
          "external_fun_test",
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
              ["param"; "param_1"; "param_2"; "param_3"],
              Some (M.call (|
                "abi_decode_uint256t_bytes_calldatat_uint256",
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
              ["ret"; "ret_1"],
              Some (M.call (|
                "fun_test",
                [
                  M.get (| "param" |);
                  M.get (| "param_1" |);
                  M.get (| "param_2" |);
                  M.get (| "param_3" |)
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
                "abi_encode_bytes1_bytes1",
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
          "zero_value_for_split_bytes1",
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
          "fun_test",
          ["var"; "var__b_offset"; "var_b_length"; "var_1"],
          ["var_2";
      "var_3"],
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_t_bytes1"],
              Some (M.call (|
                "zero_value_for_split_bytes1",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_2"],
              Some (M.get (| "zero_t_bytes1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_bytes1"],
              Some (M.call (|
                "zero_value_for_split_bytes1",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_3"],
              Some (M.get (| "zero_bytes1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_3_offset"],
              Some (M.get (| "var__b_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_3_length"],
              Some (M.get (| "var_b_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_36_offset"],
              Some (M.get (| "_3_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_length"],
              Some (M.get (| "_3_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_self_offset"],
              Some (M.get (| "expr_36_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_self_length"],
              Some (M.get (| "expr_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_38_component"; "expr_component"],
              Some (M.call (|
                "fun_reverse",
                [
                  M.get (| "expr_self_offset" |);
                  M.get (| "expr_self_length" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_2"],
              Some (M.get (| "expr_38_component" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_3"],
              Some (M.get (| "expr_component" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.leave (||)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "panic_error_0x32",
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
                  [Literal.number 0x32]
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
          "calldata_array_index_access_bytes_calldata",
          ["base_ref"; "length"; "index"],
          ["addr"],
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.call (|
                    "lt",
                    [
                      M.get (| "index" |);
                      M.get (| "length" |)
                    ]
                  |)
                ]
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "panic_error_0x32",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["addr"],
              Some (M.call (|
                "add",
                [
                  M.get (| "base_ref" |);
                  M.call (|
                    "mul",
                    [
                      M.get (| "index" |);
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
          "fun_reverse",
          ["var_b_offset"; "var__b_length"],
          ["var_";
      "var"],
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_bytes1"],
              Some (M.call (|
                "zero_value_for_split_bytes1",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_"],
              Some (M.get (| "zero_bytes1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_bytes1_1"],
              Some (M.call (|
                "zero_value_for_split_bytes1",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "zero_bytes1_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_offset"],
              Some (M.get (| "var_b_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_length"],
              Some (M.get (| "var__b_length" |))
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
              ["expr_10_length"],
              Some (M.get (| "_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some ([Literal.number 0x01])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_1"],
              Some (M.call (|
                "cleanup_bytes1",
                [
                  M.call (|
                    "calldataload",
                    [
                      M.call (|
                        "calldata_array_index_access_bytes_calldata",
                        [
                          M.get (| "expr_offset" |);
                          M.get (| "expr_10_length" |);
                          M.call (|
                            "convert_rational_by_to_uint256",
                            [
                              M.get (| "expr" |)
                            ]
                          |)
                        ]
                      |)
                    ]
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component"],
              Some (M.get (| "expr_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_7_offset"],
              Some (M.get (| "var_b_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_7_length"],
              Some (M.get (| "var__b_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_13_offset"],
              Some (M.get (| "_7_offset" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_13_length"],
              Some (M.get (| "_7_length" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_2"],
              Some ([Literal.number 0x00])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_3"],
              Some (M.call (|
                "cleanup_bytes1",
                [
                  M.call (|
                    "calldataload",
                    [
                      M.call (|
                        "calldata_array_index_access_bytes_calldata",
                        [
                          M.get (| "expr_13_offset" |);
                          M.get (| "expr_13_length" |);
                          M.call (|
                            "convert_t_rational_by_to_t_uint256",
                            [
                              M.get (| "expr_2" |)
                            ]
                          |)
                        ]
                      |)
                    ]
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_1"],
              Some (M.get (| "expr_3" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_"],
              Some (M.get (| "expr_component" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "expr_component_1" |))
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
                    Some (Literal.number 0x9ebc1794),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_test",
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
      "a2646970667358221220bc3c56470a838dab8f0106d7a40647c5b52c8b290fa38029694dfe9175c3f31f64736f6c634300081b0033".
  End C_42_deployed.
End C_42.
