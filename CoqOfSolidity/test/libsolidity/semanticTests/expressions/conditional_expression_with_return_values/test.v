(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module test_22.
  Definition code : M.t BlockUnit.t :=
    do* ltac:(M.monadic (
      M.function (|
        "allocate_unbounded",
        [],
        ["memPtr"],
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
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
        [],
        [],
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
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
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
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                []
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.assign (|
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
              M.get (| "_1" |);
              M.call (|
                "dataoffset",
                [
                  [Literal.string "746573745f32325f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "746573745f32325f6465706c6f796564"]
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
              M.get (| "_1" |);
              M.call (|
                "datasize",
                [
                  [Literal.string "746573745f32325f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module test_22_deployed.
    Definition code : M.t BlockUnit.t :=
      do* ltac:(M.monadic (
        M.function (|
          "shift_right_unsigned",
          ["value"],
          ["newValue"],
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
                [
                  [Literal.number 224];
                  M.get (| "value" |)
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "allocate_unbounded",
          [],
          ["memPtr"],
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
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
          [],
          [],
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
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
          [],
          [],
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
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "cleanup_bool",
          ["value"],
          ["cleaned"],
          do* ltac:(M.monadic (
            M.assign (|
              ["cleaned"],
              Some (M.call (|
                "iszero",
                [
                  M.call (|
                    "iszero",
                    [
                      M.get (| "value" |)
                    ]
                  |)
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "validator_revert_bool",
          ["value"],
          [],
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.call (|
                    "eq",
                    [
                      M.get (| "value" |);
                      M.call (|
                        "cleanup_bool",
                        [
                          M.get (| "value" |)
                        ]
                      |)
                    ]
                  |)
                ]
              |),
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
              M.od
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_decode_bool",
          ["offset"; "end"],
          ["value"],
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "calldataload",
                [
                  M.get (| "offset" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "validator_revert_bool",
                [
                  M.get (| "value" |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "cleanup_uint256",
          ["value"],
          ["cleaned"],
          do* ltac:(M.monadic (
            M.assign (|
              ["cleaned"],
              Some (M.get (| "value" |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "validator_revert_uint256",
          ["value"],
          [],
          do* ltac:(M.monadic (
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
              M.od
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_decode_uint256",
          ["offset"; "end"],
          ["value"],
          do* ltac:(M.monadic (
            M.assign (|
              ["value"],
              Some (M.call (|
                "calldataload",
                [
                  M.get (| "offset" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "validator_revert_uint256",
                [
                  M.get (| "value" |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_decode_boolt_uint256",
          ["headStart"; "dataEnd"],
          ["value0";
      "value1"],
          do* ltac:(M.monadic (
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
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["offset"],
              Some ([Literal.number 0])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["value0"],
              Some (M.call (|
                "abi_decode_bool",
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
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["offset_1"],
              Some ([Literal.number 32])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["value1"],
              Some (M.call (|
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
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_uint256",
          ["value"; "pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
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
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_uint256_uint256",
          ["headStart"; "value0"; "value1"],
          ["tail"],
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "add",
                [
                  M.get (| "headStart" |);
                  [Literal.number 64]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
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
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
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
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "external_fun_f",
          [],
          [],
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "callvalue",
                []
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["param"; "param_1"],
              Some (M.call (|
                "abi_decode_boolt_uint256",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    []
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["ret"; "ret_1"],
              Some (M.call (|
                "fun_f",
                [
                  M.get (| "param" |);
                  M.get (| "param_1" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["memPos"],
              Some (M.call (|
                "allocate_unbounded",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["memEnd"],
              Some (M.call (|
                "abi_encode_uint256_uint256",
                [
                  M.get (| "memPos" |);
                  M.get (| "ret" |);
                  M.get (| "ret_1" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
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
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
          [],
          [],
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
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "zero_value_for_split_uint256",
          [],
          ["ret"],
          do* ltac:(M.monadic (
            M.assign (|
              ["ret"],
              Some ([Literal.number 0])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_f",
          ["var_cond"; "var_v"],
          ["var_a";
      "var_b"],
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_uint256"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_a"],
              Some (M.get (| "zero_uint256" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_t_uint256"],
              Some (M.call (|
                "zero_value_for_split_uint256",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_b"],
              Some (M.get (| "zero_t_uint256" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_1"],
              Some (M.get (| "var_cond" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.get (| "_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_1"],
              None
            |)
          )) in
          do* ltac:(M.monadic (
            M.switch (|
              M.get (| "expr" |),
              [
                (
                  Some (Literal.number 0),
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["_2"],
                      Some (M.get (| "var_v" |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["expr_2"],
                      Some (M.get (| "_2" |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["var_b"],
                      Some (M.get (| "expr_2" |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["expr_3"],
                      Some (M.get (| "expr_2" |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["expr_1"],
                      Some (M.get (| "expr_3" |))
                    |)
                  )) in
                  M.od
                );
                (
                  None,
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["_3"],
                      Some (M.get (| "var_v" |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["expr_4"],
                      Some (M.get (| "_3" |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["var_a"],
                      Some (M.get (| "expr_4" |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["expr_5"],
                      Some (M.get (| "expr_4" |))
                    |)
                  )) in
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["expr_1"],
                      Some (M.get (| "expr_5" |))
                    |)
                  )) in
                  M.od
                )        ]
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
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
            do* ltac:(M.monadic (
              M.assign (|
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
                M.get (| "selector" |),
                [
                  (
                    Some (Literal.number 0x9a883c3d),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_f",
                          []
                        |)
                      |)
                    )) in
                    M.od
                  );
                  (
                    None,
                    M.od
                  )          ]
              |)
            )) in
            M.od
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
        M.od
      )) in
      M.od.

    Definition data : string :=
      "a2646970667358221220dc8746175ab10a4832ec011c7db6a18266962e3cc6f1accc536b8c6bf4e5029064736f6c634300081b0033".
  End test_22_deployed.
End test_22.
