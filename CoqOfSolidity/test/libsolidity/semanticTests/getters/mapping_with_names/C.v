(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_19.
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
        M.call (|
          "constructor_C",
          [

          ]
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
                [Literal.string "435f31395f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f31395f6465706c6f796564"]
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
                [Literal.string "435f31395f6465706c6f796564"]
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
    let _ :=
      M.function (|
        "cleanup_rational_by_1",
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
                        "cleanup_rational_by_1",
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
        "mapping_index_access_mapping_uint256_mapping_uint256_uint256_of_rational_by",
        ["slot"; "key"],
        ["dataSlot"],
        ltac:(M.monadic (
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 0];
                M.call (|
                  "convert_t_rational_by_to_t_uint256",
                  [
                    M.get (| "key" |)
                  ]
                |)
              ]
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 0x20];
                M.get (| "slot" |)
              ]
            |) in
          let _ :=
            M.declare (|
              ["dataSlot"],
              M.call (|
                "keccak256",
                [
                  [Literal.number 0];
                  [Literal.number 0x40]
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
        "convert_rational_2_by_1_to_uint256",
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
        "mapping_index_access_mapping_uint256_uint256_of_rational_by",
        ["slot"; "key"],
        ["dataSlot"],
        ltac:(M.monadic (
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 0];
                M.call (|
                  "convert_rational_2_by_1_to_uint256",
                  [
                    M.get (| "key" |)
                  ]
                |)
              ]
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 0x20];
                M.get (| "slot" |)
              ]
            |) in
          let _ :=
            M.declare (|
              ["dataSlot"],
              M.call (|
                "keccak256",
                [
                  [Literal.number 0];
                  [Literal.number 0x40]
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "shift_left",
        ["value"],
        ["newValue"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["newValue"],
              M.call (|
                "shl",
                [
                  [Literal.number 0];
                  M.get (| "value" |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "update_byte_slice_shift",
        ["value"; "toInsert"],
        ["result"],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["mask"],
              M.call (|
                "not",
                [
                  [Literal.number 0]
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["toInsert"],
              M.call (|
                "shift_left",
                [
                  M.get (| "toInsert" |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["value"],
              M.call (|
                "and",
                [
                  M.get (| "value" |);
                  M.call (|
                    "not",
                    [
                      M.get (| "mask" |)
                    ]
                  |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["result"],
              M.call (|
                "or",
                [
                  M.get (| "value" |);
                  M.call (|
                    "and",
                    [
                      M.get (| "toInsert" |);
                      M.get (| "mask" |)
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
        "convert_uint256_to_uint256",
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
                        "cleanup_uint256",
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
        "prepare_store_uint256",
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
        "update_storage_value_offsett_uint256_to_uint256",
        ["slot"; "value"],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["convertedValue"],
              M.call (|
                "convert_uint256_to_uint256",
                [
                  M.get (| "value" |)
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "sstore",
              [
                M.get (| "slot" |);
                M.call (|
                  "update_byte_slice_shift",
                  [
                    M.call (|
                      "sload",
                      [
                        M.get (| "slot" |)
                      ]
                    |);
                    M.call (|
                      "prepare_store_uint256",
                      [
                        M.get (| "convertedValue" |)
                      ]
                    |)
                  ]
                |)
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "constructor_C",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["expr"],
              [Literal.number 0x03]
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
              ["_slot"],
              [Literal.number 0x00]
            |) in
          let _ :=
            M.assign (|
              ["expr_slot"],
              M.get (| "_slot" |)
            |) in
          let _ :=
            M.assign (|
              ["expr_1"],
              [Literal.number 0x01]
            |) in
          let _ :=
            M.assign (|
              ["_2"],
              M.call (|
                "mapping_index_access_mapping_uint256_mapping_uint256_uint256_of_rational_by",
                [
                  M.get (| "expr_slot" |);
                  M.get (| "expr_1" |)
                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["_5_slot"],
              M.get (| "_2" |)
            |) in
          let _ :=
            M.assign (|
              ["expr_12_slot"],
              M.get (| "_5_slot" |)
            |) in
          let _ :=
            M.assign (|
              ["expr_2"],
              [Literal.number 0x02]
            |) in
          let _ :=
            M.assign (|
              ["_3"],
              M.call (|
                "mapping_index_access_mapping_uint256_uint256_of_rational_by",
                [
                  M.get (| "expr_12_slot" |);
                  M.get (| "expr_2" |)
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "update_storage_value_offsett_uint256_to_uint256",
              [
                M.get (| "_3" |);
                M.get (| "_1" |)
              ]
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module C_19_deployed.
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
                      Some (Literal.number 0x97842cce),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_x",
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
          "abi_decode_uint256",
          ["offset"; "end"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["value"],
                M.call (|
                  "calldataload",
                  [
                    M.get (| "offset" |)
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
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode_uint256t_uint256",
          ["headStart"; "dataEnd"],
          ["value0";
      "value1"],
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
                    [Literal.number 64]
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
                [Literal.number 0]
              |) in
            let _ :=
              M.declare (|
                ["value0"],
                M.call (|
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
                |)
              |) in
            let _ :=
              M.assign (|
                ["offset_1"],
                [Literal.number 32]
              |) in
            let _ :=
              M.declare (|
                ["value1"],
                M.call (|
                  "abi_decode_uint256",
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
                |)
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
          "convert_uint256_to_uint256",
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
                          "cleanup_uint256",
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
          "mapping_index_access_mapping_uint256_mapping_uint256_uint256_of_uint256",
          ["slot"; "key"],
          ["dataSlot"],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 0];
                  M.call (|
                    "convert_uint256_to_uint256",
                    [
                      M.get (| "key" |)
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 0x20];
                  M.get (| "slot" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["dataSlot"],
                M.call (|
                  "keccak256",
                  [
                    [Literal.number 0];
                    [Literal.number 0x40]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "mapping_index_access_mapping_uint256_uint256_of_uint256",
          ["slot"; "key"],
          ["dataSlot"],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 0];
                  M.call (|
                    "convert_uint256_to_uint256",
                    [
                      M.get (| "key" |)
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  [Literal.number 0x20];
                  M.get (| "slot" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["dataSlot"],
                M.call (|
                  "keccak256",
                  [
                    [Literal.number 0];
                    [Literal.number 0x40]
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
          "cleanup_from_storage_uint256",
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
          "extract_from_storage_value_dynamict_uint256",
          ["slot_value"; "offset"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["value"],
                M.call (|
                  "cleanup_from_storage_uint256",
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
          "read_from_storage_split_dynamic_uint256",
          ["slot"; "offset"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["value"],
                M.call (|
                  "extract_from_storage_value_dynamict_uint256",
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
          "getter_fun_x",
          ["key"; "key_1"],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["slot"],
                [Literal.number 0]
              |) in
            let _ :=
              M.assign (|
                ["offset"],
                [Literal.number 0]
              |) in
            let _ :=
              M.declare (|
                ["slot"],
                M.call (|
                  "mapping_index_access_mapping_uint256_mapping_uint256_uint256_of_uint256",
                  [
                    M.get (| "slot" |);
                    M.get (| "key" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["slot"],
                M.call (|
                  "mapping_index_access_mapping_uint256_uint256_of_uint256",
                  [
                    M.get (| "slot" |);
                    M.get (| "key_1" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["ret"],
                M.call (|
                  "read_from_storage_split_dynamic_uint256",
                  [
                    M.get (| "slot" |);
                    M.get (| "offset" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_uint256_to_uint256",
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
          "abi_encode_uint256",
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
                "abi_encode_uint256_to_uint256",
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
          "external_fun_x",
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
                ["param"; "param_1"],
                M.call (|
                  "abi_decode_uint256t_uint256",
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
                ["ret"],
                M.call (|
                  "getter_fun_x",
                  [
                    M.get (| "param" |);
                    M.get (| "param_1" |)
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
                  "abi_encode_uint256",
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
      tt
    )).

    Definition data : string :=
      "a26469706673582212205b2c802d2e87fd413b9ffe058c6b4496a295a300053c626343ba9f1d0494deb664736f6c634300081b0033".
  End C_19_deployed.
End C_19.
