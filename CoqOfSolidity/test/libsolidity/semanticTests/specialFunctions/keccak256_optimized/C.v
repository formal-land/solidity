(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_58.
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
        |) in
      let _ :=
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

  Module C_58_deployed.
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
                      Some (Literal.number 0x07bfce37),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_long",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      Some (Literal.number 0x38bea4cb),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_short",
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
          "abi_encode_bool_bool",
          ["headStart"; "value0"; "value1"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 64]
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
            let _ :=
              M.call (|
                "abi_encode_bool_to_bool",
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_long",
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
                ["ret"; "ret_1"],
                M.call (|
                  "fun_long",
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
                  "abi_encode_bool_bool",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |);
                    M.get (| "ret_1" |)
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
          "external_fun_short",
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
                  "fun_short",
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
          "array_allocation_size_string",
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
                  "round_up_to_mul_of",
                  [
                    M.get (| "length" |)
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
          "allocate_memory_array_string",
          ["length"],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["allocSize"],
                M.call (|
                  "array_allocation_size_string",
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
          "store_literal_in_memory_87aadf684ae74d0d1012da1fe1dd20022602c5e4a681cb7b5b140ab7314c20f4",
          ["memPtr"],
          [],
          ltac:(M.monadic (
            let _ :=
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
                  [Literal.string "6162636465666768696a6b6c6d6e6162636465666768696a6b6c6d6e61626364"]
                ]
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 32]
                    ]
                  |);
                  [Literal.string "65666768696a6b6c6d6e6162636465666768696a6b6c6d6e6162636465666768"]
                ]
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 64]
                    ]
                  |);
                  [Literal.string "696a6b6c6d6e6162636465666768696a6b6c6d6e6162636465666768696a6b6c"]
                ]
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 96]
                    ]
                  |);
                  [Literal.string "6d6e6162636465666768696a6b6c6d6e6162636465666768696a6b6c6d6e6162"]
                ]
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 128]
                    ]
                  |);
                  [Literal.string "636465666768696a6b6c6d6e6162636465666768696a6b6c6d6e616263646566"]
                ]
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 160]
                    ]
                  |);
                  [Literal.string "6768696a6b6c6d6e6162636465666768696a6b6c6d6e6162636465666768696a"]
                ]
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 192]
                    ]
                  |);
                  [Literal.string "6b6c6d6e6162636465666768696a6b6c6d6e6162636465666768696a6b6c6d6e"]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "copy_literal_to_memory_87aadf684ae74d0d1012da1fe1dd20022602c5e4a681cb7b5b140ab7314c20f4",
          [],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_memory_array_string",
                  [
                    [Literal.number 224]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "store_literal_in_memory_87aadf684ae74d0d1012da1fe1dd20022602c5e4a681cb7b5b140ab7314c20f4",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 32]
                    ]
                  |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "convert_stringliteral_87aa_to_bytes",
          [],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "copy_literal_to_memory_87aadf684ae74d0d1012da1fe1dd20022602c5e4a681cb7b5b140ab7314c20f4",
                  [

                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_dataslot_bytes",
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
          "array_length_bytes",
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
          "cleanup_bytes32",
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
          "constant_sc",
          [],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["expr"],
                [Literal.number 0x87aadf684ae74d0d1012da1fe1dd20022602c5e4a681cb7b5b140ab7314c20f4]
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.get (| "expr" |)
              |) in
            let _ :=
              M.declare (|
                ["ret"],
                M.get (| "_1" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_long",
          [],
          ["var";
      "var_"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_t_bool"],
                M.call (|
                  "zero_value_for_split_bool",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "zero_t_bool" |)
              |) in
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
                ["var_"],
                M.get (| "zero_bool" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                [Literal.number 0x87aadf684ae74d0d1012da1fe1dd20022602c5e4a681cb7b5b140ab7314c20f4]
              |) in
            let _ :=
              M.assign (|
                ["var_a"],
                M.get (| "expr" |)
              |) in
            let _ :=
              M.assign (|
                ["var_s_41_mpos"],
                M.call (|
                  "convert_stringliteral_87aa_to_bytes",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.get (| "var_a" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.get (| "_1" |)
              |) in
            let _ :=
              M.assign (|
                ["_4_mpos"],
                M.get (| "var_s_41_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_mpos"],
                M.get (| "_4_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "keccak256",
                  [
                    M.call (|
                      "array_dataslot_bytes",
                      [
                        M.get (| "expr_mpos" |)
                      ]
                    |);
                    M.call (|
                      "array_length_bytes",
                      [
                        M.get (| "expr_mpos" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                M.call (|
                  "eq",
                  [
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_1" |)
                      ]
                    |);
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_2" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component"],
                M.get (| "expr_3" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_4"],
                M.call (|
                  "constant_sc",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_mpos"],
                M.get (| "var_s_41_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_51_mpos"],
                M.get (| "_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_5"],
                M.call (|
                  "keccak256",
                  [
                    M.call (|
                      "array_dataslot_bytes",
                      [
                        M.get (| "expr_51_mpos" |)
                      ]
                    |);
                    M.call (|
                      "array_length_bytes",
                      [
                        M.get (| "expr_51_mpos" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_6"],
                M.call (|
                  "eq",
                  [
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_4" |)
                      ]
                    |);
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_5" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component_1"],
                M.get (| "expr_6" |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr_component" |)
              |) in
            let _ :=
              M.declare (|
                ["var_"],
                M.get (| "expr_component_1" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "store_literal_in_memory_714ca11c6570be5ffda7d124d6147fdac7143854ceec34e01b2356d67468743e",
          ["memPtr"],
          [],
          ltac:(M.monadic (
            let _ :=
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
                  [Literal.string "6162636465666768696a6b6c6d6e"]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "copy_literal_to_memory_714ca11c6570be5ffda7d124d6147fdac7143854ceec34e01b2356d67468743e",
          [],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "allocate_memory_array_string",
                  [
                    [Literal.number 14]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "store_literal_in_memory_714ca11c6570be5ffda7d124d6147fdac7143854ceec34e01b2356d67468743e",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 32]
                    ]
                  |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "convert_stringliteral_714c_to_bytes",
          [],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "copy_literal_to_memory_714ca11c6570be5ffda7d124d6147fdac7143854ceec34e01b2356d67468743e",
                  [

                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_short",
          [],
          ["var"],
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
                ["var"],
                M.get (| "zero_bool" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                [Literal.number 0x714ca11c6570be5ffda7d124d6147fdac7143854ceec34e01b2356d67468743e]
              |) in
            let _ :=
              M.assign (|
                ["var_a"],
                M.get (| "expr" |)
              |) in
            let _ :=
              M.assign (|
                ["var_s_mpos"],
                M.call (|
                  "convert_stringliteral_714c_to_bytes",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.get (| "var_a" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.get (| "_1" |)
              |) in
            let _ :=
              M.assign (|
                ["_9_mpos"],
                M.get (| "var_s_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_17_mpos"],
                M.get (| "_9_mpos" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "keccak256",
                  [
                    M.call (|
                      "array_dataslot_bytes",
                      [
                        M.get (| "expr_17_mpos" |)
                      ]
                    |);
                    M.call (|
                      "array_length_bytes",
                      [
                        M.get (| "expr_17_mpos" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                M.call (|
                  "eq",
                  [
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_1" |)
                      ]
                    |);
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_2" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr_3" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a26469706673582212205264ead610819b405d025e2f631b9a8c3ac5cb88156c4560b2c43241f669d2c064736f6c634300081b0033".
  End C_58_deployed.
End C_58.
