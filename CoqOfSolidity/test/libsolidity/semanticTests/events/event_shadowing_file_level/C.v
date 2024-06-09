(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_106.
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
                [Literal.string "435f3130365f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f3130365f6465706c6f796564"]
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
                [Literal.string "435f3130365f6465706c6f796564"]
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

  Module C_106_deployed.
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
                      Some (Literal.number 0xdffeadd0),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_main",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      Some (Literal.number 0xf4c3fcba),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_k_main",
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
          "cleanup_bytes32",
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
          "abi_encode_bytes32",
          ["value"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_bytes32",
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
          "abi_encode_bytes32_bytes32_bytes32",
          ["headStart"; "value0"; "value1"; "value2"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 96]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "abi_encode_bytes32",
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
                "abi_encode_bytes32",
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
                "abi_encode_bytes32",
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
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_main",
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
                ["ret"; "ret_1"; "ret_2"],
                M.call (|
                  "fun_main",
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
                  "abi_encode_bytes32_bytes32_bytes32",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |);
                    M.get (| "ret_1" |);
                    M.get (| "ret_2" |)
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
          "external_fun_k_main",
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
                ["ret"; "ret_1"; "ret_2"],
                M.call (|
                  "fun_k_main",
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
                  "abi_encode_bytes32_bytes32_bytes32",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |);
                    M.get (| "ret_1" |);
                    M.get (| "ret_2" |)
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
          "zero_value_for_split_bytes32",
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
          "fun_main",
          [],
          ["var";
      "var_1";
      "var_2"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_bytes32"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "zero_bytes32" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes32_1"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "zero_bytes32_1" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes32_2"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_2"],
                M.get (| "zero_bytes32_2" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                [Literal.number 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d]
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                [Literal.number 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d]
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "eq",
                  [
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr" |)
                      ]
                    |);
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_1" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "assert_helper",
                [
                  M.get (| "expr_2" |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                [Literal.number 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d]
              |) in
            let _ :=
              M.assign (|
                ["expr_4"],
                [Literal.number 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028]
              |) in
            let _ :=
              M.assign (|
                ["expr_5"],
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "eq",
                      [
                        M.call (|
                          "cleanup_bytes32",
                          [
                            M.get (| "expr_3" |)
                          ]
                        |);
                        M.call (|
                          "cleanup_bytes32",
                          [
                            M.get (| "expr_4" |)
                          ]
                        |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "assert_helper",
                [
                  M.get (| "expr_5" |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["expr_6"],
                [Literal.number 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d]
              |) in
            let _ :=
              M.assign (|
                ["expr_88_component"],
                M.get (| "expr_6" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_7"],
                [Literal.number 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d]
              |) in
            let _ :=
              M.assign (|
                ["expr_88_component_1"],
                M.get (| "expr_7" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_8"],
                [Literal.number 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028]
              |) in
            let _ :=
              M.assign (|
                ["expr_component"],
                M.get (| "expr_8" |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr_88_component" |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "expr_88_component_1" |)
              |) in
            let _ :=
              M.declare (|
                ["var_2"],
                M.get (| "expr_component" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_k_main",
          [],
          ["var_";
      "var";
      "var_1"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_bytes32"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_"],
                M.get (| "zero_bytes32" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes32_1"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "zero_bytes32_1" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes32_2"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "zero_bytes32_2" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_component"; "expr_component_1"; "expr_component_2"],
                M.call (|
                  "fun_main_48",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_"],
                M.get (| "expr_component" |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr_component_1" |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "expr_component_2" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_main_48",
          [],
          ["var";
      "var_1";
      "var_2"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_bytes32"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "zero_bytes32" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_bytes32_1"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "zero_bytes32_1" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_t_bytes32"],
                M.call (|
                  "zero_value_for_split_bytes32",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_2"],
                M.get (| "zero_t_bytes32" |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                [Literal.number 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028]
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                [Literal.number 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d]
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "iszero",
                  [
                    M.call (|
                      "eq",
                      [
                        M.call (|
                          "cleanup_bytes32",
                          [
                            M.get (| "expr" |)
                          ]
                        |);
                        M.call (|
                          "cleanup_bytes32",
                          [
                            M.get (| "expr_1" |)
                          ]
                        |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "assert_helper",
                [
                  M.get (| "expr_2" |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                [Literal.number 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028]
              |) in
            let _ :=
              M.assign (|
                ["expr_4"],
                [Literal.number 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028]
              |) in
            let _ :=
              M.assign (|
                ["expr_5"],
                M.call (|
                  "eq",
                  [
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_3" |)
                      ]
                    |);
                    M.call (|
                      "cleanup_bytes32",
                      [
                        M.get (| "expr_4" |)
                      ]
                    |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "assert_helper",
                [
                  M.get (| "expr_5" |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["expr_6"],
                [Literal.number 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028]
              |) in
            let _ :=
              M.assign (|
                ["expr_45_component"],
                M.get (| "expr_6" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_7"],
                [Literal.number 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d]
              |) in
            let _ :=
              M.assign (|
                ["expr_45_component_1"],
                M.get (| "expr_7" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_8"],
                [Literal.number 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028]
              |) in
            let _ :=
              M.assign (|
                ["expr_45_component_2"],
                M.get (| "expr_8" |)
              |) in
            let _ :=
              M.declare (|
                ["var"],
                M.get (| "expr_45_component" |)
              |) in
            let _ :=
              M.declare (|
                ["var_1"],
                M.get (| "expr_45_component_1" |)
              |) in
            let _ :=
              M.declare (|
                ["var_2"],
                M.get (| "expr_45_component_2" |)
              |) in
            let _ :=
              M.leave (||) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a2646970667358221220c314e5144206e50d1069d633da4f75c99171e69435faddbb171a7b6f8f4b0e7064736f6c634300081b0033".
  End C_106_deployed.
End C_106.
