(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_37.
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
                  [Literal.string "435f33375f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f33375f6465706c6f796564"]
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
                  [Literal.string "435f33375f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_37_deployed.
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
          "abi_encode_uint256_to_uint256",
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
          "abi_encode_uint256",
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
                "abi_encode_uint256",
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
          "external_fun_t",
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
                "fun_t",
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
                "abi_encode_uint256",
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
          "convert_function_internal_pure_returns_uint256_to_function_internal_nonpayable_returns_uint",
          ["functionId"],
          ["outFunctionId"],
          do* ltac:(M.monadic (
            M.assign (|
              ["outFunctionId"],
              Some (M.get (| "functionId" |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_f",
          [],
          ["var_"],
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
              ["var_"],
              Some (M.get (| "zero_uint256" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_23_functionIdentifier"],
              Some ([Literal.number 1])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_self_functionIdentifier"],
              Some (M.call (|
                "convert_function_internal_pure_returns_uint256_to_function_internal_nonpayable_returns_uint",
                [
                  M.get (| "expr_23_functionIdentifier" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.call (|
                "fun_g",
                [
                  M.get (| "expr_self_functionIdentifier" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_"],
              Some (M.get (| "expr" |))
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
          "convert_rational_by_to_uint256",
          ["value"],
          ["converted"],
          do* ltac:(M.monadic (
            M.assign (|
              ["converted"],
              Some (M.call (|
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
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_t",
          [],
          ["var"],
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
              ["var"],
              Some (M.get (| "zero_uint256" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some ([Literal.number 0x07])
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.call (|
                "convert_rational_by_to_uint256",
                [
                  M.get (| "expr" |)
                ]
              |))
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
          "fun_g",
          ["var_functionIdentifier"],
          ["var"],
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
              ["var"],
              Some (M.get (| "zero_t_uint256" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["_functionIdentifier"],
              Some (M.get (| "var_functionIdentifier" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr_functionIdentifier"],
              Some (M.get (| "_functionIdentifier" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.call (|
                "dispatch_internal_in_out",
                [
                  M.get (| "expr_functionIdentifier" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var"],
              Some (M.get (| "expr" |))
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
          "panic_error_0x51",
          [],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
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
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  [Literal.number 4];
                  [Literal.number 0x51]
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0x24]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "dispatch_internal_in_out",
          ["fun"],
          ["out"],
          do* ltac:(M.monadic (
            M.switch (|
              M.get (| "fun" |),
              [
                (
                  Some (Literal.number 1),
                  do* ltac:(M.monadic (
                    M.assign (|
                      ["out"],
                      Some (M.call (|
                        "fun_t",
                        []
                      |))
                    |)
                  )) in
                  M.od
                );
                (
                  None,
                  do* ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call (|
                        "panic_error_0x51",
                        []
                      |)
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
                    Some (Literal.number 0x92d0d153),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_t",
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
      "a2646970667358221220ec038f4ba94384b432d3c0c75b769b060a91cdaddd8c08eab06d1918834a4c6664736f6c634300081b0033".
  End C_37_deployed.
End C_37.
