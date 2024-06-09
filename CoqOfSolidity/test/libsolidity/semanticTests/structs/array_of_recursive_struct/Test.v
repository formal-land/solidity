(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module Test_36.
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
                [Literal.string "546573745f33365f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "546573745f33365f6465706c6f796564"]
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
                [Literal.string "546573745f33365f6465706c6f796564"]
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

  Module Test_36_deployed.
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
                      Some (Literal.number 0xbfa814b5),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_func",
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
          "abi_encode_tuple",
          ["headStart"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_func",
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
              M.call (|
                "fun_func",
                [

                ]
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
                  "abi_encode_tuple",
                  [
                    M.get (| "memPos" |)
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
          "array_allocation_size_array_struct_RecursiveStruct",
          ["length"],
          ["size"],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "gt",
                  [
                    M.get (| "length" |);
                    [Literal.number 0xffffffffffffffff]
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
              M.declare (|
                ["size"],
                M.call (|
                  "mul",
                  [
                    M.get (| "length" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_memory_array_array_struct_RecursiveStruct",
          ["length"],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["allocSize"],
                M.call (|
                  "array_allocation_size_array_struct_RecursiveStruct",
                  [
                    M.get (| "length" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_memory",
                  [
                    M.get (| "allocSize" |)
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
          "array_allocation_size_array_struct_RecursiveStruct_dyn",
          ["length"],
          ["size"],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "gt",
                  [
                    M.get (| "length" |);
                    [Literal.number 0xffffffffffffffff]
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
              M.declare (|
                ["size"],
                M.call (|
                  "mul",
                  [
                    M.get (| "length" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["size"],
                M.call (|
                  "add",
                  [
                    M.get (| "size" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_memory_array_array_struct_RecursiveStruct_dyn",
          ["length"],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["allocSize"],
                M.call (|
                  "array_allocation_size_array_struct_RecursiveStruct_dyn",
                  [
                    M.get (| "length" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_memory",
                  [
                    M.get (| "allocSize" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "memPtr" |);
                  M.get (| "length" |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_memory_struct_struct_RecursiveStruct",
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
          "zero_value_for_array_struct_RecursiveStruct_dyn",
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
          "allocate_and_zero_memory_struct_struct_RecursiveStruct",
          [],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_memory_struct_struct_RecursiveStruct",
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
                    "zero_value_for_array_struct_RecursiveStruct_dyn",
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
          "zero_value_for_struct_RecursiveStruct",
          [],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["ret"],
                M.call (|
                  "allocate_and_zero_memory_struct_struct_RecursiveStruct",
                  [

                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "zero_complex_memory_array_array_struct_RecursiveStruct_dyn",
          ["dataStart"; "dataSizeInBytes"],
          [],
          ltac:(M.monadic (
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
                    M.get (| "dataSizeInBytes" |)
                  ]
                |),
                let _ :=
                  M.declare (|
                    ["i"],
                    M.call (|
                      "add",
                      [
                        M.get (| "i" |);
                        [Literal.number 32]
                      ]
                    |)
                  |) in
                tt,
                let _ :=
                  M.call (|
                    "mstore",
                    [
                      M.call (|
                        "add",
                        [
                          M.get (| "dataStart" |);
                          M.get (| "i" |)
                        ]
                      |);
                      M.call (|
                        "zero_value_for_struct_RecursiveStruct",
                        [

                        ]
                      |)
                    ]
                  |) in
                tt
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_and_zero_memory_array_array_struct_RecursiveStruct_dyn",
          ["length"],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_memory_array_array_struct_RecursiveStruct_dyn",
                  [
                    M.get (| "length" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["dataStart"],
                M.get (| "memPtr" |)
              |) in
            let _ :=
              M.assign (|
                ["dataSize"],
                M.call (|
                  "array_allocation_size_array_struct_RecursiveStruct_dyn",
                  [
                    M.get (| "length" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["dataStart"],
                M.call (|
                  "add",
                  [
                    M.get (| "dataStart" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["dataSize"],
                M.call (|
                  "sub",
                  [
                    M.get (| "dataSize" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "zero_complex_memory_array_array_struct_RecursiveStruct_dyn",
                [
                  M.get (| "dataStart" |);
                  M.get (| "dataSize" |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_memory_struct_struct_RecursiveStruct_storage_ptr",
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
          "write_to_memory_array_struct_RecursiveStruct_dyn",
          ["memPtr"; "value"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "memPtr" |);
                  M.get (| "value" |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "write_to_memory_struct_RecursiveStruct",
          ["memPtr"; "value"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "memPtr" |);
                  M.get (| "value" |)
                ]
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
          "array_length_array_struct_RecursiveStruct",
          ["value"],
          ["length"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["length"],
                [Literal.number 0x01]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "memory_array_index_access_struct_RecursiveStruct",
          ["baseRef"; "index"],
          ["addr"],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "lt",
                      [
                        M.get (| "index" |);
                        M.call (|
                          "array_length_array_struct_RecursiveStruct",
                          [
                            M.get (| "baseRef" |)
                          ]
                        |)
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
                ["offset"],
                M.call (|
                  "mul",
                  [
                    M.get (| "index" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["addr"],
                M.call (|
                  "add",
                  [
                    M.get (| "baseRef" |);
                    M.get (| "offset" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_t_rational_by",
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
          "convert_t_rational_by_to_t_uint256",
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
                          "cleanup_t_rational_by",
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
          "array_length_array_struct_RecursiveStruct_dyn",
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
          "panic_error_0x01",
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
                  [Literal.number 0x01]
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
          "assert_helper",
          ["condition"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.get (| "condition" |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "panic_error_0x01",
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
          "fun_func",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["expr_22_mpos"],
                M.call (|
                  "allocate_memory_array_array_struct_RecursiveStruct",
                  [
                    [Literal.number 1]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                [Literal.number 0x2a]
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.call (|
                  "convert_rational_by_to_uint256",
                  [
                    M.get (| "expr" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_20_mpos"],
                M.call (|
                  "allocate_and_zero_memory_array_array_struct_RecursiveStruct_dyn",
                  [
                    M.get (| "_1" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_21_mpos"],
                M.call (|
                  "allocate_memory_struct_struct_RecursiveStruct_storage_ptr",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "write_to_memory_array_struct_RecursiveStruct_dyn",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "expr_21_mpos" |);
                      [Literal.number 0]
                    ]
                  |);
                  M.get (| "expr_20_mpos" |)
                ]
              |) in
            let _ :=
              M.call (|
                "write_to_memory_struct_RecursiveStruct",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "expr_22_mpos" |);
                      [Literal.number 0]
                    ]
                  |);
                  M.get (| "expr_21_mpos" |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["var_val_mpos"],
                M.get (| "expr_22_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["_2_mpos"],
                M.get (| "var_val_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_25_mpos"],
                M.get (| "_2_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                [Literal.number 0x00]
              |) in
            let _ :=
              M.assign (|
                ["_3_mpos"],
                M.call (|
                  "mload",
                  [
                    M.call (|
                      "memory_array_index_access_struct_RecursiveStruct",
                      [
                        M.get (| "expr_25_mpos" |);
                        M.call (|
                          "convert_t_rational_by_to_t_uint256",
                          [
                            M.get (| "expr_1" |)
                          ]
                        |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_mpos"],
                M.get (| "_3_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["_2"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_mpos" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_mpos"],
                M.call (|
                  "mload",
                  [
                    M.get (| "_2" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_28_mpos"],
                M.get (| "_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "array_length_array_struct_RecursiveStruct_dyn",
                  [
                    M.get (| "expr_28_mpos" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                [Literal.number 0x2a]
              |) in
            let _ :=
              M.assign (|
                ["expr_4"],
                M.call (|
                  "eq",
                  [
                    M.call (|
                      "cleanup_uint256",
                      [
                        M.get (| "expr_2" |)
                      ]
                    |);
                    M.call (|
                      "convert_rational_by_to_uint256",
                      [
                        M.get (| "expr_3" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "assert_helper",
                [
                  M.get (| "expr_4" |)
                ]
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a26469706673582212200b2d643b84555fc7cd26dbfeec86cdfa5972c40877d9549bb3c202c9917a1c1064736f6c634300081b0033".
  End Test_36_deployed.
End Test_36.
