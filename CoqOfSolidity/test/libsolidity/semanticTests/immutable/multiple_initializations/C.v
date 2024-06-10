(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_74.
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
        "convert_rational_4_by_1_to_uint256",
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
        "constructor_C",
        [],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some ([Literal.number 0x04])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some (M.call (|
              "convert_rational_4_by_1_to_uint256",
              [
                M.get (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2"],
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
            ["expr_1"],
            Some (M.call (|
              "checked_add_uint256",
              [
                M.get (| "_2" |);
                M.get (| "_1" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.get (| "expr_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_3" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_4"],
            Some (M.get (| "expr_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "constructor_B",
              [
                M.get (| "_4" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_t_rational_by_1",
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
        "convert_rational_8_by_1_to_uint256",
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
                      "cleanup_t_rational_by_1",
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
        "constructor_B",
        ["var"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some ([Literal.number 0x08])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some (M.call (|
              "convert_rational_8_by_1_to_uint256",
              [
                M.get (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2"],
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
            ["expr_1"],
            Some (M.call (|
              "checked_add_uint256",
              [
                M.get (| "_2" |);
                M.get (| "_1" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.get (| "expr_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_3" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_4"],
            Some (M.get (| "expr_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "constructor_A",
              [
                M.get (| "_4" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_rational_1_by",
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
        "convert_rational_1_by_1_to_uint256",
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
                      "cleanup_rational_1_by",
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
        "cleanup_rational_2_by",
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
        "convert_rational_2_by_1_to_uint256",
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
                      "cleanup_rational_2_by",
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
        "cleanup_rational_16_by",
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
        "convert_rational_16_by_1_to_uint256",
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
                      "cleanup_rational_16_by",
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
        "modifier_m_18",
        ["var_"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some ([Literal.number 0x10])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some (M.call (|
              "convert_rational_16_by_1_to_uint256",
              [
                M.get (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2"],
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
            ["expr_1"],
            Some (M.call (|
              "checked_add_uint256",
              [
                M.get (| "_2" |);
                M.get (| "_1" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.get (| "expr_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_3" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "modifier_m",
              [
                M.get (| "var_" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_t_rational_by",
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
        "convert_rational_32_by_1_to_uint256",
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
                      "cleanup_t_rational_by",
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
        "modifier_m",
        ["var"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some ([Literal.number 0x20])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some (M.call (|
              "convert_rational_32_by_1_to_uint256",
              [
                M.get (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2"],
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
            ["expr_1"],
            Some (M.call (|
              "checked_add_uint256",
              [
                M.get (| "_2" |);
                M.get (| "_1" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.get (| "expr_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_3" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "fun_inner",
              [
                M.get (| "var" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "cleanup_rational_64_by",
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
        "convert_t_rational_by_to_t_uint256",
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
                      "cleanup_rational_64_by",
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
        "cleanup_rational_by_1",
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
                      "cleanup_rational_by_1",
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
        "fun_inner",
        ["var"],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some ([Literal.number 0x40])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some (M.call (|
              "convert_t_rational_by_to_t_uint256",
              [
                M.get (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2"],
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
            ["expr_1"],
            Some (M.call (|
              "checked_add_uint256",
              [
                M.get (| "_2" |);
                M.get (| "_1" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.get (| "expr_1" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_3" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_2"],
            Some ([Literal.number 0x80])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_4"],
            Some (M.call (|
              "convert_rational_by_to_uint256",
              [
                M.get (| "expr_2" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_5"],
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
            ["expr_3"],
            Some (M.call (|
              "checked_add_uint256",
              [
                M.get (| "_5" |);
                M.get (| "_4" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_6"],
            Some (M.get (| "expr_3" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_6" |)
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_A",
        ["var"],
        [],
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
            Some ([Literal.number 0x01])
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
                  "convert_rational_1_by_1_to_uint256",
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
            ["_2"],
            Some (M.get (| "expr_2" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_2" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_3"],
            Some ([Literal.number 0x02])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.call (|
              "convert_rational_2_by_1_to_uint256",
              [
                M.get (| "expr_3" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_4"],
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
            ["expr_4"],
            Some (M.call (|
              "checked_add_uint256",
              [
                M.get (| "_4" |);
                M.get (| "_3" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_5"],
            Some (M.get (| "expr_4" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_5" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_6"],
            Some (M.get (| "expr_4" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 160];
                M.get (| "_6" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "modifier_m_18",
              [
                M.get (| "var" |)
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
                  [Literal.string "435f37345f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f37345f6465706c6f796564"]
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
              [Literal.string "35"];
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
              M.get (| "_1" |);
              [Literal.string "3130"];
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
              M.get (| "_1" |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f37345f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_74_deployed.
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
          "external_fun_get",
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
                "fun_get",
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
          "fun_get",
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
                "loadimmutable",
                [
                  [Literal.string "35"]
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
                    Some (Literal.number 0x6d4ce63c),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_get",
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
      "a26469706673582212207a6a605a8c204684dcc87272220b998aa27a2a767816b1b419692b7e6b11f98164736f6c634300081b0033".
  End C_74_deployed.
End C_74.
