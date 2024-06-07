(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module D.
  Definition code : Code.t := {|
    Code.name := "D_11";
    Code.hex_name := 0x445f313100000000000000000000000000000000000000000000000000000000;
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
          M.function (|
            "round_up_to_mul_of",
            ["value"],
            ["result"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["result"],
                  Some (M.call (|
                    "and",
                    [
                      M.call (|
                        "add",
                        [
                          M.get_var (| "value" |);
                          [Literal.number 31]
                        ]
                      |);
                      M.call (|
                        "not",
                        [
                          [Literal.number 31]
                        ]
                      |)
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
            "panic_error_0x41",
            [],
            [],
            M.scope (
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
                      [Literal.number 0x41]
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
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "finalize_allocation",
            ["memPtr"; "size"],
            [],
            M.scope (
              do* ltac:(M.monadic (
                M.declare (|
                  ["newFreePtr"],
                  Some (M.call (|
                    "add",
                    [
                      M.get_var (| "memPtr" |);
                      M.call (|
                        "round_up_to_mul_of",
                        [
                          M.get_var (| "size" |)
                        ]
                      |)
                    ]
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.if_ (|
                  M.call (|
                    "or",
                    [
                      M.call (|
                        "gt",
                        [
                          M.get_var (| "newFreePtr" |);
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
                      |);
                      M.call (|
                        "lt",
                        [
                          M.get_var (| "newFreePtr" |);
                          M.get_var (| "memPtr" |)
                        ]
                      |)
                    ]
                  |),
                  M.scope (
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "panic_error_0x41",
                          []
                        |)
                      |)
                    )) in
                    M.pure BlockUnit.Tt
                  )
                |)
              )) in
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "mstore",
                    [
                      [Literal.number 64];
                      M.get_var (| "newFreePtr" |)
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
            "allocate_memory",
            ["size"],
            ["memPtr"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["memPtr"],
                  Some (M.call (|
                    "allocate_unbounded",
                    []
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "finalize_allocation",
                    [
                      M.get_var (| "memPtr" |);
                      M.get_var (| "size" |)
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
            "cleanup_bytes24",
            ["value"],
            ["cleaned"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["cleaned"],
                  Some (M.call (|
                    "and",
                    [
                      M.get_var (| "value" |);
                      M.call (|
                        "not",
                        [
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
                      |)
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
            "cleanup_function_external_nonpayable_returns_uint",
            ["value"],
            ["cleaned"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["cleaned"],
                  Some (M.call (|
                    "cleanup_bytes24",
                    [
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
            "validator_revert_function_external_nonpayable_returns_uint",
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
                            "cleanup_function_external_nonpayable_returns_uint",
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
            "abi_decode_function_external_nonpayable_returns_uint256_fromMemory",
            ["offset"; "end"],
            ["fun"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["fun"],
                  Some (M.call (|
                    "mload",
                    [
                      M.get_var (| "offset" |)
                    ]
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "validator_revert_function_external_nonpayable_returns_uint",
                    [
                      M.get_var (| "fun" |)
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
                      [Literal.number 32];
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
            "shift_right_64_unsigned",
            ["value"],
            ["newValue"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["newValue"],
                  Some (M.call (|
                    "shr",
                    [
                      [Literal.number 64];
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
            "split_external_function_id",
            ["combined"],
            ["addr"; "selector"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["combined"],
                  Some (M.call (|
                    "shift_right_64_unsigned",
                    [
                      M.get_var (| "combined" |)
                    ]
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.assign (|
                  ["selector"],
                  Some (M.call (|
                    "and",
                    [
                      M.get_var (| "combined" |);
                      [Literal.number 0xffffffff]
                    ]
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.assign (|
                  ["addr"],
                  Some (M.call (|
                    "shift_right_unsigned",
                    [
                      M.get_var (| "combined" |)
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
            "abi_decode_function_external_nonpayable_returns_uint256_fromMemory_onStack",
            ["offset"; "end"],
            ["addr"; "function_selector"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["addr"; "function_selector"],
                  Some (M.call (|
                    "split_external_function_id",
                    [
                      M.call (|
                        "abi_decode_function_external_nonpayable_returns_uint256_fromMemory",
                        [
                          M.get_var (| "offset" |);
                          M.get_var (| "end" |)
                        ]
                      |)
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
            "abi_decode_tuple_function_external_nonpayable_returns_uint256_fromMemory",
            ["headStart"; "dataEnd"],
            ["value0"; "value1"],
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
                      [Literal.number 32]
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
                  ["value0"; "value1"],
                  Some (M.call (|
                    "abi_decode_function_external_nonpayable_returns_uint256_fromMemory_onStack",
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
            "copy_arguments_for_constructor_object_D",
            [],
            ["ret_param"; "ret_param_1"],
            M.scope (
              do* ltac:(M.monadic (
                M.declare (|
                  ["programSize"],
                  Some (M.call (|
                    "datasize",
                    [
                      [Literal.string 0x445f313100000000000000000000000000000000000000000000000000000000]
                    ]
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.declare (|
                  ["argSize"],
                  Some (M.call (|
                    "sub",
                    [
                      M.call (|
                        "codesize",
                        []
                      |);
                      M.get_var (| "programSize" |)
                    ]
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.declare (|
                  ["memoryDataOffset"],
                  Some (M.call (|
                    "allocate_memory",
                    [
                      M.get_var (| "argSize" |)
                    ]
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "codecopy",
                    [
                      M.get_var (| "memoryDataOffset" |);
                      M.get_var (| "programSize" |);
                      M.get_var (| "argSize" |)
                    ]
                  |)
                |)
              )) in
              do* ltac:(M.monadic (
                M.assign (|
                  ["ret_param"; "ret_param_1"],
                  Some (M.call (|
                    "abi_decode_tuple_function_external_nonpayable_returns_uint256_fromMemory",
                    [
                      M.get_var (| "memoryDataOffset" |);
                      M.call (|
                        "add",
                        [
                          M.get_var (| "memoryDataOffset" |);
                          M.get_var (| "argSize" |)
                        ]
                      |)
                    ]
                  |))
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
                ["_1"; "_2"],
                Some (M.call (|
                  "copy_arguments_for_constructor_object_D",
                  []
                |))
              |)
            )) in
            do* ltac:(M.monadic (
              M.declare (|
                ["_3"],
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
                    M.get_var (| "_3" |);
                    M.call (|
                      "dataoffset",
                      [
                        [Literal.string 0x445f31315f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |);
                    M.call (|
                      "datasize",
                      [
                        [Literal.string 0x445f31315f6465706c6f79656400000000000000000000000000000000000000]
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
                    M.get_var (| "_3" |);
                    M.call (|
                      "datasize",
                      [
                        [Literal.string 0x445f31315f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "D_11_deployed";
      Code.hex_name := 0x445f31315f6465706c6f79656400000000000000000000000000000000000000;
      Code.code :=
        M.scope (
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
      "a26469706673582212202463a93ac6010c4d1ff76ca1576068eda22ee7e62ce5b07524dc3c334452709664736f6c634300081b0033".
  End deployed.
End D.

Definition codes : list (U256.t * M.t BlockUnit.t) :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
