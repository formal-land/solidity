(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_38.
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
                [Literal.number 0xa0]
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
          "constructor_C",
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
                [Literal.string "435f33385f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f33385f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      let _ :=
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
        |) in
      let _ :=
        M.call (|
          "return",
          [
            M.get (| "_1" |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f33385f6465706c6f796564"]
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
        "constructor_C",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["expr"],
              [Literal.number 0x03]
            |) in
          let _ :=
            M.assign (|
              ["_1"],
              M.call (|
                "convert_rational_by_to_uint256",
                [
                  M.get (| "expr" |)
                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["_2"],
              M.get (| "_1" |)
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_2" |)
              ]
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module C_38_deployed.
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
                      Some (Literal.number 0x26121ff0),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_f",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      Some (Literal.number 0xacbefdb2),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_readX",
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
          "abi_decode",
          ["headStart"; "dataEnd"],
          [],
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
                    [Literal.number 0]
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
          "abi_encode_uint256_to_uint256",
          ["value"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_uint256",
          ["headStart"; "value0"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_f",
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
              M.call (|
                "abi_decode",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["ret"],
                M.call (|
                  "fun_f",
                  [

                  ]
                |)
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
                  "abi_encode_uint256",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |)
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
          "shift_left_32",
          ["value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shl",
                  [
                    [Literal.number 32];
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "shift_left",
          ["value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shl",
                  [
                    [Literal.number 64];
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "combine_external_function_id",
          ["addr"; "selector"],
          ["combined"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["combined"],
                M.call (|
                  "shift_left",
                  [
                    M.call (|
                      "or",
                      [
                        M.call (|
                          "shift_left_32",
                          [
                            M.get (| "addr" |)
                          ]
                        |);
                        M.call (|
                          "and",
                          [
                            M.get (| "selector" |);
                            [Literal.number 0xffffffff]
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
          "convert_function_external_view_returns_uint256_to_function_external_view_returns_uint",
          ["addr"; "functionId"],
          ["outAddr";
      "outFunctionId"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["outAddr"],
                M.get (| "addr" |)
              |) in
            let _ :=
              M.declare (|
                ["outFunctionId"],
                M.get (| "functionId" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_function_external_view_returns_uint256",
          ["addr"; "function_id"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["addr"; "function_id"],
                M.call (|
                  "convert_function_external_view_returns_uint256_to_function_external_view_returns_uint",
                  [
                    M.get (| "addr" |);
                    M.get (| "function_id" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "combine_external_function_id",
                    [
                      M.get (| "addr" |);
                      M.get (| "function_id" |)
                    ]
                  |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_function_external_view_returns_uint",
          ["headStart"; "value0"; "value1"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "abi_encode_function_external_view_returns_uint256",
                [
                  M.get (| "value0" |);
                  M.get (| "value1" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 0]
                    ]
                  |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_readX",
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
              M.call (|
                "abi_decode",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["ret"; "ret_1"],
                M.call (|
                  "fun_readX",
                  [

                  ]
                |)
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
                  "abi_encode_function_external_view_returns_uint",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |);
                    M.get (| "ret_1" |)
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
          "fun_f",
          [],
          ["var"],
          ltac:(M.monadic (
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
                ["var"],
                M.get (| "zero_uint256" |)
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.call (|
                  "loadimmutable",
                  [
                    [Literal.string "32"]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.get (| "_1" |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "zero_value_for_split_function_external_view_returns_uint",
          [],
          ["retAddress";
      "retFunction"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["retAddress"],
                [Literal.number 0]
              |) in
            let _ :=
              M.declare (|
                ["retFunction"],
                [Literal.number 0]
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
          "convert_uint160_to_address",
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
          "convert_contract_C_to_address",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "convert_uint160_to_address",
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
          "fun_readX",
          [],
          ["var_f_address";
      "var_f_functionSelector"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_function_external_view_returns_uint256_address"; "zero_function_external_view_returns_uint256_functionSelector"],
                M.call (|
                  "zero_value_for_split_function_external_view_returns_uint",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_f_address"],
                M.get (| "zero_function_external_view_returns_uint256_address" |)
              |) in
            let _ :=
              M.declare (|
                ["var_f_functionSelector"],
                M.get (| "zero_function_external_view_returns_uint256_functionSelector" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_32_address"],
                M.call (|
                  "address",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_address"],
                M.call (|
                  "convert_contract_C_to_address",
                  [
                    M.get (| "expr_32_address" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_functionSelector"],
                [Literal.number 0x26121ff0]
              |) in
            let _ :=
              M.declare (|
                ["var_f_address"],
                M.get (| "expr_address" |)
              |) in
            let _ :=
              M.declare (|
                ["var_f_functionSelector"],
                M.get (| "expr_functionSelector" |)
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a264697066735822122078c0d1cd5253c4527bb7d67910e08dc5979ea5b8ccc6f96aa5f5f905a89a3b1764736f6c634300081b0033".
  End C_38_deployed.
End C_38.
