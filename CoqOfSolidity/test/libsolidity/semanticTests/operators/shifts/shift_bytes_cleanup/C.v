(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_33.
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
        |) in
      let _ :=
        M.call (|
          "return",
          [
            M.get (| "_1" |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f33335f6465706c6f796564"]
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

  Module C_33_deployed.
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
                      Some (Literal.number 0x31a39c46),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_l",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      Some (Literal.number 0x4a815d75),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_r",
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
          "validator_revert_uint8",
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
                          "cleanup_uint8",
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
          "abi_decode_uint8",
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
                "validator_revert_uint8",
                [
                  M.get (| "value" |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode_tuple_uint8",
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
                [Literal.number 0]
              |) in
            let _ :=
              M.declare (|
                ["value0"],
                M.call (|
                  "abi_decode_uint8",
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
          "cleanup_bytes20",
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
                      "not",
                      [
                        [Literal.number 0xffffffffffffffffffffffff]
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
          "abi_encode_bytes20_to_bytes20",
          ["value"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_bytes20",
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
          "abi_encode_bytes20",
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
                "abi_encode_bytes20_to_bytes20",
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
          "external_fun_l",
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
                  "abi_decode_tuple_uint8",
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
                  "fun_l",
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
                  "abi_encode_bytes20",
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
          "external_fun_r",
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
                  "abi_decode_tuple_uint8",
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
                  "fun_r",
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
                  "abi_encode_bytes20",
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
          "zero_value_for_split_bytes20",
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
          "shift_left_dynamic",
          ["bits"; "value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shl",
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
          "shift_left_bytes20_uint8",
          ["value"; "bits"],
          ["result"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["bits"],
                M.call (|
                  "cleanup_uint8",
                  [
                    M.get (| "bits" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["result"],
                M.call (|
                  "cleanup_bytes20",
                  [
                    M.call (|
                      "shift_left_dynamic",
                      [
                        M.get (| "bits" |);
                        M.call (|
                          "cleanup_bytes20",
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
          "fun_l",
          ["var_y"],
          ["var"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_bytes20"],
                M.call (|
                  "zero_value_for_split_bytes20",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "zero_bytes20" |)
              |) in
            let _ :=
              M.assign (|
                ["var_x"],
                Literal.undefined
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes20_1"],
                M.call (|
                  "zero_value_for_split_bytes20",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_x"],
                M.get (| "zero_bytes20_1" |)
              |) in
            let _ :=
              M.declare (|
                ["var_x"],
                [Literal.string "31323334353637383930313233343536373839306162636465"]
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.get (| "var_x" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.get (| "_1" |)
              |) in
            let _ :=
              M.assign (|
                ["_2"],
                M.get (| "var_y" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.get (| "_2" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "shift_left_bytes20_uint8",
                  [
                    M.get (| "expr" |);
                    M.get (| "expr_1" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr_2" |)
              |) in
            let _ :=
              M.leave (||) in
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
          "shift_right_bytes20_uint8",
          ["value"; "bits"],
          ["result"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["bits"],
                M.call (|
                  "cleanup_uint8",
                  [
                    M.get (| "bits" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["result"],
                M.call (|
                  "cleanup_bytes20",
                  [
                    M.call (|
                      "shift_right_unsigned_dynamic",
                      [
                        M.get (| "bits" |);
                        M.call (|
                          "cleanup_bytes20",
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
          "fun_r",
          ["var_y"],
          ["var_"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_bytes20"],
                M.call (|
                  "zero_value_for_split_bytes20",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_"],
                M.get (| "zero_bytes20" |)
              |) in
            let _ :=
              M.assign (|
                ["var_x"],
                Literal.undefined
              |) in
            let _ :=
              M.assign (|
                ["zero_t_bytes20"],
                M.call (|
                  "zero_value_for_split_bytes20",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_x"],
                M.get (| "zero_t_bytes20" |)
              |) in
            let _ :=
              M.declare (|
                ["var_x"],
                [Literal.string "31323334353637383930313233343536373839306162636465"]
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.get (| "var_x" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.get (| "_1" |)
              |) in
            let _ :=
              M.assign (|
                ["_2"],
                M.get (| "var_y" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.get (| "_2" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "shift_right_bytes20_uint8",
                  [
                    M.get (| "expr" |);
                    M.get (| "expr_1" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_"],
                M.get (| "expr_2" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a2646970667358221220f44ff5ab9bba5cf03933eede873997bcaf5311de8ac6dccec03756a293105cb364736f6c634300081b0033".
  End C_33_deployed.
End C_33.
