(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module test.
  Definition code : Code.t := {|
    Code.name := "test_12";
    Code.hex_name := 0x746573745f313200000000000000000000000000000000000000000000000000;
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
                        [Literal.string 0x746573745f31325f6465706c6f79656400000000000000000000000000000000]
                      ]
                    |);
                    M.call (|
                      "datasize",
                      [
                        [Literal.string 0x746573745f31325f6465706c6f79656400000000000000000000000000000000]
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
                        [Literal.string 0x746573745f31325f6465706c6f79656400000000000000000000000000000000]
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
      Code.name := "test_12_deployed";
      Code.hex_name := 0x746573745f31325f6465706c6f79656400000000000000000000000000000000;
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
              "abi_decode_uint256",
              ["offset"; "end"],
              ["value"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["value"],
                    Some (M.call (|
                      "calldataload",
                      [
                        M.get_var (| "offset" |)
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "abi_decode_tuple_uint256",
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
                    ["value0"],
                    Some (M.call (|
                      "abi_decode_uint256",
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
              "cleanup_bytes4",
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
                          "shl",
                          [
                            [Literal.number 224];
                            [Literal.number 0xffffffff]
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
              "abi_encode_bytes4",
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
                          "cleanup_bytes4",
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
              "abi_encode_tuple_bytes4",
              ["headStart"; "value0"],
              ["tail"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["tail"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "headStart" |);
                        [Literal.number 32]
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "abi_encode_bytes4",
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "external_fun_foo",
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
                      "abi_decode_tuple_uint256",
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
                    ["ret"],
                    Some (M.call (|
                      "fun_foo",
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
                      "abi_encode_tuple_bytes4",
                      [
                        M.get_var (| "memPos" |);
                        M.get_var (| "ret" |)
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
              "zero_value_for_split_bytes4",
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
              "fun_foo",
              ["var_a"],
              ["var_value"],
              M.scope (
                do* ltac:(M.monadic (
                  M.declare (|
                    ["zero_bytes4"],
                    Some (M.call (|
                      "zero_value_for_split_bytes4",
                      []
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_value"],
                    Some (M.get_var (| "zero_bytes4" |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr"],
                    Some (M.call (|
                      "and",
                      [
                        M.call (|
                          "calldataload",
                          [
                            [Literal.number 0]
                          ]
                        |);
                        M.call (|
                          "shl",
                          [
                            [Literal.number 224];
                            [Literal.number 0xffffffff]
                          ]
                        |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.assign (|
                    ["var_value"],
                    Some (M.get_var (| "expr" |))
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
                            Some (Literal.number 0x2fbebd38),
                            M.scope (
                              do* ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call (|
                                    "external_fun_foo",
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
      "a26469706673582212206880feda9774548eed729095417ae2cb3b99324f4e1409d7636c43f83817b8e064736f6c634300081b0033".
  End deployed.
End test.

Definition codes : list (U256.t * M.t BlockUnit.t) :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
