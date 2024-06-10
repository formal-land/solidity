(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_71.
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
                  [Literal.string "435f37315f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f37315f6465706c6f796564"]
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
                  [Literal.string "435f37315f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_71_deployed.
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
          "abi_encode_uint256",
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
          "abi_encode_uint256_uint256_uint256_uint256_uint256_uint256_uint256_uint256",
          ["headStart"; "value0"; "value1"; "value2"; "value3"; "value4"; "value5"; "value6"; "value7"],
          ["tail"],
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "add",
                [
                  M.get (| "headStart" |);
                  [Literal.number 256]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256",
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
                "abi_encode_uint256",
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
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256",
                [
                  M.get (| "value2" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 64]
                    ]
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256",
                [
                  M.get (| "value3" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 96]
                    ]
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256",
                [
                  M.get (| "value4" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 128]
                    ]
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256",
                [
                  M.get (| "value5" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 160]
                    ]
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256",
                [
                  M.get (| "value6" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 192]
                    ]
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256",
                [
                  M.get (| "value7" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 224]
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
          "external_fun_lengths",
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
              ["ret"; "ret_1"; "ret_2"; "ret_3"; "ret_4"; "ret_5"; "ret_6"; "ret_7"],
              Some (M.call (|
                "fun_lengths",
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
                "abi_encode_uint256_uint256_uint256_uint256_uint256_uint256_uint256_uint256",
                [
                  M.get (| "memPos" |);
                  M.get (| "ret" |);
                  M.get (| "ret_1" |);
                  M.get (| "ret_2" |);
                  M.get (| "ret_3" |);
                  M.get (| "ret_4" |);
                  M.get (| "ret_5" |);
                  M.get (| "ret_6" |);
                  M.get (| "ret_7" |)
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
          "zero_value_for_split_uint256",
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
          "array_length_array_uint256_2_storage",
          ["value"],
          ["length"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some ([Literal.number 0x02])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "array_length_array_uint256_2000000000_storage",
          ["value"],
          ["length"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some ([Literal.number 0x77359400])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "array_length_array_uint256_2000000000000000000_storage",
          ["value"],
          ["length"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some ([Literal.number 0x1bc16d674ec80000])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "array_length_array_uint256_120_storage",
          ["value"],
          ["length"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some ([Literal.number 0x78])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "array_length_array_uint256_storage",
          ["value"],
          ["length"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some ([Literal.number 0x1c20])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "array_length_t_array_t_uint256_storage",
          ["value"],
          ["length"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some ([Literal.number 0x02a300])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "array_length_array_uint256_1209600_storage",
          ["value"],
          ["length"],
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some ([Literal.number 0x127500])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_lengths",
          [],
          ["var";
      "var_";
      "var_1";
      "var_2";
      "var_3";
      "var_4";
      "var_5";
      "var_6"],
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_uint256"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "zero_uint256" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_uint256_1"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_"],
              Some (M.get (| "zero_uint256_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_uint256_2"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_1"],
              Some (M.get (| "zero_uint256_2" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_uint256_3"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_2"],
              Some (M.get (| "zero_uint256_3" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_t_uint256"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_3"],
              Some (M.get (| "zero_t_uint256" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_uint256_4"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_4"],
              Some (M.get (| "zero_uint256_4" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_uint256_5"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_5"],
              Some (M.get (| "zero_uint256_5" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_uint256_6"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_6"],
              Some (M.get (| "zero_uint256_6" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_9_slot"],
              Some ([Literal.number 0x00])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_51_slot"],
              Some (M.get (| "_9_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.call (|
                "array_length_array_uint256_2_storage",
                [
                  M.get (| "expr_51_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component"],
              Some (M.get (| "expr" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_10_slot"],
              Some ([Literal.number 0x02])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_53_slot"],
              Some (M.get (| "_10_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_1"],
              Some (M.call (|
                "array_length_array_uint256_2000000000_storage",
                [
                  M.get (| "expr_53_slot" |)
                ]
              |))
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
              ["_11_slot"],
              Some ([Literal.number 0x77359402])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_55_slot"],
              Some (M.get (| "_11_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_2"],
              Some (M.call (|
                "array_length_array_uint256_2000000000000000000_storage",
                [
                  M.get (| "expr_55_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_2"],
              Some (M.get (| "expr_2" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_12_slot"],
              Some ([Literal.number 0x1bc16d67c5fd9402])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_57_slot"],
              Some (M.get (| "_12_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_3"],
              Some (M.call (|
                "array_length_array_uint256_2_storage",
                [
                  M.get (| "expr_57_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_3"],
              Some (M.get (| "expr_3" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_13_slot"],
              Some ([Literal.number 0x1bc16d67c5fd9404])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_59_slot"],
              Some (M.get (| "_13_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_4"],
              Some (M.call (|
                "array_length_array_uint256_120_storage",
                [
                  M.get (| "expr_59_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_4"],
              Some (M.get (| "expr_4" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_slot"],
              Some ([Literal.number 0x1bc16d67c5fd947c])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_61_slot"],
              Some (M.get (| "_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_5"],
              Some (M.call (|
                "array_length_array_uint256_storage",
                [
                  M.get (| "expr_61_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_5"],
              Some (M.get (| "expr_5" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_15_slot"],
              Some ([Literal.number 0x1bc16d67c5fdb09c])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_slot"],
              Some (M.get (| "_15_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_6"],
              Some (M.call (|
                "array_length_t_array_t_uint256_storage",
                [
                  M.get (| "expr_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_6"],
              Some (M.get (| "expr_6" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_16_slot"],
              Some ([Literal.number 0x1bc16d67c600539c])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_65_slot"],
              Some (M.get (| "_16_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_7"],
              Some (M.call (|
                "array_length_array_uint256_1209600_storage",
                [
                  M.get (| "expr_65_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_component_7"],
              Some (M.get (| "expr_7" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "expr_component" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_"],
              Some (M.get (| "expr_component_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_1"],
              Some (M.get (| "expr_component_2" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_2"],
              Some (M.get (| "expr_component_3" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_3"],
              Some (M.get (| "expr_component_4" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_4"],
              Some (M.get (| "expr_component_5" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_5"],
              Some (M.get (| "expr_component_6" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_6"],
              Some (M.get (| "expr_component_7" |))
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
                    Some (Literal.number 0xdab1fa12),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_lengths",
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
      "a2646970667358221220cb248b8b398944b65ca4b1beec5938845badffe67575f0cde1cf4e5b620f045564736f6c634300081b0033".
  End C_71_deployed.
End C_71.
