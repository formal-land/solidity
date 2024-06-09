(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_32.
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
                [Literal.string "435f33325f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f33325f6465706c6f796564"]
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
                [Literal.string "435f33325f6465706c6f796564"]
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

  Module C_32_deployed.
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
                      Some (Literal.number 0x59862edc),
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
          "revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db",
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
          "revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d",
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
          "abi_decode_struct_S_calldata",
          ["offset"; "end"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "slt",
                  [
                    M.call (|
                      "sub",
                      [
                        M.get (| "end" |);
                        M.get (| "offset" |)
                      ]
                    |);
                    [Literal.number 32]
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.declare (|
                ["value"],
                M.get (| "offset" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode_struct_S_calldata_ptr",
          ["headStart"; "dataEnd"],
          ["value0"],
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
                    [Literal.number 32]
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
            let _ :=
              M.assign (|
                ["offset"],
                M.call (|
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
                |)
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "gt",
                  [
                    M.get (| "offset" |);
                    [Literal.number 0xffffffffffffffff]
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.declare (|
                ["value0"],
                M.call (|
                  "abi_decode_struct_S_calldata",
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
          "abi_encode_uint256",
          ["value"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_uint256_uint256_uint256",
          ["headStart"; "value0"; "value1"; "value2"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 96]
                  ]
                |)
              |) in
            let _ :=
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
              |) in
            let _ :=
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
              |) in
            let _ :=
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
              M.assign (|
                ["param"],
                M.call (|
                  "abi_decode_struct_S_calldata_ptr",
                  [
                    [Literal.number 4];
                    M.call (|
                      "calldatasize",
                      [

                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["ret"; "ret_1"; "ret_2"],
                M.call (|
                  "fun_f",
                  [
                    M.get (| "param" |)
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
                  "abi_encode_uint256_uint256_uint256",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |);
                    M.get (| "ret_1" |);
                    M.get (| "ret_2" |)
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
          "revert_error_356d538aaf70fba12156cc466564b792649f8f3befb07b071c91142253e175ad",
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
          "revert_error_1e55d03107e9c4f1b5e21c76a16fba166a461117ab153bcce65e6a4ea8e5fc8a",
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
          "revert_error_977805620ff29572292dee35f70b0f3f3f73d3fdd0e9f4d7a901c2e43ab18a2e",
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
          "access_calldata_tail_array_uint256_dyn_calldata",
          ["base_ref"; "ptr_to_tail"],
          ["addr";
      "length"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["rel_offset_of_tail"],
                M.call (|
                  "calldataload",
                  [
                    M.get (| "ptr_to_tail" |)
                  ]
                |)
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "slt",
                      [
                        M.get (| "rel_offset_of_tail" |);
                        M.call (|
                          "sub",
                          [
                            M.call (|
                              "sub",
                              [
                                M.call (|
                                  "calldatasize",
                                  [

                                  ]
                                |);
                                M.get (| "base_ref" |)
                              ]
                            |);
                            M.call (|
                              "sub",
                              [
                                [Literal.number 0x20];
                                [Literal.number 1]
                              ]
                            |)
                          ]
                        |)
                      ]
                    |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_356d538aaf70fba12156cc466564b792649f8f3befb07b071c91142253e175ad",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.declare (|
                ["addr"],
                M.call (|
                  "add",
                  [
                    M.get (| "base_ref" |);
                    M.get (| "rel_offset_of_tail" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["length"],
                M.call (|
                  "calldataload",
                  [
                    M.get (| "addr" |)
                  ]
                |)
              |) in
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
                      "revert_error_1e55d03107e9c4f1b5e21c76a16fba166a461117ab153bcce65e6a4ea8e5fc8a",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.declare (|
                ["addr"],
                M.call (|
                  "add",
                  [
                    M.get (| "addr" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "sgt",
                  [
                    M.get (| "addr" |);
                    M.call (|
                      "sub",
                      [
                        M.call (|
                          "calldatasize",
                          [

                          ]
                        |);
                        M.call (|
                          "mul",
                          [
                            M.get (| "length" |);
                            [Literal.number 0x20]
                          ]
                        |)
                      ]
                    |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_977805620ff29572292dee35f70b0f3f3f73d3fdd0e9f4d7a901c2e43ab18a2e",
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
          "array_length_array_uint256_dyn_calldata",
          ["value"; "len"],
          ["length"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["length"],
                M.get (| "len" |)
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
          "calldata_array_index_access_uint256_dyn_calldata",
          ["base_ref"; "length"; "index"],
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
                        M.get (| "length" |)
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
              M.declare (|
                ["addr"],
                M.call (|
                  "add",
                  [
                    M.get (| "base_ref" |);
                    M.call (|
                      "mul",
                      [
                        M.get (| "index" |);
                        [Literal.number 32]
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
          "validator_revert_uint256",
          ["value"],
          [],
          ltac:(M.monadic (
            let _ :=
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
          ))
        |) in
      let _ :=
        M.function (|
          "read_from_calldatat_uint256",
          ["ptr"],
          ["returnValue"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["value"],
                M.call (|
                  "calldataload",
                  [
                    M.get (| "ptr" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "validator_revert_uint256",
                [
                  M.get (| "value" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["returnValue"],
                M.get (| "value" |)
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
          ["var_s_offset"],
          ["var_a";
      "var_b";
      "var_c"],
          ltac:(M.monadic (
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
                ["var_a"],
                M.get (| "zero_uint256" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_uint256_1"],
                M.call (|
                  "zero_value_for_split_uint256",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_b"],
                M.get (| "zero_uint256_1" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_t_uint256"],
                M.call (|
                  "zero_value_for_split_uint256",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_c"],
                M.get (| "zero_t_uint256" |)
              |) in
            let _ :=
              M.assign (|
                ["_4_offset"],
                M.get (| "var_s_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_17_offset"],
                M.get (| "_4_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_17_offset" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_18_offset"; "expr_18_length"],
                M.call (|
                  "access_calldata_tail_array_uint256_dyn_calldata",
                  [
                    M.get (| "expr_17_offset" |);
                    M.get (| "_1" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.call (|
                  "array_length_array_uint256_dyn_calldata",
                  [
                    M.get (| "expr_18_offset" |);
                    M.get (| "expr_18_length" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component"],
                M.get (| "expr" |)
              |) in
            let _ :=
              M.assign (|
                ["_6_offset"],
                M.get (| "var_s_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_offset"],
                M.get (| "_6_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["_2"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_offset" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_21_offset"; "expr_length"],
                M.call (|
                  "access_calldata_tail_array_uint256_dyn_calldata",
                  [
                    M.get (| "expr_offset" |);
                    M.get (| "_2" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                [Literal.number 0x00]
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "read_from_calldatat_uint256",
                  [
                    M.call (|
                      "calldata_array_index_access_uint256_dyn_calldata",
                      [
                        M.get (| "expr_21_offset" |);
                        M.get (| "expr_length" |);
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
                ["expr_component_1"],
                M.get (| "expr_2" |)
              |) in
            let _ :=
              M.assign (|
                ["_offset"],
                M.get (| "var_s_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_24_offset"],
                M.get (| "_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["_3"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_24_offset" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_25_offset"; "expr_25_length"],
                M.call (|
                  "access_calldata_tail_array_uint256_dyn_calldata",
                  [
                    M.get (| "expr_24_offset" |);
                    M.get (| "_3" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                [Literal.number 0x01]
              |) in
            let _ :=
              M.assign (|
                ["expr_4"],
                M.call (|
                  "read_from_calldatat_uint256",
                  [
                    M.call (|
                      "calldata_array_index_access_uint256_dyn_calldata",
                      [
                        M.get (| "expr_25_offset" |);
                        M.get (| "expr_25_length" |);
                        M.call (|
                          "convert_rational_by_to_uint256",
                          [
                            M.get (| "expr_3" |)
                          ]
                        |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component_2"],
                M.get (| "expr_4" |)
              |) in
            let _ :=
              M.declare (|
                ["var_a"],
                M.get (| "expr_component" |)
              |) in
            let _ :=
              M.declare (|
                ["var_b"],
                M.get (| "expr_component_1" |)
              |) in
            let _ :=
              M.declare (|
                ["var_c"],
                M.get (| "expr_component_2" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a264697066735822122032bf8e4df05cea2f92f2d440e0187a29b6f7341f11c4417b54fdc080d628111664736f6c634300081b0033".
  End C_32_deployed.
End C_32.
