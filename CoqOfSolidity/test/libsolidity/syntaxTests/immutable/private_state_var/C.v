(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_48.
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
        "constructor_C",
        [],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "constructor_B",
              []
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr"],
            Some ([Literal.number 0x03])
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["_1"],
            Some (M.call (|
              "convert_rational_by_to_uint256",
              [
                M.get_var (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["_2"],
            Some (M.get_var (| "_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 160];
                M.get_var (| "_2" |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_B",
        [],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr"],
            Some (M.call (|
              "fun_f",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["_1"],
            Some (M.get_var (| "expr" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get_var (| "_1" |)
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
        "fun_f",
        [],
        ["var_"],
        do* M.open_scope in
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
            ["var_"],
            Some (M.get_var (| "zero_uint256" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr"],
            Some (M.call (|
              "fun_readX",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["var_"],
            Some (M.get_var (| "expr" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.leave (||)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "read_from_memoryt_uint256",
        ["ptr"],
        ["returnValue"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["value"],
            Some (M.call (|
              "cleanup_uint256",
              [
                M.call (|
                  "mload",
                  [
                    M.get_var (| "ptr" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["returnValue"],
            Some (M.get_var (| "value" |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "fun_readX",
        [],
        ["var"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
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
            Some (M.get_var (| "zero_t_uint256" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["_1"],
            Some (M.call (|
              "read_from_memoryt_uint256",
              [
                [Literal.number 128]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr"],
            Some (M.get_var (| "_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["var"],
            Some (M.get_var (| "expr" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.leave (||)
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
                  [Literal.number 0xc0]
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
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "setimmutable",
            [
              M.get_var (| "_1" |);
              [Literal.string "34"];
              M.call (|
                "mload",
                [
                  [Literal.number 128]
                ]
              |)
            ]
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "setimmutable",
            [
              M.get_var (| "_1" |);
              [Literal.string "3239"];
              M.call (|
                "mload",
                [
                  [Literal.number 160]
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
                  [Literal.string "435f34385f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.close_scope
    )) in
    M.close_scope.

  Module C_48_deployed.
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
      "a2646970667358221220c1f2aa492bdbe162eb8a16158468e648f49194669fddaf1157a7708b0b335a9764736f6c634300081b0033".
  End C_48_deployed.
End C_48.
