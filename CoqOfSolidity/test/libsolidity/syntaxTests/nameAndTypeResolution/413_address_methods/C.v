(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_48.
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
                [Literal.string "435f34385f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f34385f6465706c6f796564"]
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
                [Literal.string "435f34385f6465706c6f796564"]
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

  Module C_48_deployed.
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
              M.call (|
                "fun_f",
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
          "zero_value_for_split_address_payable",
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
          "cleanup_uint160",
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
                    M.call (|
                      "sub",
                      [
                        M.call (|
                          "shl",
                          [
                            [Literal.number 160];
                            [Literal.number 1]
                          ]
                        |);
                        [Literal.number 1]
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
          "convert_uint160_to_uint160",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "cleanup_uint160",
                  [
                    M.call (|
                      "identity",
                      [
                        M.call (|
                          "cleanup_uint160",
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
          "convert_uint160_to_address",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "convert_uint160_to_uint160",
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
          "convert_address_payable_to_address",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "convert_uint160_to_address",
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
          "array_storeLengthForEncoding_bytes_nonPadded_inplace",
          ["pos"; "length"],
          ["updated_pos"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["updated_pos"],
                M.get (| "pos" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_stringliteral_c5d2",
          ["pos"],
          ["end"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["pos"],
                M.call (|
                  "array_storeLengthForEncoding_bytes_nonPadded_inplace",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["end"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_packed_stringliteral_c5d2",
          ["pos"],
          ["end"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["pos"],
                M.call (|
                  "abi_encode_stringliteral_c5d2",
                  [
                    M.get (| "pos" |)
                  ]
                |)
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
          "array_allocation_size_bytes",
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
          "allocate_memory_array_bytes",
          ["length"],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["allocSize"],
                M.call (|
                  "array_allocation_size_bytes",
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
          "zero_value_for_split_bytes",
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
          "extract_returndata",
          [],
          ["data"],
          ltac:(M.monadic (
            let _ :=
              M.switch (|
                M.call (|
                  "returndatasize",
                  [

                  ]
                |),
                [
                  (
                    Some (Literal.number 0),
                    ltac:(M.monadic (
                      let _ :=
                        M.declare (|
                          ["data"],
                          M.call (|
                            "zero_value_for_split_bytes",
                            [

                            ]
                          |)
                        |) in
                      tt
                    ))            );
                  (
                    None,
                    ltac:(M.monadic (
                      let _ :=
                        M.declare (|
                          ["data"],
                          M.call (|
                            "allocate_memory_array_bytes",
                            [
                              M.call (|
                                "returndatasize",
                                [

                                ]
                              |)
                            ]
                          |)
                        |) in
                      let _ :=
                        M.call (|
                          "returndatacopy",
                          [
                            M.call (|
                              "add",
                              [
                                M.get (| "data" |);
                                [Literal.number 0x20]
                              ]
                            |);
                            [Literal.number 0];
                            M.call (|
                              "returndatasize",
                              [

                              ]
                            |)
                          ]
                        |) in
                      tt
                    ))            )          ]
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
          "revert_forward",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["pos"],
                M.call (|
                  "allocate_unbounded",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "returndatacopy",
                [
                  M.get (| "pos" |);
                  [Literal.number 0];
                  M.call (|
                    "returndatasize",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.call (|
                "revert",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "returndatasize",
                    [

                    ]
                  |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_f",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["var_addr"],
                Literal.undefined
              |) in
            let _ :=
              M.assign (|
                ["zero_address_payable"],
                M.call (|
                  "zero_value_for_split_address_payable",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_addr"],
                M.get (| "zero_address_payable" |)
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.get (| "var_addr" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.get (| "_1" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_14_address"],
                M.call (|
                  "convert_address_payable_to_address",
                  [
                    M.get (| "expr" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_2"],
                M.call (|
                  "allocate_unbounded",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_3"],
                M.call (|
                  "sub",
                  [
                    M.call (|
                      "abi_encode_packed_stringliteral_c5d2",
                      [
                        M.get (| "_2" |)
                      ]
                    |);
                    M.get (| "_2" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "pop",
                [
                  M.call (|
                    "call",
                    [
                      M.call (|
                        "gas",
                        [

                        ]
                      |);
                      M.get (| "expr_14_address" |);
                      [Literal.number 0];
                      M.get (| "_2" |);
                      M.get (| "_3" |);
                      [Literal.number 0];
                      [Literal.number 0]
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.call (|
                "pop",
                [
                  M.call (|
                    "extract_returndata",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["_4"],
                M.get (| "var_addr" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.get (| "_4" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_21_address"],
                M.call (|
                  "convert_address_payable_to_address",
                  [
                    M.get (| "expr_1" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_5"],
                M.call (|
                  "allocate_unbounded",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["_6"],
                M.call (|
                  "sub",
                  [
                    M.call (|
                      "abi_encode_packed_stringliteral_c5d2",
                      [
                        M.get (| "_5" |)
                      ]
                    |);
                    M.get (| "_5" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "pop",
                [
                  M.call (|
                    "delegatecall",
                    [
                      M.call (|
                        "gas",
                        [

                        ]
                      |);
                      M.get (| "expr_21_address" |);
                      M.get (| "_5" |);
                      M.get (| "_6" |);
                      [Literal.number 0];
                      [Literal.number 0]
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.call (|
                "pop",
                [
                  M.call (|
                    "extract_returndata",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["_7"],
                M.get (| "var_addr" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.get (| "_7" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_address"],
                M.call (|
                  "convert_address_payable_to_address",
                  [
                    M.get (| "expr_2" |)
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
                ["_8"],
                [Literal.number 0]
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "convert_rational_by_to_uint256",
                      [
                        M.get (| "expr_3" |)
                      ]
                    |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.declare (|
                      ["_8"],
                      [Literal.number 2300]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.call (|
                "pop",
                [
                  M.call (|
                    "call",
                    [
                      M.get (| "_8" |);
                      M.get (| "expr_address" |);
                      M.call (|
                        "convert_rational_by_to_uint256",
                        [
                          M.get (| "expr_3" |)
                        ]
                      |);
                      [Literal.number 0];
                      [Literal.number 0];
                      [Literal.number 0];
                      [Literal.number 0]
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["_9"],
                M.get (| "var_addr" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_4"],
                M.get (| "_9" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_34_address"],
                M.call (|
                  "convert_address_payable_to_address",
                  [
                    M.get (| "expr_4" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_5"],
                [Literal.number 0x01]
              |) in
            let _ :=
              M.assign (|
                ["_10"],
                [Literal.number 0]
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "convert_rational_by_to_uint256",
                      [
                        M.get (| "expr_5" |)
                      ]
                    |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.declare (|
                      ["_10"],
                      [Literal.number 2300]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.assign (|
                ["_11"],
                M.call (|
                  "call",
                  [
                    M.get (| "_10" |);
                    M.get (| "expr_34_address" |);
                    M.call (|
                      "convert_rational_by_to_uint256",
                      [
                        M.get (| "expr_5" |)
                      ]
                    |);
                    [Literal.number 0];
                    [Literal.number 0];
                    [Literal.number 0];
                    [Literal.number 0]
                  ]
                |)
              |) in
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.get (| "_11" |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_forward",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a26469706673582212204f5bd13974adc29142b59b3541e159bd2f860da6563bf876c4c25f5e4991ee1764736f6c634300081b0033".
  End C_48_deployed.
End C_48.
