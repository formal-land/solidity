(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module A_12.
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
        M.call (|
          "constructor_A",
          [

          ]
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
                [Literal.string "415f31325f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "415f31325f6465706c6f796564"]
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
                [Literal.string "415f31325f6465706c6f796564"]
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
    let _ :=
      M.function (|
        "zero_value_for_split_uint256",
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
        "cleanup_rational_by",
        ["value"],
        ["cleaned"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["cleaned"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "cleanup_uint256",
        ["value"],
        ["cleaned"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["cleaned"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "identity",
        ["value"],
        ["ret"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["ret"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "convert_rational_by_to_uint256",
        ["value"],
        ["converted"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["converted"],
              M.call (|
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
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "panic_error_0x12",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
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
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 4];
                [Literal.number 0x12]
              ]
            |) in
          let _ :=
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0x24]
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "mod_uint256",
        ["x"; "y"],
        ["r"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["x"],
              M.call (|
                "cleanup_uint256",
                [
                  M.get (| "x" |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["y"],
              M.call (|
                "cleanup_uint256",
                [
                  M.get (| "y" |)
                ]
              |)
            |) in
          let _ :=
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.get (| "y" |)
                ]
              |),
              ltac:(M.monadic (
                let _ :=
                  M.call (|
                    "panic_error_0x12",
                    [

                    ]
                  |) in
                tt
              ))
            |) in
          let _ :=
            M.declare (|
              ["r"],
              M.call (|
                "mod",
                [
                  M.get (| "x" |);
                  M.get (| "y" |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "constructor_A",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["var_a"],
              Literal.undefined
            |) in
          let _ :=
            M.assign (|
              ["zero_uint256"],
              M.call (|
                "zero_value_for_split_uint256",
                [

                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["var_a"],
              M.get (| "zero_uint256" |)
            |) in
          let _ :=
            M.assign (|
              ["_1"],
              M.get (| "var_a" |)
            |) in
          let _ :=
            M.assign (|
              ["expr"],
              M.get (| "_1" |)
            |) in
          let _ :=
            M.assign (|
              ["expr_1"],
              [Literal.number 0x00]
            |) in
          let _ :=
            M.call (|
              "pop",
              [
                M.call (|
                  "mod_uint256",
                  [
                    M.get (| "expr" |);
                    M.call (|
                      "convert_rational_by_to_uint256",
                      [
                        M.get (| "expr_1" |)
                      ]
                    |)
                  ]
                |)
              ]
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module A_12_deployed.
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
          M.call (|
            "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
            [

            ]
          |) in
        tt in
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
      tt
    )).

    Definition data : string :=
      "a264697066735822122092b6f50afbead09eff9d06e2a957f0d63e35114bda528b8b2516e1954681534264736f6c634300081b0033".
  End A_12_deployed.
End A_12.
