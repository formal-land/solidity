(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_33.
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
                  [Literal.string "435f33335f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f33335f6465706c6f796564"]
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
                  [Literal.string "435f33335f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.close_scope
    )) in
    M.close_scope.

  Module C_33_deployed.
    Definition code : M.t BlockUnit.t :=
      do* M.open_scope in
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
          "external_fun_f",
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
                "fun_f",
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
          "convert_array_array_uint256_dyn_storage_to_array_uint256_dyn_ptr",
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
          "array_length_array_uint256_dyn_storage",
          ["value"],
          ["length"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some (M.call (|
                "sload",
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
          "array_storeLengthForEncoding_array_uint256_dyn",
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
          "array_dataslot_array_uint256_dyn_storage",
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
          "abi_encode_uint256",
          ["value"; "pos"],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get_var (| "pos" |);
                  M.call (|
                    "cleanup_uint256",
                    [
                      M.get_var (| "value" |)
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
          "abi_encodeUpdatedPos_uint256",
          ["value0"; "pos"],
          ["updatedPos"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_uint256",
                [
                  M.get_var (| "value0" |);
                  M.get_var (| "pos" |)
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
          "shift_right_0_unsigned",
          ["value"],
          ["newValue"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
                [
                  [Literal.number 0];
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
          "cleanup_from_storage_uint256",
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
          "extract_from_storage_value_offsett_uint256",
          ["slot_value"],
          ["value"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "cleanup_from_storage_uint256",
                [
                  M.call (|
                    "shift_right_0_unsigned",
                    [
                      M.get_var (| "slot_value" |)
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
          "read_from_storage_offset_uint256",
          ["slot"],
          ["value"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "extract_from_storage_value_offsett_uint256",
                [
                  M.call (|
                    "sload",
                    [
                      M.get_var (| "slot" |)
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
          "array_nextElement_array_uint256_dyn_storage",
          ["ptr"],
          ["next"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["next"],
              Some (M.call (|
                "add",
                [
                  M.get_var (| "ptr" |);
                  [Literal.number 0x01]
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_array_uint256_dyn_storage",
          ["value"; "pos"],
          ["end"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["length"],
              Some (M.call (|
                "array_length_array_uint256_dyn_storage",
                [
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "array_storeLengthForEncoding_array_uint256_dyn",
                [
                  M.get_var (| "pos" |);
                  M.get_var (| "length" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["baseRef"],
              Some (M.call (|
                "array_dataslot_array_uint256_dyn_storage",
                [
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["srcPtr"],
              Some (M.get_var (| "baseRef" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["i"],
              Some ([Literal.number 0])
            |)
          )) in
          do* ltac:(M.monadic (
            do*
              do* M.open_scope in
              M.close_scope in
      ltac:(M.monadic (
              M.for_ (|
                M.call (|
                  "lt",
                  [
                    M.get_var (| "i" |);
                    M.get_var (| "length" |)
                  ]
                |),
                do* M.open_scope in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["i"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "i" |);
                        [Literal.number 1]
                      ]
                    |))
                  |)
                )) in
                M.close_scope,
                do* M.open_scope in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["elementValue0"],
                    Some (M.call (|
                      "read_from_storage_offset_uint256",
                      [
                        M.get_var (| "srcPtr" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["pos"],
                    Some (M.call (|
                      "abi_encodeUpdatedPos_uint256",
                      [
                        M.get_var (| "elementValue0" |);
                        M.get_var (| "pos" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["srcPtr"],
                    Some (M.call (|
                      "array_nextElement_array_uint256_dyn_storage",
                      [
                        M.get_var (| "srcPtr" |)
                      ]
                    |))
                  |)
                )) in
                M.close_scope
              |)
            ))
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["end"],
              Some (M.get_var (| "pos" |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encodeUpdatedPos_array_uint256_dyn_storage",
          ["value0"; "pos"],
          ["updatedPos"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["updatedPos"],
              Some (M.call (|
                "abi_encode_array_uint256_dyn_storage",
                [
                  M.get_var (| "value0" |);
                  M.get_var (| "pos" |)
                ]
              |))
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
                      [Literal.number 0xffffffffffffffff]
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
          "copy_array_from_storage_to_memory_array_uint256_dyn",
          ["slot"],
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
            M.declare (|
              ["end"],
              Some (M.call (|
                "abi_encodeUpdatedPos_array_uint256_dyn_storage",
                [
                  M.get_var (| "slot" |);
                  M.get_var (| "memPtr" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "finalize_allocation",
                [
                  M.get_var (| "memPtr" |);
                  M.call (|
                    "sub",
                    [
                      M.get_var (| "end" |);
                      M.get_var (| "memPtr" |)
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
          "convert_array_array_uint256_dyn_storage_to_array_uint256_dyn",
          ["value"],
          ["converted"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "copy_array_from_storage_to_memory_array_uint256_dyn",
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
          "array_length_array_uint256_dyn_storage_ptr",
          ["value"],
          ["length"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["length"],
              Some (M.call (|
                "sload",
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
          "array_dataslot_array_uint256_dyn_storage_ptr",
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
          "array_nextElement_array_uint256_dyn_storage_ptr",
          ["ptr"],
          ["next"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["next"],
              Some (M.call (|
                "add",
                [
                  M.get_var (| "ptr" |);
                  [Literal.number 0x01]
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_array_uint256_dyn_storage_ptr",
          ["value"; "pos"],
          ["end"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["length"],
              Some (M.call (|
                "array_length_array_uint256_dyn_storage_ptr",
                [
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "array_storeLengthForEncoding_array_uint256_dyn",
                [
                  M.get_var (| "pos" |);
                  M.get_var (| "length" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["baseRef"],
              Some (M.call (|
                "array_dataslot_array_uint256_dyn_storage_ptr",
                [
                  M.get_var (| "value" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["srcPtr"],
              Some (M.get_var (| "baseRef" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["i"],
              Some ([Literal.number 0])
            |)
          )) in
          do* ltac:(M.monadic (
            do*
              do* M.open_scope in
              M.close_scope in
      ltac:(M.monadic (
              M.for_ (|
                M.call (|
                  "lt",
                  [
                    M.get_var (| "i" |);
                    M.get_var (| "length" |)
                  ]
                |),
                do* M.open_scope in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["i"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "i" |);
                        [Literal.number 1]
                      ]
                    |))
                  |)
                )) in
                M.close_scope,
                do* M.open_scope in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["elementValue0"],
                    Some (M.call (|
                      "read_from_storage_offset_uint256",
                      [
                        M.get_var (| "srcPtr" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["pos"],
                    Some (M.call (|
                      "abi_encodeUpdatedPos_uint256",
                      [
                        M.get_var (| "elementValue0" |);
                        M.get_var (| "pos" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["srcPtr"],
                    Some (M.call (|
                      "array_nextElement_array_uint256_dyn_storage_ptr",
                      [
                        M.get_var (| "srcPtr" |)
                      ]
                    |))
                  |)
                )) in
                M.close_scope
              |)
            ))
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["end"],
              Some (M.get_var (| "pos" |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encodeUpdatedPos_array_uint256_dyn_storage_ptr",
          ["value0"; "pos"],
          ["updatedPos"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["updatedPos"],
              Some (M.call (|
                "abi_encode_array_uint256_dyn_storage_ptr",
                [
                  M.get_var (| "value0" |);
                  M.get_var (| "pos" |)
                ]
              |))
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "copy_array_from_storage_to_memory_array_uint256_dyn_ptr",
          ["slot"],
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
            M.declare (|
              ["end"],
              Some (M.call (|
                "abi_encodeUpdatedPos_array_uint256_dyn_storage_ptr",
                [
                  M.get_var (| "slot" |);
                  M.get_var (| "memPtr" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "finalize_allocation",
                [
                  M.get_var (| "memPtr" |);
                  M.call (|
                    "sub",
                    [
                      M.get_var (| "end" |);
                      M.get_var (| "memPtr" |)
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
          "convert_array_array_uint256_dyn_storage_ptr_to_array_uint256_dyn",
          ["value"],
          ["converted"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "copy_array_from_storage_to_memory_array_uint256_dyn_ptr",
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
          "fun_f",
          [],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["_1_slot"],
              Some ([Literal.number 0x00])
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_14_slot"],
              Some (M.get_var (| "_1_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_c_slot"],
              Some (M.call (|
                "convert_array_array_uint256_dyn_storage_to_array_uint256_dyn_ptr",
                [
                  M.get_var (| "expr_14_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["_2_slot"],
              Some ([Literal.number 0x01])
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_slot"],
              Some (M.get_var (| "_2_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_d_mpos"],
              Some (M.call (|
                "convert_array_array_uint256_dyn_storage_to_array_uint256_dyn",
                [
                  M.get_var (| "expr_slot" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["_slot"],
              Some (M.get_var (| "var_c_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_27_slot"],
              Some (M.get_var (| "_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_28_slot"],
              Some (M.get_var (| "expr_27_slot" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_d_mpos"],
              Some (M.call (|
                "convert_array_array_uint256_dyn_storage_ptr_to_array_uint256_dyn",
                [
                  M.get_var (| "expr_28_slot" |)
                ]
              |))
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
                M.get_var (| "selector" |),
                [
                  (
                    Some (Literal.number 0x26121ff0),
                    do* M.open_scope in
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_f",
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
      "a2646970667358221220811527ead15c7b18465d7a627597c7448563fd88103fc7f0d641bdd522f39bf764736f6c634300081b0033".
  End C_33_deployed.
End C_33.
