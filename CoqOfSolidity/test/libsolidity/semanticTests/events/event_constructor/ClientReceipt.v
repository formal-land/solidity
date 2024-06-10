(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module ClientReceipt_23.
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
        "convert_stringliteral_4e03_to_bytes32",
        [],
        ["converted"],
        do* ltac:(M.monadic (
          M.assign (|
            ["converted"],
            Some (M.call (|
              "shl",
              [
                [Literal.number 232];
                [Literal.number 6382179]
              ]
            |))
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
        "convert_address_to_address",
        ["value"],
        ["converted"],
        do* ltac:(M.monadic (
          M.assign (|
            ["converted"],
            Some (M.call (|
              "convert_uint160_to_address",
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
        "cleanup_bytes32",
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
        "convert_bytes32_to_bytes32",
        ["value"],
        ["converted"],
        do* ltac:(M.monadic (
          M.assign (|
            ["converted"],
            Some (M.call (|
              "cleanup_bytes32",
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
        "abi_encode_rational_by",
        ["value"; "pos"],
        [],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                M.get (| "pos" |);
                M.call (|
                  "convert_rational_by_to_uint256",
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
        "abi_encode_tuple_rational_by",
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
              "abi_encode_rational_by",
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
        "constructor_ClientReceipt",
        [],
        [],
        do* ltac:(M.monadic (
          M.assign (|
            ["expr"],
            Some (M.call (|
              "caller",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_1"],
            Some (M.call (|
              "convert_stringliteral_4e03_to_bytes32",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["expr_2"],
            Some ([Literal.number 0x07])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_1"],
            Some ([Literal.number 0x19dacbf83c5de6658e14cbf7bcae5c15eca2eedecf1c66fbca928e4d351bea0f])
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_2"],
            Some (M.call (|
              "convert_address_to_address",
              [
                M.get (| "expr" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_3"],
            Some (M.call (|
              "convert_bytes32_to_bytes32",
              [
                M.get (| "expr_1" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_4"],
            Some (M.call (|
              "allocate_unbounded",
              []
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.assign (|
            ["_5"],
            Some (M.call (|
              "abi_encode_tuple_rational_by",
              [
                M.get (| "_4" |);
                M.get (| "expr_2" |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "log3",
              [
                M.get (| "_4" |);
                M.call (|
                  "sub",
                  [
                    M.get (| "_5" |);
                    M.get (| "_4" |)
                  ]
                |);
                M.get (| "_1" |);
                M.get (| "_2" |);
                M.get (| "_3" |)
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
        M.expr_stmt (|
          M.call (|
            "constructor_ClientReceipt",
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
                  [Literal.string "436c69656e74526563656970745f32335f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "436c69656e74526563656970745f32335f6465706c6f796564"]
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
                  [Literal.string "436c69656e74526563656970745f32335f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module ClientReceipt_23_deployed.
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
      "a2646970667358221220cfa208d7d50299e5dc22dbfff5f165d67d3133bb2a60f66580d1710c033d25d964736f6c634300081b0033".
  End ClientReceipt_23_deployed.
End ClientReceipt_23.
