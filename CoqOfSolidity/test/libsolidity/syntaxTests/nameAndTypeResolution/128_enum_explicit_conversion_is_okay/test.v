(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module test_30.
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
        "panic_error_0x21",
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
                [Literal.number 0x21]
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
        "validator_assert_enum_ActionChoices",
        ["value"],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.call (|
                  "lt",
                  [
                    M.get_var (| "value" |);
                    [Literal.number 4]
                  ]
                |)
              ]
            |),
            do* M.open_scope in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "panic_error_0x21",
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
        "cleanup_enum_ActionChoices",
        ["value"],
        ["cleaned"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["cleaned"],
            Some (M.get_var (| "value" |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "validator_assert_enum_ActionChoices",
              [
                M.get_var (| "value" |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "convert_enum_ActionChoices_to_uint256",
        ["value"],
        ["converted"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["converted"],
            Some (M.call (|
              "cleanup_enum_ActionChoices",
              [
                M.get_var (| "value" |)
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "shift_left",
        ["value"],
        ["newValue"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["newValue"],
            Some (M.call (|
              "shl",
              [
                [Literal.number 0];
                M.get_var (| "value" |)
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "update_byte_slice_shift",
        ["value"; "toInsert"],
        ["result"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["mask"],
            Some (M.call (|
              "not",
              [
                [Literal.number 0]
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["toInsert"],
            Some (M.call (|
              "shift_left",
              [
                M.get_var (| "toInsert" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["value"],
            Some (M.call (|
              "and",
              [
                M.get_var (| "value" |);
                M.call (|
                  "not",
                  [
                    M.get_var (| "mask" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["result"],
            Some (M.call (|
              "or",
              [
                M.get_var (| "value" |);
                M.call (|
                  "and",
                  [
                    M.get_var (| "toInsert" |);
                    M.get_var (| "mask" |)
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
        "convert_uint256_to_uint256",
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
                      "cleanup_uint256",
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
        "prepare_store_uint256",
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
        "update_storage_value_offsett_uint256_to_uint256",
        ["slot"; "value"],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["convertedValue"],
            Some (M.call (|
              "convert_uint256_to_uint256",
              [
                M.get_var (| "value" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "sstore",
              [
                M.get_var (| "slot" |);
                M.call (|
                  "update_byte_slice_shift",
                  [
                    M.call (|
                      "sload",
                      [
                        M.get_var (| "slot" |)
                      ]
                    |);
                    M.call (|
                      "prepare_store_uint256",
                      [
                        M.get_var (| "convertedValue" |)
                      ]
                    |)
                  ]
                |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "convert_enum_ActionChoices_to_uint64",
        ["value"],
        ["converted"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["converted"],
            Some (M.call (|
              "cleanup_enum_ActionChoices",
              [
                M.get_var (| "value" |)
              ]
            |))
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "update_byte_slice_shift_0",
        ["value"; "toInsert"],
        ["result"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["mask"],
            Some (M.call (|
              "sub",
              [
                M.call (|
                  "shl",
                  [
                    [Literal.number 64];
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
            ["toInsert"],
            Some (M.call (|
              "shift_left",
              [
                M.get_var (| "toInsert" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["value"],
            Some (M.call (|
              "and",
              [
                M.get_var (| "value" |);
                M.call (|
                  "not",
                  [
                    M.get_var (| "mask" |)
                  ]
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["result"],
            Some (M.call (|
              "or",
              [
                M.get_var (| "value" |);
                M.call (|
                  "and",
                  [
                    M.get_var (| "toInsert" |);
                    M.get_var (| "mask" |)
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
        "cleanup_uint64",
        ["value"],
        ["cleaned"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["cleaned"],
            Some (M.call (|
              "and",
              [
                M.get_var (| "value" |);
                M.call (|
                  "sub",
                  [
                    M.call (|
                      "shl",
                      [
                        [Literal.number 64];
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
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "convert_uint64_to_uint64",
        ["value"],
        ["converted"],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.assign (|
            ["converted"],
            Some (M.call (|
              "cleanup_uint64",
              [
                M.call (|
                  "identity",
                  [
                    M.call (|
                      "cleanup_uint64",
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
        "prepare_store_uint64",
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
        "update_storage_value_offsett_uint64_to_uint64",
        ["slot"; "value"],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["convertedValue"],
            Some (M.call (|
              "convert_uint64_to_uint64",
              [
                M.get_var (| "value" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "sstore",
              [
                M.get_var (| "slot" |);
                M.call (|
                  "update_byte_slice_shift_0",
                  [
                    M.call (|
                      "sload",
                      [
                        M.get_var (| "slot" |)
                      ]
                    |);
                    M.call (|
                      "prepare_store_uint64",
                      [
                        M.get_var (| "convertedValue" |)
                      ]
                    |)
                  ]
                |)
              ]
            |)
          |)
        )) in
        M.close_scope
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "constructor_test",
        [],
        [],
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr"],
            Some ([Literal.number 2])
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr_1"],
            Some (M.call (|
              "convert_enum_ActionChoices_to_uint256",
              [
                M.get_var (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "update_storage_value_offsett_uint256_to_uint256",
              [
                [Literal.number 0x00];
                M.get_var (| "expr_1" |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr_2"],
            Some ([Literal.number 3])
          |)
        )) in
        do* ltac:(M.monadic (
          M.declare (|
            ["expr_3"],
            Some (M.call (|
              "convert_enum_ActionChoices_to_uint64",
              [
                M.get_var (| "expr_2" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "update_storage_value_offsett_uint64_to_uint64",
              [
                [Literal.number 0x01];
                M.get_var (| "expr_3" |)
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
            "constructor_test",
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
                  [Literal.string "746573745f33305f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "746573745f33305f6465706c6f796564"]
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
                  [Literal.string "746573745f33305f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.close_scope
    )) in
    M.close_scope.

  Module test_30_deployed.
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
      "a2646970667358221220ebc3442d20354bdb56f4dae58d3efb604c6b85c8505c6577e4b5c54da43e488e64736f6c634300081b0033".
  End test_30_deployed.
End test_30.
