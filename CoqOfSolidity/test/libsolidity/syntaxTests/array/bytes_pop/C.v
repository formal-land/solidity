(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_12.
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
              M.get_var (| "_1" |);
              M.call (|
                "dataoffset",
                [
                  [Literal.string "435f31325f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f31325f6465706c6f796564"]
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
              M.get_var (| "_1" |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f31325f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.close_scope
    )) in
    M.close_scope.

  Module C_12_deployed.
    Definition code : M.t BlockUnit.t :=
      do* M.open_scope in
      do* ltac:(M.monadic (
        M.function (|
          "shift_right_224_unsigned",
          ["value"],
          ["newValue"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
                [
                  [Literal.number 224];
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
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
          "abi_decode",
          ["headStart"; "dataEnd"],
          [],
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
                  [Literal.number 0]
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
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_tuple",
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
                  [Literal.number 0]
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "external_fun_test",
          [],
          [],
          do* M.open_scope in
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
            M.expr_stmt (|
              M.call (|
                "fun_test",
                []
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["memPos"],
              Some (M.call (|
                "allocate_unbounded",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["memEnd"],
              Some (M.call (|
                "abi_encode_tuple",
                [
                  M.get_var (| "memPos" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "return",
                [
                  M.get_var (| "memPos" |);
                  M.call (|
                    "sub",
                    [
                      M.get_var (| "memEnd" |);
                      M.get_var (| "memPos" |)
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
        M.function (|
          "convert_array_bytes_storage_to_bytes_ptr",
          ["value"],
          ["converted"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.get_var (| "value" |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "panic_error_0x31",
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
                  [Literal.number 0x31]
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
          "panic_error_0x22",
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
                  [Literal.number 0x22]
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
          "extract_byte_array_length",
          ["data"],
          ["length"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some (M.call (|
                "div",
                [
                  M.get_var (| "data" |);
                  [Literal.number 2]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["outOfPlaceEncoding"],
              Some (M.call (|
                "and",
                [
                  M.get_var (| "data" |);
                  [Literal.number 1]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.get_var (| "outOfPlaceEncoding" |)
                ]
              |),
              do* M.open_scope in
              do* ltac:(M.monadic (
                M.assign (|
                  ["length"],
                  Some (M.call (|
                    "and",
                    [
                      M.get_var (| "length" |);
                      [Literal.number 0x7f]
                    ]
                  |))
                |)
              )) in
              M.close_scope
            |)
          )) in
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "eq",
                [
                  M.get_var (| "outOfPlaceEncoding" |);
                  M.call (|
                    "lt",
                    [
                      M.get_var (| "length" |);
                      [Literal.number 32]
                    ]
                  |)
                ]
              |),
              do* M.open_scope in
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "panic_error_0x22",
                    []
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
          "array_dataslot_bytes_storage_ptr",
          ["ptr"],
          ["data"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["data"],
              Some (M.get_var (| "ptr" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  [Literal.number 0];
                  M.get_var (| "ptr" |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["data"],
              Some (M.call (|
                "keccak256",
                [
                  [Literal.number 0];
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
          "shift_right_unsigned_dynamic",
          ["bits"; "value"],
          ["newValue"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
                [
                  M.get_var (| "bits" |);
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "mask_bytes_dynamic",
          ["data"; "bytes"],
          ["result"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["mask"],
              Some (M.call (|
                "not",
                [
                  M.call (|
                    "shift_right_unsigned_dynamic",
                    [
                      M.call (|
                        "mul",
                        [
                          [Literal.number 8];
                          M.get_var (| "bytes" |)
                        ]
                      |);
                      M.call (|
                        "not",
                        [
                          [Literal.number 0]
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
              ["result"],
              Some (M.call (|
                "and",
                [
                  M.get_var (| "data" |);
                  M.get_var (| "mask" |)
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "extract_used_part_and_set_length_of_short_byte_array",
          ["data"; "len"],
          ["used"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["data"],
              Some (M.call (|
                "mask_bytes_dynamic",
                [
                  M.get_var (| "data" |);
                  M.get_var (| "len" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["used"],
              Some (M.call (|
                "or",
                [
                  M.get_var (| "data" |);
                  M.call (|
                    "mul",
                    [
                      [Literal.number 2];
                      M.get_var (| "len" |)
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
          "transit_byte_array_long_to_short_bytes_storage_ptr",
          ["array"; "len"],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["dataPos"],
              Some (M.call (|
                "array_dataslot_bytes_storage_ptr",
                [
                  M.get_var (| "array" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["data"],
              Some (M.call (|
                "extract_used_part_and_set_length_of_short_byte_array",
                [
                  M.call (|
                    "sload",
                    [
                      M.get_var (| "dataPos" |)
                    ]
                  |);
                  M.get_var (| "len" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "sstore",
                [
                  M.get_var (| "array" |);
                  M.get_var (| "data" |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "sstore",
                [
                  M.get_var (| "dataPos" |);
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
          "long_byte_array_index_access_no_checks",
          ["array"; "index"],
          ["slot";
      "offset"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["offset"],
              Some (M.call (|
                "sub",
                [
                  [Literal.number 31];
                  M.call (|
                    "mod",
                    [
                      M.get_var (| "index" |);
                      [Literal.number 0x20]
                    ]
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["dataArea"],
              Some (M.call (|
                "array_dataslot_bytes_storage_ptr",
                [
                  M.get_var (| "array" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["slot"],
              Some (M.call (|
                "add",
                [
                  M.get_var (| "dataArea" |);
                  M.call (|
                    "div",
                    [
                      M.get_var (| "index" |);
                      [Literal.number 0x20]
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
          "shift_left_dynamic",
          ["bits"; "value"],
          ["newValue"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shl",
                [
                  M.get_var (| "bits" |);
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "update_byte_slice_dynamic1",
          ["value"; "shiftBytes"; "toInsert"],
          ["result"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["shiftBits"],
              Some (M.call (|
                "mul",
                [
                  M.get_var (| "shiftBytes" |);
                  [Literal.number 8]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["mask"],
              Some (M.call (|
                "shift_left_dynamic",
                [
                  M.get_var (| "shiftBits" |);
                  [Literal.number 255]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["toInsert"],
              Some (M.call (|
                "shift_left_dynamic",
                [
                  M.get_var (| "shiftBits" |);
                  M.get_var (| "toInsert" |)
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
                  M.get_var (| "value" |);
                  M.call (|
                    "not",
                    [
                      M.get_var (| "mask" |)
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
                  M.get_var (| "value" |);
                  M.call (|
                    "and",
                    [
                      M.get_var (| "toInsert" |);
                      M.get_var (| "mask" |)
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
          "cleanup_bytes1",
          ["value"],
          ["cleaned"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["cleaned"],
              Some (M.call (|
                "and",
                [
                  M.get_var (| "value" |);
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
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "convert_bytes1_to_bytes1",
          ["value"],
          ["converted"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "cleanup_bytes1",
                [
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "shift_right_unsigned",
          ["value"],
          ["newValue"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
                [
                  [Literal.number 248];
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "prepare_store_bytes1",
          ["value"],
          ["ret"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["ret"],
              Some (M.call (|
                "shift_right_unsigned",
                [
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "update_storage_value_bytes1_to_bytes1",
          ["slot"; "offset"; "value"],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["convertedValue"],
              Some (M.call (|
                "convert_bytes1_to_bytes1",
                [
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "sstore",
                [
                  M.get_var (| "slot" |);
                  M.call (|
                    "update_byte_slice_dynamic1",
                    [
                      M.call (|
                        "sload",
                        [
                          M.get_var (| "slot" |)
                        ]
                      |);
                      M.get_var (| "offset" |);
                      M.call (|
                        "prepare_store_bytes1",
                        [
                          M.get_var (| "convertedValue" |)
                        ]
                      |)
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
        M.function (|
          "zero_value_for_split_bytes1",
          [],
          ["ret"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["ret"],
              Some ([Literal.number 0])
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "storage_set_to_zero_bytes1",
          ["slot"; "offset"],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["zero"],
              Some (M.call (|
                "zero_value_for_split_bytes1",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "update_storage_value_bytes1_to_bytes1",
                [
                  M.get_var (| "slot" |);
                  M.get_var (| "offset" |);
                  M.get_var (| "zero" |)
                ]
              |)
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "byte_array_pop_bytes_storage_ptr",
          ["array"],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["data"],
              Some (M.call (|
                "sload",
                [
                  M.get_var (| "array" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["oldLen"],
              Some (M.call (|
                "extract_byte_array_length",
                [
                  M.get_var (| "data" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.get_var (| "oldLen" |)
                ]
              |),
              do* M.open_scope in
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "panic_error_0x31",
                    []
                  |)
                |)
              )) in
              M.close_scope
            |)
          )) in
          do* ltac:(M.monadic (
            M.switch (|
              M.get_var (| "oldLen" |),
              [
                (
                  Some (Literal.number 32),
                  do* M.open_scope in
                  do* ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call (|
                        "transit_byte_array_long_to_short_bytes_storage_ptr",
                        [
                          M.get_var (| "array" |);
                          [Literal.number 31]
                        ]
                      |)
                    |)
                  )) in
                  M.close_scope
                );
                (
                  None,
                  do* M.open_scope in
                  do* ltac:(M.monadic (
                    M.declare (|
                      ["newLen"],
                      Some (M.call (|
                        "sub",
                        [
                          M.get_var (| "oldLen" |);
                          [Literal.number 1]
                        ]
                      |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.switch (|
                      M.call (|
                        "lt",
                        [
                          M.get_var (| "oldLen" |);
                          [Literal.number 32]
                        ]
                      |),
                      [
                        (
                          Some (Literal.number 1),
                          do* M.open_scope in
                          do* ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call (|
                                "sstore",
                                [
                                  M.get_var (| "array" |);
                                  M.call (|
                                    "extract_used_part_and_set_length_of_short_byte_array",
                                    [
                                      M.get_var (| "data" |);
                                      M.get_var (| "newLen" |)
                                    ]
                                  |)
                                ]
                              |)
                            |)
                          )) in
                          M.close_scope
                        );
                        (
                          None,
                          do* M.open_scope in
                          do* ltac:(M.monadic (
                            M.declare (|
                              ["slot"; "offset"],
                              Some (M.call (|
                                "long_byte_array_index_access_no_checks",
                                [
                                  M.get_var (| "array" |);
                                  M.get_var (| "newLen" |)
                                ]
                              |))
                            |)
                          )) in
                          do* ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call (|
                                "storage_set_to_zero_bytes1",
                                [
                                  M.get_var (| "slot" |);
                                  M.get_var (| "offset" |)
                                ]
                              |)
                            |)
                          )) in
                          do* ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call (|
                                "sstore",
                                [
                                  M.get_var (| "array" |);
                                  M.call (|
                                    "sub",
                                    [
                                      M.get_var (| "data" |);
                                      [Literal.number 2]
                                    ]
                                  |)
                                ]
                              |)
                            |)
                          )) in
                          M.close_scope
                        )                ]
                    |)
                  )) in
                  M.close_scope
                )        ]
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_test",
          [],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["_slot"],
              Some ([Literal.number 0x00])
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_slot"],
              Some (M.get_var (| "_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_self_slot"],
              Some (M.call (|
                "convert_array_bytes_storage_to_bytes_ptr",
                [
                  M.get_var (| "expr_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "byte_array_pop_bytes_storage_ptr",
                [
                  M.get_var (| "expr_self_slot" |)
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
            do* M.open_scope in
            do* ltac:(M.monadic (
              M.declare (|
                ["selector"],
                Some (M.call (|
                  "shift_right_224_unsigned",
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
                M.get_var (| "selector" |),
                [
                  (
                    Some (Literal.number 0xf8a8fd6d),
                    do* M.open_scope in
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_test",
                          []
                        |)
                      |)
                    )) in
                    M.close_scope
                  );
                  (
                    None,
                    do* M.open_scope in
                    M.close_scope
                  )          ]
              |)
            )) in
            M.close_scope
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
      "a2646970667358221220aeaf8c09a85d95045cf3590277695e469f9f7e8e200808b309cf7e0545b1af9464736f6c634300081b0033".
  End C_12_deployed.
End C_12.
