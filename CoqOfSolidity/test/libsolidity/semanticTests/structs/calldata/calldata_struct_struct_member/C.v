(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_52.
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
                [Literal.string "435f35325f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f35325f6465706c6f796564"]
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
                [Literal.string "435f35325f6465706c6f796564"]
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

  Module C_52_deployed.
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
                      Some (Literal.number 0x4426abe7),
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
          "revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d",
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
          "abi_decode_struct_S1_calldata",
          ["offset"; "end"],
          ["value"],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "slt",
                  [
                    M.call (|
                      "sub",
                      [
                        M.get (| "end" |);
                        M.get (| "offset" |)
                      ]
                    |);
                    [Literal.number 128]
                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.declare (|
                ["value"],
                M.get (| "offset" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode_struct_S1_calldata_ptr",
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
                    [Literal.number 128]
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
                  "abi_decode_struct_S1_calldata",
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
          "abi_encode_uint256",
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
          "cleanup_uint64",
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
                    [Literal.number 0xffffffffffffffff]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_uint64",
          ["value"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_uint64",
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
          "abi_encode_uint256_uint64_uint64_uint256",
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
                "abi_encode_uint256",
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
                "abi_encode_uint64",
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
                "abi_encode_uint64",
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
                "abi_encode_uint256",
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
              M.assign (|
                ["param"],
                M.call (|
                  "abi_decode_struct_S1_calldata_ptr",
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
              M.assign (|
                ["ret"; "ret_1"; "ret_2"; "ret_3"],
                M.call (|
                  "fun_f",
                  [
                    M.get (| "param" |)
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
                  "abi_encode_uint256_uint64_uint64_uint256",
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
          "zero_value_for_split_uint64",
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
          "validator_revert_uint256",
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
                          "cleanup_uint256",
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
          "read_from_calldatat_uint256",
          ["ptr"],
          ["returnValue"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["value"],
                M.call (|
                  "calldataload",
                  [
                    M.get (| "ptr" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "validator_revert_uint256",
                [
                  M.get (| "value" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["returnValue"],
                M.get (| "value" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "validator_revert_uint64",
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
                          "cleanup_uint64",
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
          "read_from_calldatat_uint64",
          ["ptr"],
          ["returnValue"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["value"],
                M.call (|
                  "calldataload",
                  [
                    M.get (| "ptr" |)
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "validator_revert_uint64",
                [
                  M.get (| "value" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["returnValue"],
                M.get (| "value" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_f",
          ["var_s1_offset"],
          ["var_a";
      "var_b0";
      "var_b1";
      "var_c"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_t_uint256"],
                M.call (|
                  "zero_value_for_split_uint256",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_a"],
                M.get (| "zero_t_uint256" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_uint64"],
                M.call (|
                  "zero_value_for_split_uint64",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_b0"],
                M.get (| "zero_uint64" |)
              |) in
            let _ :=
              M.assign (|
                ["zero_t_uint64"],
                M.call (|
                  "zero_value_for_split_uint64",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_b1"],
                M.get (| "zero_t_uint64" |)
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
                ["var_c"],
                M.get (| "zero_uint256" |)
              |) in
            let _ :=
              M.assign (|
                ["_5_offset"],
                M.get (| "var_s1_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_offset"],
                M.get (| "_5_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["_1"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_offset" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr"],
                M.call (|
                  "read_from_calldatat_uint256",
                  [
                    M.get (| "_1" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_a"],
                M.get (| "expr" |)
              |) in
            let _ :=
              M.assign (|
                ["_7_offset"],
                M.get (| "var_s1_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_34_offset"],
                M.get (| "_7_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["_2"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_34_offset" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_35_offset"],
                M.get (| "_2" |)
              |) in
            let _ :=
              M.assign (|
                ["_3"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_35_offset" |);
                    [Literal.number 0]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_1"],
                M.call (|
                  "read_from_calldatat_uint64",
                  [
                    M.get (| "_3" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_b0"],
                M.get (| "expr_1" |)
              |) in
            let _ :=
              M.assign (|
                ["_10_offset"],
                M.get (| "var_s1_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_40_offset"],
                M.get (| "_10_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["_4"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_40_offset" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_41_offset"],
                M.get (| "_4" |)
              |) in
            let _ :=
              M.assign (|
                ["_5"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_41_offset" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_2"],
                M.call (|
                  "read_from_calldatat_uint64",
                  [
                    M.get (| "_5" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_b1"],
                M.get (| "expr_2" |)
              |) in
            let _ :=
              M.assign (|
                ["_offset"],
                M.get (| "var_s1_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["expr_46_offset"],
                M.get (| "_offset" |)
              |) in
            let _ :=
              M.assign (|
                ["_6"],
                M.call (|
                  "add",
                  [
                    M.get (| "expr_46_offset" |);
                    [Literal.number 96]
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["expr_3"],
                M.call (|
                  "read_from_calldatat_uint256",
                  [
                    M.get (| "_6" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_c"],
                M.get (| "expr_3" |)
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a26469706673582212205b684b625be112647348a2e208d1d6513f7e724039171a0ec8fd0c7942a5f3d364736f6c634300081b0033".
  End C_52_deployed.
End C_52.
