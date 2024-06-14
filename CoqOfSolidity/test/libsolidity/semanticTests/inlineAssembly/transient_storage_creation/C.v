(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_15.
  Definition code : M.t BlockUnit.t :=
    do* M.open_scope in
    do* ltac:(M.monadic (
      M.function (|
        "allocate_unbounded",
        [],
        ["memPtr"],
        do* M.open_scope in
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
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
        [],
        [],
        do* M.open_scope in
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
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "zero_value_for_split_uint256",
        [],
        ["ret"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["ret"],
            Some ([Literal.number 0])
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_uint256",
        ["value"],
        ["cleaned"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["cleaned"],
            Some (M.get_var (| "value" |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_rational_by",
        ["value"],
        ["cleaned"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["cleaned"],
            Some (M.get_var (| "value" |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "identity",
        ["value"],
        ["ret"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["ret"],
            Some (M.get_var (| "value" |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "convert_rational_by_to_uint256",
        ["value"],
        ["converted"],
        do* M.open_scope in
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
                        M.get_var (| "value" |)
                      ]
                    |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "panic_error_0x01",
        [],
        [],
        do* M.open_scope in
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
                [Literal.number 0x01]
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
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "assert_helper",
        ["condition"],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.get_var (| "condition" |)
              ]
            |),
            do* M.open_scope in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "panic_error_0x01",
                  []
                |)
              |)
            )) in
            M.close_scope
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_C",
        [],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["var_x"],
            None
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["zero_uint256"],
            Some (M.call (|
              "zero_value_for_split_uint256",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["var_x"],
            Some (M.get_var (| "zero_uint256" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "tstore",
              [
                [Literal.number 0];
                [Literal.number 42]
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["var_x"],
            Some (M.call (|
              "tload",
              [
                [Literal.number 0]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["_1"],
            Some (M.get_var (| "var_x" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr"],
            Some (M.get_var (| "_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr_1"],
            Some ([Literal.number 0x2a])
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr_2"],
            Some (M.call (|
              "eq",
              [
                M.call (|
                  "cleanup_uint256",
                  [
                    M.get_var (| "expr" |)
                  ]
                |);
                M.call (|
                  "convert_rational_by_to_uint256",
                  [
                    M.get_var (| "expr_1" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "assert_helper",
              [
                M.get_var (| "expr_2" |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      do* M.open_scope in
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
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                []
              |)
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "constructor_C",
            []
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.declare (|
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
              M.get_var (| "_1" |);
              M.call (|
                "dataoffset",
                [
                  [Literal.string "435f31355f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f31355f6465706c6f796564"]
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
              M.get_var (| "_1" |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f31355f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.close_scope
    )) in
    M.close_scope.

  Module C_15_deployed.
    Definition code : M.t BlockUnit.t :=
      do* M.open_scope in
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
          [],
          [],
          do* M.open_scope in
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
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        do* M.open_scope in
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
          M.expr_stmt (|
            M.call (|
              "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
              []
            |)
          |)
        )) in
        M.close_scope
      )) in
      M.close_scope.

    Definition data : string :=
      "a264697066735822122052d8542a885c090ecdee336c959e963559922530a3744ca50ddc3e77d43b729064736f6c634300081b0033".
  End C_15_deployed.
End C_15.
