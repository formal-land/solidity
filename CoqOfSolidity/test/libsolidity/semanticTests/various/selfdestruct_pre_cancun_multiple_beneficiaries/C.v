(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_22.
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
                [Literal.string "435f32325f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f32325f6465706c6f796564"]
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
                [Literal.string "435f32325f6465706c6f796564"]
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
    tt
  )).

  Module C_22_deployed.
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
              "iszero",
              [
                M.call (|
                  "lt",
                  [
                    M.call (|
                      "calldatasize",
                      [

                      ]
                    |);
                    [Literal.number 4]
                  ]
                |)
              ]
            |),
            ltac:(M.monadic (
              let _ :=
                M.assign (|
                  ["selector"],
                  M.call (|
                    "shift_right_unsigned",
                    [
                      M.call (|
                        "calldataload",
                        [
                          [Literal.number 0]
                        ]
                      |)
                    ]
                  |)
                |) in
              let _ :=
                M.switch (|
                  M.get (| "selector" |),
                  [
                    (
                      Some (Literal.number 0xedb45529),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_terminate",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      None,
                      ltac:(M.monadic (
                        tt
                      ))              )            ]
                |) in
              tt
            ))
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
          "shift_right_unsigned",
          ["value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shr",
                  [
                    [Literal.number 224];
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
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
          "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
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
          "cleanup_uint160",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.call (|
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
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_address",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.call (|
                  "cleanup_uint160",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "validator_revert_address",
          ["value"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "eq",
                      [
                        M.get (| "value" |);
                        M.call (|
                          "cleanup_address",
                          [
                            M.get (| "value" |)
                          ]
                        |)
                      ]
                    |)
                  ]
                |),
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
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode_address",
          ["offset"; "end"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["value"],
                M.call (|
                  "calldataload",
                  [
                    M.get (| "offset" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "validator_revert_address",
                [
                  M.get (| "value" |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode_tuple_address",
          ["headStart"; "dataEnd"],
          ["value0"],
          ltac:(M.monadic (
            let _ :=
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
                    [Literal.number 32]
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.assign (|
                ["offset"],
                [Literal.number 0]
              |) in
            let _ :=
              M.declare (|
                ["value0"],
                M.call (|
                  "abi_decode_address",
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
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_tuple",
          ["headStart"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_terminate",
          [],
          [],
          ltac:(M.monadic (
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
              M.assign (|
                ["param"],
                M.call (|
                  "abi_decode_tuple_address",
                  [
                    [Literal.number 4];
                    M.call (|
                      "calldatasize",
                      [

                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "fun_terminate",
                [
                  M.get (| "param" |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["memPos"],
                M.call (|
                  "allocate_unbounded",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["memEnd"],
                M.call (|
                  "abi_encode_tuple",
                  [
                    M.get (| "memPos" |)
                  ]
                |)
              |) in
            let _ :=
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
              |) in
            tt
          ))
        |) in
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
          "convert_uint160_to_uint160",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
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
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "convert_uint160_to_address_payable",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "convert_uint160_to_uint160",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "convert_address_to_address_payable",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "convert_uint160_to_address_payable",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "panic_error_0x01",
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
                  [Literal.number 0x01]
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
          "assert_helper",
          ["condition"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "iszero",
                  [
                    M.get (| "condition" |)
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "panic_error_0x01",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_terminate",
          ["var_beneficiary"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["_1"],
                M.get (| "var_beneficiary" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.get (| "_1" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.call (|
                  "convert_address_to_address_payable",
                  [
                    M.get (| "expr" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "selfdestruct",
                [
                  M.get (| "expr_1" |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                [Literal.number 0x00]
              |) in
            let _ :=
              M.call (|
                "assert_helper",
                [
                  M.get (| "expr_2" |)
                ]
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a26469706673582212200db2c6acd54b300973e7571cf55960555bdab3580c14c0750f88475f3d441a6564736f6c634300081b0033".
  End C_22_deployed.
End C_22.
