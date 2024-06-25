(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_48";
    Code.hex_name := 0x435f343800000000000000000000000000000000000000000000000000000000;
    Code.code :=
      M.scope (
        do* ltac:(M.monadic (
          M.function (|
            "allocate_unbounded",
            [],
            ["memPtr"],
            M.scope (
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
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
            [],
            [],
            M.scope (
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
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.scope (
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
                M.scope (
                  do* ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call (|
                        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                        []
                      |)
                    |)
                  )) in
                  M.pure BlockUnit.Tt
                )
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
                        [Literal.string 0x435f34385f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |);
                    M.call (|
                      "datasize",
                      [
                        [Literal.string 0x435f34385f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x435f34385f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            M.pure BlockUnit.Tt
          )
        )) in
        M.pure BlockUnit.Tt
      );
  |}.

  Module deployed.
    Definition code : Code.t := {|
      Code.name := "C_48_deployed";
      Code.hex_name := 0x435f34385f6465706c6f79656400000000000000000000000000000000000000;
      Code.code :=
        M.scope (
          do* ltac:(M.monadic (
            M.function (|
              "shift_right_unsigned",
              ["value"],
              ["newValue"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["newValue"],
                    Some (M.call (|
                      "shr",
                      [
                        [Literal.number 224];
                        M.get_var (| "value" |)
                      ]
                    |))
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "allocate_unbounded",
              [],
              ["memPtr"],
              M.scope (
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
              [],
              [],
              M.scope (
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
              [],
              [],
              M.scope (
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d",
              [],
              [],
              M.scope (
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "abi_decode_struct_S2_calldata_ptr",
              ["offset"; "end"],
              ["value"],
              M.scope (
                do* ltac:(M.monadic (
                  M.if_ (|
                    M.call (|
                      "slt",
                      [
                        M.call (|
                          "sub",
                          [
                            M.get_var (| "end" |);
                            M.get_var (| "offset" |)
                          ]
                        |);
                        [Literal.number 160]
                      ]
                    |),
                    M.scope (
                      do* ltac:(M.monadic (
                        M.expr_stmt (|
                          M.call (|
                            "revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d",
                            []
                          |)
                        |)
                      )) in
                      M.pure BlockUnit.Tt
                    )
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["value"],
                    Some (M.get_var (| "offset" |))
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "abi_decode_struct_S2_calldata",
              ["headStart"; "dataEnd"],
              ["value0"],
              M.scope (
                do* ltac:(M.monadic (
                  M.if_ (|
                    M.call (|
                      "slt",
                      [
                        M.call (|
                          "sub",
                          [
                            M.get_var (| "dataEnd" |);
                            M.get_var (| "headStart" |)
                          ]
                        |);
                        [Literal.number 160]
                      ]
                    |),
                    M.scope (
                      do* ltac:(M.monadic (
                        M.expr_stmt (|
                          M.call (|
                            "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                            []
                          |)
                        |)
                      )) in
                      M.pure BlockUnit.Tt
                    )
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["offset"],
                    Some ([Literal.number 0])
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["value0"],
                    Some (M.call (|
                      "abi_decode_struct_S2_calldata_ptr",
                      [
                        M.call (|
                          "add",
                          [
                            M.get_var (| "headStart" |);
                            M.get_var (| "offset" |)
                          ]
                        |);
                        M.get_var (| "dataEnd" |)
                      ]
                    |))
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "cleanup_uint256",
              ["value"],
              ["cleaned"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["cleaned"],
                    Some (M.get_var (| "value" |))
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "abi_encode_uint256",
              ["value"; "pos"],
              [],
              M.scope (
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "mstore",
                      [
                        M.get_var (| "pos" |);
                        M.call (|
                          "cleanup_uint256",
                          [
                            M.get_var (| "value" |)
                          ]
                        |)
                      ]
                    |)
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "abi_encode_uint256_uint256_uint256_uint256_uint256",
              ["headStart"; "value0"; "value1"; "value2"; "value3"; "value4"],
              ["tail"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["tail"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "headStart" |);
                        [Literal.number 160]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "abi_encode_uint256",
                      [
                        M.get_var (| "value0" |);
                        M.call (|
                          "add",
                          [
                            M.get_var (| "headStart" |);
                            [Literal.number 0]
                          ]
                        |)
                      ]
                    |)
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "abi_encode_uint256",
                      [
                        M.get_var (| "value1" |);
                        M.call (|
                          "add",
                          [
                            M.get_var (| "headStart" |);
                            [Literal.number 32]
                          ]
                        |)
                      ]
                    |)
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "abi_encode_uint256",
                      [
                        M.get_var (| "value2" |);
                        M.call (|
                          "add",
                          [
                            M.get_var (| "headStart" |);
                            [Literal.number 64]
                          ]
                        |)
                      ]
                    |)
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "abi_encode_uint256",
                      [
                        M.get_var (| "value3" |);
                        M.call (|
                          "add",
                          [
                            M.get_var (| "headStart" |);
                            [Literal.number 96]
                          ]
                        |)
                      ]
                    |)
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "abi_encode_uint256",
                      [
                        M.get_var (| "value4" |);
                        M.call (|
                          "add",
                          [
                            M.get_var (| "headStart" |);
                            [Literal.number 128]
                          ]
                        |)
                      ]
                    |)
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "external_fun_f",
              [],
              [],
              M.scope (
                do* ltac:(M.monadic (
                  M.if_ (|
                    M.call (|
                      "callvalue",
                      []
                    |),
                    M.scope (
                      do* ltac:(M.monadic (
                        M.expr_stmt (|
                          M.call (|
                            "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                            []
                          |)
                        |)
                      )) in
                      M.pure BlockUnit.Tt
                    )
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["param"],
                    Some (M.call (|
                      "abi_decode_struct_S2_calldata",
                      [
                        [Literal.number 4];
                        M.call (|
                          "calldatasize",
                          []
                        |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["ret"; "ret_1"; "ret_2"; "ret_3"; "ret_4"],
                    Some (M.call (|
                      "fun_f",
                      [
                        M.get_var (| "param" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["memPos"],
                    Some (M.call (|
                      "allocate_unbounded",
                      []
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["memEnd"],
                    Some (M.call (|
                      "abi_encode_uint256_uint256_uint256_uint256_uint256",
                      [
                        M.get_var (| "memPos" |);
                        M.get_var (| "ret" |);
                        M.get_var (| "ret_1" |);
                        M.get_var (| "ret_2" |);
                        M.get_var (| "ret_3" |);
                        M.get_var (| "ret_4" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "return",
                      [
                        M.get_var (| "memPos" |);
                        M.call (|
                          "sub",
                          [
                            M.get_var (| "memEnd" |);
                            M.get_var (| "memPos" |)
                          ]
                        |)
                      ]
                    |)
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
              [],
              [],
              M.scope (
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "zero_value_for_split_uint256",
              [],
              ["ret"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["ret"],
                    Some ([Literal.number 0])
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "validator_revert_uint256",
              ["value"],
              [],
              M.scope (
                do* ltac:(M.monadic (
                  M.if_ (|
                    M.call (|
                      "iszero",
                      [
                        M.call (|
                          "eq",
                          [
                            M.get_var (| "value" |);
                            M.call (|
                              "cleanup_uint256",
                              [
                                M.get_var (| "value" |)
                              ]
                            |)
                          ]
                        |)
                      ]
                    |),
                    M.scope (
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
                      M.pure BlockUnit.Tt
                    )
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "read_from_calldatat_uint256",
              ["ptr"],
              ["returnValue"],
              M.scope (
                do* ltac:(M.monadic (
                  M.declare (|
                    ["value"],
                    Some (M.call (|
                      "calldataload",
                      [
                        M.get_var (| "ptr" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "validator_revert_uint256",
                      [
                        M.get_var (| "value" |)
                      ]
                    |)
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["returnValue"],
                    Some (M.get_var (| "value" |))
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "fun_f",
              ["var_s_offset"],
              ["var_a"; "var_b"; "var_sa"; "var_sb"; "var_c"],
              M.scope (
                do* ltac:(M.monadic (
                  M.declare (|
                    ["zero_uint256"],
                    Some (M.call (|
                      "zero_value_for_split_uint256",
                      []
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_a"],
                    Some (M.get_var (| "zero_uint256" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["zero_uint256_1"],
                    Some (M.call (|
                      "zero_value_for_split_uint256",
                      []
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_b"],
                    Some (M.get_var (| "zero_uint256_1" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["zero_uint256_2"],
                    Some (M.call (|
                      "zero_value_for_split_uint256",
                      []
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_sa"],
                    Some (M.get_var (| "zero_uint256_2" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["zero_t_uint256"],
                    Some (M.call (|
                      "zero_value_for_split_uint256",
                      []
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_sb"],
                    Some (M.get_var (| "zero_t_uint256" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["zero_uint256_3"],
                    Some (M.call (|
                      "zero_value_for_split_uint256",
                      []
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_c"],
                    Some (M.get_var (| "zero_uint256_3" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_6_offset"],
                    Some (M.get_var (| "var_s_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_offset"],
                    Some (M.get_var (| "_6_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_1"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "expr_offset" |);
                        [Literal.number 0]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr"],
                    Some (M.call (|
                      "read_from_calldatat_uint256",
                      [
                        M.get_var (| "_1" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_component"],
                    Some (M.get_var (| "expr" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_offset"],
                    Some (M.get_var (| "var_s_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_34_offset"],
                    Some (M.get_var (| "_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_2"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "expr_34_offset" |);
                        [Literal.number 32]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_1"],
                    Some (M.call (|
                      "read_from_calldatat_uint256",
                      [
                        M.get_var (| "_2" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_component_1"],
                    Some (M.get_var (| "expr_1" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_10_offset"],
                    Some (M.get_var (| "var_s_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_36_offset"],
                    Some (M.get_var (| "_10_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_3"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "expr_36_offset" |);
                        [Literal.number 64]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_37_offset"],
                    Some (M.get_var (| "_3" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_4"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "expr_37_offset" |);
                        [Literal.number 0]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_2"],
                    Some (M.call (|
                      "read_from_calldatat_uint256",
                      [
                        M.get_var (| "_4" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_component_2"],
                    Some (M.get_var (| "expr_2" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_13_offset"],
                    Some (M.get_var (| "var_s_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_39_offset"],
                    Some (M.get_var (| "_13_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_5"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "expr_39_offset" |);
                        [Literal.number 64]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_40_offset"],
                    Some (M.get_var (| "_5" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_6"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "expr_40_offset" |);
                        [Literal.number 32]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_3"],
                    Some (M.call (|
                      "read_from_calldatat_uint256",
                      [
                        M.get_var (| "_6" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_component_3"],
                    Some (M.get_var (| "expr_3" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_16_offset"],
                    Some (M.get_var (| "var_s_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_42_offset"],
                    Some (M.get_var (| "_16_offset" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_7"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "expr_42_offset" |);
                        [Literal.number 128]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_4"],
                    Some (M.call (|
                      "read_from_calldatat_uint256",
                      [
                        M.get_var (| "_7" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_component_4"],
                    Some (M.get_var (| "expr_4" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_a"],
                    Some (M.get_var (| "expr_component" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_b"],
                    Some (M.get_var (| "expr_component_1" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_sa"],
                    Some (M.get_var (| "expr_component_2" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_sb"],
                    Some (M.get_var (| "expr_component_3" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_c"],
                    Some (M.get_var (| "expr_component_4" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.leave (||)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.scope (
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
                  M.scope (
                    do* ltac:(M.monadic (
                      M.declare (|
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
                        M.get_var (| "selector" |),
                        [
                          (
                            Some (Literal.number 0x7df02204),
                            M.scope (
                              do* ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call (|
                                    "external_fun_f",
                                    []
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            None,
                            M.scope (
                              M.pure BlockUnit.Tt
                            )
                          )
                        ]
                      |)
                    )) in
                    M.pure BlockUnit.Tt
                  )
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
              M.pure BlockUnit.Tt
            )
          )) in
          M.pure BlockUnit.Tt
        );
    |}.

    Definition data : string :=
      "a26469706673582212200f6787bde4c947a4aadcdf5bb0be7fcefb89110727ef601df6fe4998c1e1e8c564736f6c634300081b0033".
  End deployed.
End C.

Definition codes : list (U256.t * M.t BlockUnit.t) :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
