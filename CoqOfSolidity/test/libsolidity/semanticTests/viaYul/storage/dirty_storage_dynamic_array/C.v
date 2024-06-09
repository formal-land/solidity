(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_40.
  Definition code : M.t unit := ltac:(M.monadic (
    let _ :=
      let _ :=
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
        |) in
      let _ :=
        M.if_ (|
          M.call (|
            "callvalue",
            [

            ]
          |),
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                [

                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.assign (|
          ["_1"],
          M.call (|
            "allocate_unbounded",
            [

            ]
          |)
        |) in
      let _ :=
        M.call (|
          "codecopy",
          [
            M.get (| "_1" |);
            M.call (|
              "dataoffset",
              [
                [Literal.string "435f34305f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f34305f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          "return",
          [
            M.get (| "_1" |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f34305f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      tt in
    let _ :=
      M.function (|
        "allocate_unbounded",
        [],
        ["memPtr"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["memPtr"],
              M.call (|
                "mload",
                [
                  [Literal.number 64]
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0]
              ]
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module C_40_deployed.
    Definition code : M.t unit := ltac:(M.monadic (
      let _ :=
        let _ :=
          M.call (|
            "mstore",
            [
              [Literal.number 64];
              [Literal.number 128]
            ]
          |) in
        let _ :=
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.call (|
                  "lt",
                  [
                    M.call (|
                      "calldatasize",
                      [

                      ]
                    |);
                    [Literal.number 4]
                  ]
                |)
              ]
            |),
            ltac:(M.monadic (
              let _ :=
                M.assign (|
                  ["selector"],
                  M.call (|
                    "shift_right_unsigned",
                    [
                      M.call (|
                        "calldataload",
                        [
                          [Literal.number 0]
                        ]
                      |)
                    ]
                  |)
                |) in
              let _ :=
                M.switch (|
                  M.get (| "selector" |),
                  [
                    (
                      Some (Literal.number 0x26121ff0),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_f",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      None,
                      ltac:(M.monadic (
                        tt
                      ))              )            ]
                |) in
              tt
            ))
          |) in
        let _ :=
          M.call (|
            "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
            [

            ]
          |) in
        tt in
      let _ :=
        M.function (|
          "shift_right_unsigned",
          ["value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shr",
                  [
                    [Literal.number 224];
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_unbounded",
          [],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "mload",
                  [
                    [Literal.number 64]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode",
          ["headStart"; "dataEnd"],
          [],
          ltac:(M.monadic (
            let _ :=
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
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_bool",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "iszero",
                      [
                        M.get (| "value" |)
                      ]
                    |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_bool_to_bool",
          ["value"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_bool",
          ["headStart"; "value0"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "abi_encode_bool_to_bool",
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_f",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "callvalue",
                  [

                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.call (|
                "abi_decode",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["ret"],
                M.call (|
                  "fun_f",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["memPos"],
                M.call (|
                  "allocate_unbounded",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["memEnd"],
                M.call (|
                  "abi_encode_bool",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |)
                  ]
                |)
              |) in
            let _ :=
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "zero_value_for_split_bool",
          [],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["ret"],
                [Literal.number 0]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "convert_array_array_uint8_dyn_storage_to_array_uint8_dyn_ptr",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.get (| "value" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "panic_error_0x41",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
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
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 4];
                  [Literal.number 0x41]
                ]
              |) in
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0x24]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_length_array_uint8_dyn_storage_ptr",
          ["value"],
          ["length"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["length"],
                M.call (|
                  "sload",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "panic_error_0x32",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
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
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 4];
                  [Literal.number 0x32]
                ]
              |) in
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0x24]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_dataslot_array_uint8_dyn_storage_ptr",
          ["ptr"],
          ["data"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["data"],
                M.get (| "ptr" |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 0];
                  M.get (| "ptr" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["data"],
                M.call (|
                  "keccak256",
                  [
                    [Literal.number 0];
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "storage_array_index_access_uint8_dyn_ptr",
          ["array"; "index"],
          ["slot";
      "offset"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["arrayLength"],
                M.call (|
                  "array_length_array_uint8_dyn_storage_ptr",
                  [
                    M.get (| "array" |)
                  ]
                |)
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "lt",
                      [
                        M.get (| "index" |);
                        M.get (| "arrayLength" |)
                      ]
                    |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "panic_error_0x32",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.assign (|
                ["dataArea"],
                M.call (|
                  "array_dataslot_array_uint8_dyn_storage_ptr",
                  [
                    M.get (| "array" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["slot"],
                M.call (|
                  "add",
                  [
                    M.get (| "dataArea" |);
                    M.call (|
                      "div",
                      [
                        M.get (| "index" |);
                        [Literal.number 32]
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["offset"],
                M.call (|
                  "mul",
                  [
                    M.call (|
                      "mod",
                      [
                        M.get (| "index" |);
                        [Literal.number 32]
                      ]
                    |);
                    [Literal.number 1]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_push_zero_array_uint8_dyn_storage_ptr",
          ["array"],
          ["slot";
      "offset"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["oldLen"],
                M.call (|
                  "array_length_array_uint8_dyn_storage_ptr",
                  [
                    M.get (| "array" |)
                  ]
                |)
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "lt",
                      [
                        M.get (| "oldLen" |);
                        [Literal.number 18446744073709551616]
                      ]
                    |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "panic_error_0x41",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.call (|
                "sstore",
                [
                  M.get (| "array" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "oldLen" |);
                      [Literal.number 1]
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["slot"; "offset"],
                M.call (|
                  "storage_array_index_access_uint8_dyn_ptr",
                  [
                    M.get (| "array" |);
                    M.get (| "oldLen" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "shift_right_unsigned_dynamic",
          ["bits"; "value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shr",
                  [
                    M.get (| "bits" |);
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_from_storage_uint8",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.call (|
                  "and",
                  [
                    M.get (| "value" |);
                    [Literal.number 0xff]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "extract_from_storage_value_dynamict_uint8",
          ["slot_value"; "offset"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["value"],
                M.call (|
                  "cleanup_from_storage_uint8",
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
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "read_from_storage_split_dynamic_uint8",
          ["slot"; "offset"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["value"],
                M.call (|
                  "extract_from_storage_value_dynamict_uint8",
                  [
                    M.call (|
                      "sload",
                      [
                        M.get (| "slot" |)
                      ]
                    |);
                    M.get (| "offset" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_length_array_uint8_dyn_storage",
          ["value"],
          ["length"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["length"],
                M.call (|
                  "sload",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_dataslot_array_uint8_dyn_storage",
          ["ptr"],
          ["data"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["data"],
                M.get (| "ptr" |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 0];
                  M.get (| "ptr" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["data"],
                M.call (|
                  "keccak256",
                  [
                    [Literal.number 0];
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "storage_array_index_access_uint8_dyn",
          ["array"; "index"],
          ["slot";
      "offset"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["arrayLength"],
                M.call (|
                  "array_length_array_uint8_dyn_storage",
                  [
                    M.get (| "array" |)
                  ]
                |)
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "lt",
                      [
                        M.get (| "index" |);
                        M.get (| "arrayLength" |)
                      ]
                    |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "panic_error_0x32",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.assign (|
                ["dataArea"],
                M.call (|
                  "array_dataslot_array_uint8_dyn_storage",
                  [
                    M.get (| "array" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["slot"],
                M.call (|
                  "add",
                  [
                    M.get (| "dataArea" |);
                    M.call (|
                      "div",
                      [
                        M.get (| "index" |);
                        [Literal.number 32]
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["offset"],
                M.call (|
                  "mul",
                  [
                    M.call (|
                      "mod",
                      [
                        M.get (| "index" |);
                        [Literal.number 32]
                      ]
                    |);
                    [Literal.number 1]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "zero_value_for_split_uint256",
          [],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["ret"],
                [Literal.number 0]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_uint8",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.call (|
                  "and",
                  [
                    M.get (| "value" |);
                    [Literal.number 0xff]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_rational_by",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.get (| "value" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "identity",
          ["value"],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["ret"],
                M.get (| "value" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "convert_rational_by_to_uint8",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "cleanup_uint8",
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
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_uint256",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.get (| "value" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "convert_rational_by_to_uint256",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
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
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_f",
          [],
          ["var_correct"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_bool"],
                M.call (|
                  "zero_value_for_split_bool",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_correct"],
                M.get (| "zero_bool" |)
              |) in
            let _ :=
              M.assign (|
                ["_2_slot"],
                [Literal.number 0x00]
              |) in
            let _ :=
              M.assign (|
                ["expr_slot"],
                M.get (| "_2_slot" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_self_slot"],
                M.call (|
                  "convert_array_array_uint8_dyn_storage_to_array_uint8_dyn_ptr",
                  [
                    M.get (| "expr_slot" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_1"; "_2"],
                M.call (|
                  "array_push_zero_array_uint8_dyn_storage_ptr",
                  [
                    M.get (| "expr_self_slot" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            let _ :=
              M.call (|
                "sstore",
                [
                  M.call (|
                    "keccak256",
                    [
                      [Literal.number 0];
                      [Literal.number 0x20]
                    ]
                  |);
                  [Literal.number 257]
                ]
              |) in
            let _ :=
              M.assign (|
                ["_6_slot"],
                [Literal.number 0x00]
              |) in
            let _ :=
              M.assign (|
                ["expr_16_slot"],
                M.get (| "_6_slot" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                [Literal.number 0x00]
              |) in
            let _ :=
              M.assign (|
                ["_3"; "_4"],
                M.call (|
                  "storage_array_index_access_uint8_dyn",
                  [
                    M.get (| "expr_16_slot" |);
                    M.get (| "expr" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_5"],
                M.call (|
                  "read_from_storage_split_dynamic_uint8",
                  [
                    M.get (| "_3" |);
                    M.get (| "_4" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.get (| "_5" |)
              |) in
            let _ :=
              M.assign (|
                ["var_x"],
                M.get (| "expr_1" |)
              |) in
            let _ :=
              M.assign (|
                ["var_r"],
                Literal.undefined
              |) in
            let _ :=
              M.assign (|
                ["zero_uint256"],
                M.call (|
                  "zero_value_for_split_uint256",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_r"],
                M.get (| "zero_uint256" |)
              |) in
            let _ :=
              M.declare (|
                ["var_r"],
                M.get (| "var_x" |)
              |) in
            let _ :=
              M.assign (|
                ["_slot"],
                [Literal.number 0x00]
              |) in
            let _ :=
              M.assign (|
                ["expr_25_slot"],
                M.get (| "_slot" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                [Literal.number 0x00]
              |) in
            let _ :=
              M.assign (|
                ["_6"; "_7"],
                M.call (|
                  "storage_array_index_access_uint8_dyn",
                  [
                    M.get (| "expr_25_slot" |);
                    M.get (| "expr_2" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_8"],
                M.call (|
                  "read_from_storage_split_dynamic_uint8",
                  [
                    M.get (| "_6" |);
                    M.get (| "_7" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                M.get (| "_8" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_4"],
                [Literal.number 0x01]
              |) in
            let _ :=
              M.assign (|
                ["expr_5"],
                M.call (|
                  "eq",
                  [
                    M.call (|
                      "cleanup_uint8",
                      [
                        M.get (| "expr_3" |)
                      ]
                    |);
                    M.call (|
                      "convert_rational_by_to_uint8",
                      [
                        M.get (| "expr_4" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_6"],
                M.get (| "expr_5" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_7"],
                M.get (| "expr_6" |)
              |) in
            let _ :=
              M.if_ (|
                M.get (| "expr_7" |),
                ltac:(M.monadic (
                  let _ :=
                    M.assign (|
                      ["_9"],
                      M.get (| "var_r" |)
                    |) in
                  let _ :=
                    M.assign (|
                      ["expr_8"],
                      M.get (| "_9" |)
                    |) in
                  let _ :=
                    M.assign (|
                      ["expr_9"],
                      [Literal.number 0x01]
                    |) in
                  let _ :=
                    M.assign (|
                      ["expr_10"],
                      M.call (|
                        "eq",
                        [
                          M.call (|
                            "cleanup_uint256",
                            [
                              M.get (| "expr_8" |)
                            ]
                          |);
                          M.call (|
                            "convert_rational_by_to_uint256",
                            [
                              M.get (| "expr_9" |)
                            ]
                          |)
                        ]
                      |)
                    |) in
                  let _ :=
                    M.assign (|
                      ["expr_11"],
                      M.get (| "expr_10" |)
                    |) in
                  let _ :=
                    M.declare (|
                      ["expr_7"],
                      M.get (| "expr_11" |)
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.declare (|
                ["var_correct"],
                M.get (| "expr_7" |)
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a2646970667358221220cfde1d37e3781e4aa92e5a792e54dafce2896c02c3f3b49ac64e36b9afeea30164736f6c634300081b0033".
  End C_40_deployed.
End C_40.
