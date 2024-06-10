(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_33.
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
      M.function (|
        "convert_function_internal_view_returns_uint256_to_function_internal_nonpayable_returns_uint",
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
        "constructor_C",
        [],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_functionIdentifier"],
            Some ([Literal.number 1])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2_functionIdentifier"],
            Some (M.call (|
              "convert_function_internal_view_returns_uint256_to_function_internal_nonpayable_returns_uint",
              [
                M.get (| "expr_functionIdentifier" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "constructor_B",
              [
                M.get (| "_2_functionIdentifier" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_B",
        ["var_fp_functionIdentifier"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["_functionIdentifier"],
            Some (M.get (| "var_fp_functionIdentifier" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_12_functionIdentifier"],
            Some (M.get (| "_functionIdentifier" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some (M.call (|
              "dispatch_internal_in_out",
              [
                M.get (| "expr_12_functionIdentifier" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some (M.get (| "expr" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_1" |)
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
        "read_from_memoryt_uint256",
        ["ptr"],
        ["returnValue"],
        do* ltac:(M.monadic (
          M.assign (|
            ["value"],
            Some (M.call (|
              "cleanup_uint256",
              [
                M.call (|
                  "mload",
                  [
                    M.get (| "ptr" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["returnValue"],
            Some (M.get (| "value" |))
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
        "panic_error_0x11",
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
                [Literal.number 0x11]
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
        "checked_add_uint256",
        ["x"; "y"],
        ["sum"],
        do* ltac:(M.monadic (
          M.assign (|
            ["x"],
            Some (M.call (|
              "cleanup_uint256",
              [
                M.get (| "x" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["y"],
            Some (M.call (|
              "cleanup_uint256",
              [
                M.get (| "y" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["sum"],
            Some (M.call (|
              "add",
              [
                M.get (| "x" |);
                M.get (| "y" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.if_ (|
            M.call (|
              "gt",
              [
                M.get (| "x" |);
                M.get (| "sum" |)
              ]
            |),
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "panic_error_0x11",
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
        "fun_f",
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
          M.assign (|
            ["expr"],
            Some (M.get (| "_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_1"],
            Some ([Literal.number 0x02])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_2"],
            Some (M.call (|
              "checked_add_uint256",
              [
                M.get (| "expr" |);
                M.call (|
                  "convert_rational_by_to_uint256",
                  [
                    M.get (| "expr_1" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["var"],
            Some (M.get (| "expr_2" |))
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
                      "fun_f",
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
                  [Literal.number 0xa0]
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
        M.expr_stmt (|
          M.call (|
            "constructor_C",
            []
          |)
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
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "setimmutable",
            [
              M.get (| "_1" |);
              [Literal.string "32"];
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
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_33_deployed.
    Definition code : M.t BlockUnit.t :=
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
        M.od
      )) in
      M.od.

    Definition data : string :=
      "a26469706673582212208d02cf882ea326c53b73d6bef9272ba307cf3d3bd1fc1744ef388d8709cc355564736f6c634300081b0033".
  End C_33_deployed.
End C_33.
