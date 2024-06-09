(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_87.
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
                [Literal.string "435f38375f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f38375f6465706c6f796564"]
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
                [Literal.string "435f38375f6465706c6f796564"]
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
    tt
  )).

  Module C_87_deployed.
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
                      Some (Literal.number 0x66e41cb7),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_test2",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      Some (Literal.number 0x6b59084d),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_test1",
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
          "cleanup_bytes4",
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
                      "shl",
                      [
                        [Literal.number 224];
                        [Literal.number 0xffffffff]
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
          "abi_encode_bytes4",
          ["value"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_bytes4",
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
          "abi_encode_bytes4_bytes4_bytes4_bytes4",
          ["headStart"; "value0"; "value1"; "value2"; "value3"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 128]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "abi_encode_bytes4",
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
            let _ :=
              M.call (|
                "abi_encode_bytes4",
                [
                  M.get (| "value1" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 32]
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.call (|
                "abi_encode_bytes4",
                [
                  M.get (| "value2" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 64]
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.call (|
                "abi_encode_bytes4",
                [
                  M.get (| "value3" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 96]
                    ]
                  |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_test2",
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
                ["ret"; "ret_1"; "ret_2"; "ret_3"],
                M.call (|
                  "fun_test2",
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
                  "abi_encode_bytes4_bytes4_bytes4_bytes4",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |);
                    M.get (| "ret_1" |);
                    M.get (| "ret_2" |);
                    M.get (| "ret_3" |)
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
          "external_fun_test1",
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
                ["ret"; "ret_1"; "ret_2"; "ret_3"],
                M.call (|
                  "fun_test1",
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
                  "abi_encode_bytes4_bytes4_bytes4_bytes4",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |);
                    M.get (| "ret_1" |);
                    M.get (| "ret_2" |);
                    M.get (| "ret_3" |)
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
          "zero_value_for_split_bytes4",
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
          "zero_value_for_split_contract_A",
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
          "zero_value_for_split_contract_B",
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
          "cleanup_uint32",
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
                    [Literal.number 0xffffffff]
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
          "convert_uint32_to_bytes4",
          ["value"],
          ["converted"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["converted"],
                M.call (|
                  "cleanup_bytes4",
                  [
                    M.call (|
                      "shift_left",
                      [
                        M.call (|
                          "cleanup_uint32",
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
          "fun_test2",
          [],
          ["var";
      "var_1";
      "var_2";
      "var_3"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_bytes4"],
                M.call (|
                  "zero_value_for_split_bytes4",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "zero_bytes4" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes4_1"],
                M.call (|
                  "zero_value_for_split_bytes4",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "zero_bytes4_1" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_t_bytes4"],
                M.call (|
                  "zero_value_for_split_bytes4",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_2"],
                M.get (| "zero_t_bytes4" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes4_2"],
                M.call (|
                  "zero_value_for_split_bytes4",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_3"],
                M.get (| "zero_bytes4_2" |)
              |) in
            let _ :=
              M.assign (|
                ["var_a_address"],
                Literal.undefined
              |) in
            let _ :=
              M.assign (|
                ["zero_contract_A_address"],
                M.call (|
                  "zero_value_for_split_contract_A",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_a_address"],
                M.get (| "zero_contract_A_address" |)
              |) in
            let _ :=
              M.assign (|
                ["var_b_address"],
                Literal.undefined
              |) in
            let _ :=
              M.assign (|
                ["zero_contract_B_address"],
                M.call (|
                  "zero_value_for_split_contract_B",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_b_address"],
                M.get (| "zero_contract_B_address" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_72_functionSelector"],
                [Literal.number 0x26121ff0]
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.call (|
                  "convert_uint32_to_bytes4",
                  [
                    M.get (| "expr_72_functionSelector" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_83_component"],
                M.get (| "expr" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_75_functionSelector"],
                [Literal.number 0xe420264a]
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.call (|
                  "convert_uint32_to_bytes4",
                  [
                    M.get (| "expr_75_functionSelector" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_83_component_1"],
                M.get (| "expr_1" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_78_functionSelector"],
                [Literal.number 0x26121ff0]
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "convert_uint32_to_bytes4",
                  [
                    M.get (| "expr_78_functionSelector" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_83_component_2"],
                M.get (| "expr_2" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_functionSelector"],
                [Literal.number 0xe420264a]
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                M.call (|
                  "convert_uint32_to_bytes4",
                  [
                    M.get (| "expr_functionSelector" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component"],
                M.get (| "expr_3" |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr_83_component" |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "expr_83_component_1" |)
              |) in
            let _ :=
              M.declare (|
                ["var_2"],
                M.get (| "expr_83_component_2" |)
              |) in
            let _ :=
              M.declare (|
                ["var_3"],
                M.get (| "expr_component" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_test1",
          [],
          ["var";
      "var_1";
      "var_";
      "var_2"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_bytes4"],
                M.call (|
                  "zero_value_for_split_bytes4",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "zero_bytes4" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes4_1"],
                M.call (|
                  "zero_value_for_split_bytes4",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "zero_bytes4_1" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes4_2"],
                M.call (|
                  "zero_value_for_split_bytes4",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_"],
                M.get (| "zero_bytes4_2" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes4_3"],
                M.call (|
                  "zero_value_for_split_bytes4",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_2"],
                M.get (| "zero_bytes4_3" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.call (|
                  "shl",
                  [
                    [Literal.number 228];
                    [Literal.number 0x026121ff]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component"],
                M.get (| "expr" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.call (|
                  "shl",
                  [
                    [Literal.number 225];
                    [Literal.number 0x72101325]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component_1"],
                M.get (| "expr_1" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "shl",
                  [
                    [Literal.number 228];
                    [Literal.number 0x026121ff]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component_2"],
                M.get (| "expr_2" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                M.call (|
                  "shl",
                  [
                    [Literal.number 225];
                    [Literal.number 0x72101325]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component_3"],
                M.get (| "expr_3" |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr_component" |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "expr_component_1" |)
              |) in
            let _ :=
              M.declare (|
                ["var_"],
                M.get (| "expr_component_2" |)
              |) in
            let _ :=
              M.declare (|
                ["var_2"],
                M.get (| "expr_component_3" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a2646970667358221220c3b3a02002bebfa1e9ef4102a9b8cf25215350c7ff7737ff8de9b187bfeca97464736f6c634300081b0033".
  End C_87_deployed.
End C_87.
