(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_31.
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
                  [Literal.string "435f33315f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f33315f6465706c6f796564"]
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
                  [Literal.string "435f33315f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_31_deployed.
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
          "abi_decode",
          ["headStart"; "dataEnd"],
          [],
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
                  [Literal.number 0]
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
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "cleanup_uint160",
          ["value"],
          ["cleaned"],
          do* ltac:(M.monadic (
            M.assign (|
              ["cleaned"],
              Some (M.call (|
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
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "cleanup_address",
          ["value"],
          ["cleaned"],
          do* ltac:(M.monadic (
            M.assign (|
              ["cleaned"],
              Some (M.call (|
                "cleanup_uint160",
                [
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
          "abi_encode_address",
          ["value"; "pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_address",
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
          "abi_encode_tuple_address",
          ["headStart"; "value0"],
          ["tail"],
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "add",
                [
                  M.get (| "headStart" |);
                  [Literal.number 32]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_address",
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
            M.assign (|
              ["ret"],
              Some (M.call (|
                "fun_f",
                []
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
                "abi_encode_tuple_address",
                [
                  M.get (| "memPos" |);
                  M.get (| "ret" |)
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
          "external_fun_g",
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
            M.assign (|
              ["ret"],
              Some (M.call (|
                "fun_g",
                []
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
                "abi_encode_tuple_address",
                [
                  M.get (| "memPos" |);
                  M.get (| "ret" |)
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
          "zero_value_for_split_address",
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
          "cleanup_rational_by",
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
          "identity",
          ["value"],
          ["ret"],
          do* ltac:(M.monadic (
            M.assign (|
              ["ret"],
              Some (M.get (| "value" |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "convert_rational_by_to_uint160",
          ["value"],
          ["converted"],
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "cleanup_uint160",
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
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "convert_rational_by_to_address",
          ["value"],
          ["converted"],
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "convert_rational_by_to_uint160",
                [
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
          "fun_f",
          [],
          ["var"],
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_t_address"],
              Some (M.call (|
                "zero_value_for_split_address",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "zero_t_address" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.call (|
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
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_1"],
              Some (M.call (|
                "convert_rational_by_to_address",
                [
                  M.get (| "expr" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "expr_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.leave (||)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "convert_uint160_to_uint160",
          ["value"],
          ["converted"],
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
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
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "convert_uint160_to_address",
          ["value"],
          ["converted"],
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
                "convert_uint160_to_uint160",
                [
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
          "fun_g",
          [],
          ["var_"],
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_address"],
              Some (M.call (|
                "zero_value_for_split_address",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_"],
              Some (M.get (| "zero_address" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.call (|
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
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_1"],
              Some (M.call (|
                "convert_uint160_to_address",
                [
                  M.get (| "expr" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_"],
              Some (M.get (| "expr_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.leave (||)
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
                    Some (Literal.number 0x26121ff0),
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
                    Some (Literal.number 0xe2179b8e),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_g",
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
      "a264697066735822122063e9f000dae4637ab0b19113176564f17c2471d0c42074c5cbbe256a93d60c2c64736f6c634300081b0033".
  End C_31_deployed.
End C_31.
