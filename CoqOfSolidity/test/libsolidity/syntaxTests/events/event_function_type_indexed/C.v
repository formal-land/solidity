(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_16";
    Code.hex_name := 0x435f313600000000000000000000000000000000000000000000000000000000;
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
                        [Literal.string 0x435f31365f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |);
                    M.call (|
                      "datasize",
                      [
                        [Literal.string 0x435f31365f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x435f31365f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "C_16_deployed";
      Code.hex_name := 0x435f31365f6465706c6f79656400000000000000000000000000000000000000;
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
              "abi_decode",
              ["headStart"; "dataEnd"],
              [],
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
                        [Literal.number 0]
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "abi_encode_tuple",
              ["headStart"],
              ["tail"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["tail"],
                    Some (M.call (|
                      "add",
                      [
                        M.get_var (| "headStart" |);
                        [Literal.number 0]
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
                  M.expr_stmt (|
                    M.call (|
                      "abi_decode",
                      [
                        [Literal.number 4];
                        M.call (|
                          "calldatasize",
                          []
                        |)
                      ]
                    |)
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "fun_f",
                      []
                    |)
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
                      "abi_encode_tuple",
                      [
                        M.get_var (| "memPos" |)
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
              "cleanup_uint160",
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
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "identity",
              ["value"],
              ["ret"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["ret"],
                    Some (M.get_var (| "value" |))
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.function (|
              "convert_uint160_to_uint160",
              ["value"],
              ["converted"],
              M.scope (
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
                                M.get_var (| "value" |)
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
              "convert_uint160_to_address",
              ["value"],
              ["converted"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["converted"],
                    Some (M.call (|
                      "convert_uint160_to_uint160",
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
              "convert_contract_C_to_address",
              ["value"],
              ["converted"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["converted"],
                    Some (M.call (|
                      "convert_uint160_to_address",
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
              "shift_left_32",
              ["value"],
              ["newValue"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["newValue"],
                    Some (M.call (|
                      "shl",
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
              "shift_left",
              ["value"],
              ["newValue"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["newValue"],
                    Some (M.call (|
                      "shl",
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
              "combine_external_function_id",
              ["addr"; "selector"],
              ["combined"],
              M.scope (
                do* ltac:(M.monadic (
                  M.assign (|
                    ["combined"],
                    Some (M.call (|
                      "shift_left",
                      [
                        M.call (|
                          "or",
                          [
                            M.call (|
                              "shift_left_32",
                              [
                                M.get_var (| "addr" |)
                              ]
                            |);
                            M.call (|
                              "and",
                              [
                                M.get_var (| "selector" |);
                                [Literal.number 0xffffffff]
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
              "fun_f",
              [],
              [],
              M.scope (
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_address"],
                    Some (M.call (|
                      "address",
                      []
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_11_address"],
                    Some (M.call (|
                      "convert_contract_C_to_address",
                      [
                        M.get_var (| "expr_address" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["expr_functionSelector"],
                    Some ([Literal.number 0x26121ff0])
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_1"],
                    Some ([Literal.number 0x16e407cc31a66b716200af7eadb4155035b14f295af52acbc4356b464d649b71])
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.declare (|
                    ["_2"],
                    Some (M.call (|
                      "combine_external_function_id",
                      [
                        M.get_var (| "expr_11_address" |);
                        M.get_var (| "expr_functionSelector" |)
                      ]
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
                  M.declare (|
                    ["_4"],
                    Some (M.call (|
                      "abi_encode_tuple",
                      [
                        M.get_var (| "_3" |)
                      ]
                    |))
                  |)
                )) in
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "log2",
                      [
                        M.get_var (| "_3" |);
                        M.call (|
                          "sub",
                          [
                            M.get_var (| "_4" |);
                            M.get_var (| "_3" |)
                          ]
                        |);
                        M.get_var (| "_1" |);
                        M.get_var (| "_2" |)
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
                            Some (Literal.number 0x26121ff0),
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
      "a264697066735822122070a79aa2ee7c3101a39bfe21eac0c8d24c144e930b56174cb71747f1a16d1c6564736f6c634300081b0033".
  End deployed.
End C.

Definition codes : list (U256.t * M.t BlockUnit.t) :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).