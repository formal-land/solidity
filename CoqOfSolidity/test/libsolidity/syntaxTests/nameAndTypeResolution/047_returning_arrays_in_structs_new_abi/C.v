(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_13.
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
                [Literal.string "435f31335f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f31335f6465706c6f796564"]
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
                [Literal.string "435f31335f6465706c6f796564"]
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

  Module C_13_deployed.
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
          "array_length_array_string_dyn",
          ["value"],
          ["length"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["length"],
                M.call (|
                  "mload",
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
          "array_storeLengthForEncoding_array_string_dyn",
          ["pos"; "length"],
          ["updated_pos"],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.get (| "length" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["updated_pos"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_dataslot_array_string_dyn",
          ["ptr"],
          ["data"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["data"],
                M.get (| "ptr" |)
              |) in
            let _ :=
              M.declare (|
                ["data"],
                M.call (|
                  "add",
                  [
                    M.get (| "ptr" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_length_string",
          ["value"],
          ["length"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["length"],
                M.call (|
                  "mload",
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
          "array_storeLengthForEncoding_string",
          ["pos"; "length"],
          ["updated_pos"],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.get (| "length" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["updated_pos"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "copy_memory_to_memory_with_cleanup",
          ["src"; "dst"; "length"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mcopy",
                [
                  M.get (| "dst" |);
                  M.get (| "src" |);
                  M.get (| "length" |)
                ]
              |) in
            let _ :=
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "round_up_to_mul_of",
          ["value"],
          ["result"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["result"],
                M.call (|
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
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_string",
          ["value"; "pos"],
          ["end"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["length"],
                M.call (|
                  "array_length_string",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["pos"],
                M.call (|
                  "array_storeLengthForEncoding_string",
                  [
                    M.get (| "pos" |);
                    M.get (| "length" |)
                  ]
                |)
              |) in
            let _ :=
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
              |) in
            let _ :=
              M.declare (|
                ["end"],
                M.call (|
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
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encodeUpdatedPos_string",
          ["value0"; "pos"],
          ["updatedPos"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["updatedPos"],
                M.call (|
                  "abi_encode_string",
                  [
                    M.get (| "value0" |);
                    M.get (| "pos" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_nextElement_array_string_dyn",
          ["ptr"],
          ["next"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["next"],
                M.call (|
                  "add",
                  [
                    M.get (| "ptr" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_array_string_dyn",
          ["value"; "pos"],
          ["end"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["length"],
                M.call (|
                  "array_length_array_string_dyn",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["pos"],
                M.call (|
                  "array_storeLengthForEncoding_array_string_dyn",
                  [
                    M.get (| "pos" |);
                    M.get (| "length" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["headStart"],
                M.get (| "pos" |)
              |) in
            let _ :=
              M.assign (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    M.call (|
                      "mul",
                      [
                        M.get (| "length" |);
                        [Literal.number 0x20]
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["baseRef"],
                M.call (|
                  "array_dataslot_array_string_dyn",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["srcPtr"],
                M.get (| "baseRef" |)
              |) in
            let _ :=
              M.assign (|
                ["i"],
                [Literal.number 0]
              |) in
            let _ :=
              M.for (|
                tt,
                M.call (|
                  "lt",
                  [
                    M.get (| "i" |);
                    M.get (| "length" |)
                  ]
                |),
                let _ :=
                  M.declare (|
                    ["i"],
                    M.call (|
                      "add",
                      [
                        M.get (| "i" |);
                        [Literal.number 1]
                      ]
                    |)
                  |) in
                tt,
                let _ :=
                  M.call (|
                    "mstore",
                    [
                      M.get (| "pos" |);
                      M.call (|
                        "sub",
                        [
                          M.get (| "tail" |);
                          M.get (| "headStart" |)
                        ]
                      |)
                    ]
                  |) in
                let _ :=
                  M.assign (|
                    ["elementValue0"],
                    M.call (|
                      "mload",
                      [
                        M.get (| "srcPtr" |)
                      ]
                    |)
                  |) in
                let _ :=
                  M.declare (|
                    ["tail"],
                    M.call (|
                      "abi_encodeUpdatedPos_string",
                      [
                        M.get (| "elementValue0" |);
                        M.get (| "tail" |)
                      ]
                    |)
                  |) in
                let _ :=
                  M.declare (|
                    ["srcPtr"],
                    M.call (|
                      "array_nextElement_array_string_dyn",
                      [
                        M.get (| "srcPtr" |)
                      ]
                    |)
                  |) in
                let _ :=
                  M.declare (|
                    ["pos"],
                    M.call (|
                      "add",
                      [
                        M.get (| "pos" |);
                        [Literal.number 0x20]
                      ]
                    |)
                  |) in
                tt
              |) in
            let _ :=
              M.declare (|
                ["pos"],
                M.get (| "tail" |)
              |) in
            let _ :=
              M.declare (|
                ["end"],
                M.get (| "pos" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_struct_S",
          ["value"; "pos"],
          ["end"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["memberValue0"],
                M.call (|
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
                |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "pos" |);
                      [Literal.number 0x00]
                    ]
                  |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "tail" |);
                      M.get (| "pos" |)
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "abi_encode_array_string_dyn",
                  [
                    M.get (| "memberValue0" |);
                    M.get (| "tail" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["end"],
                M.get (| "tail" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_struct_S_memory_ptr",
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
              |) in
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "abi_encode_struct_S",
                  [
                    M.get (| "value0" |);
                    M.get (| "tail" |)
                  ]
                |)
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
                  "abi_encode_struct_S_memory_ptr",
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
          "finalize_allocation",
          ["memPtr"; "size"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["newFreePtr"],
                M.call (|
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
                |)
              |) in
            let _ :=
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
                "mstore",
                [
                  [Literal.number 64];
                  M.get (| "newFreePtr" |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_memory",
          ["size"],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_unbounded",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "finalize_allocation",
                [
                  M.get (| "memPtr" |);
                  M.get (| "size" |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_memory_struct_struct_S",
          [],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_memory",
                  [
                    [Literal.number 32]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "zero_value_for_array_string_dyn",
          [],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["ret"],
                [Literal.number 96]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_and_zero_memory_struct_struct_S",
          [],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_memory_struct_struct_S",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["offset"],
                M.get (| "memPtr" |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "offset" |);
                  M.call (|
                    "zero_value_for_array_string_dyn",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["offset"],
                M.call (|
                  "add",
                  [
                    M.get (| "offset" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "zero_value_for_split_struct_S",
          [],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["ret"],
                M.call (|
                  "allocate_and_zero_memory_struct_struct_S",
                  [

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
          ["var_mpos"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_struct_S_mpos"],
                M.call (|
                  "zero_value_for_split_struct_S",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_mpos"],
                M.get (| "zero_struct_S_mpos" |)
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a26469706673582212202bb493192bc15bf8a54ac39737e0f3028106c89c17c40fa719d8b331408133f464736f6c634300081b0033".
  End C_13_deployed.
End C_13.
