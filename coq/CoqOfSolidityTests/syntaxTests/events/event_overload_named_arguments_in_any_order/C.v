(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_57";
    Code.hex_name := 0x435f353700000000000000000000000000000000000000000000000000000000;
    Code.functions :=
      [
        
      ];
    Code.body :=
      M.scope (
        do! ltac:(M.monadic (
          M.scope (
            do! ltac:(M.monadic (
              M.declare (|
                ["_1"],
                Some (M.call_function (|
                  "memoryguard",
                  [
                    [Literal.number 0x80]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "mstore",
                  [
                    [Literal.number 64];
                    M.get_var (| "_1" |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.if_ (|
                M.call_function (|
                  "callvalue",
                  []
                |),
                M.scope (
                  do! ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call_function (|
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
            do! ltac:(M.monadic (
              M.declare (|
                ["_2"],
                Some (M.call_function (|
                  "datasize",
                  [
                    [Literal.string 0x435f35375f6465706c6f79656400000000000000000000000000000000000000]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "codecopy",
                  [
                    M.get_var (| "_1" |);
                    M.call_function (|
                      "dataoffset",
                      [
                        [Literal.string 0x435f35375f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |);
                    M.get_var (| "_2" |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "return",
                  [
                    M.get_var (| "_1" |);
                    M.get_var (| "_2" |)
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
      Code.name := "C_57_deployed";
      Code.hex_name := 0x435f35375f6465706c6f79656400000000000000000000000000000000000000;
      Code.functions :=
        [
          Code.Function.make (
            "abi_encode_rational_by_stringliteral_4e03_bool",
            ["headStart"],
            ["tail"],
            M.scope (
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      M.get_var (| "headStart" |);
                      [Literal.number 0x01]
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      M.call_function (|
                        "add",
                        [
                          M.get_var (| "headStart" |);
                          [Literal.number 32]
                        ]
                      |);
                      [Literal.number 96]
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      M.call_function (|
                        "add",
                        [
                          M.get_var (| "headStart" |);
                          [Literal.number 96]
                        ]
                      |);
                      [Literal.number 3]
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      M.call_function (|
                        "add",
                        [
                          M.get_var (| "headStart" |);
                          [Literal.number 128]
                        ]
                      |);
                      [Literal.string 0x6162630000000000000000000000000000000000000000000000000000000000]
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.assign (|
                  ["tail"],
                  Some (M.call_function (|
                    "add",
                    [
                      M.get_var (| "headStart" |);
                      [Literal.number 160]
                    ]
                  |))
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      M.call_function (|
                        "add",
                        [
                          M.get_var (| "headStart" |);
                          [Literal.number 64]
                        ]
                      |);
                      [Literal.number 0x01]
                    ]
                  |)
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          )
        ];
      Code.body :=
        M.scope (
          do! ltac:(M.monadic (
            M.scope (
              do! ltac:(M.monadic (
                M.declare (|
                  ["_1"],
                  Some (M.call_function (|
                    "memoryguard",
                    [
                      [Literal.number 0x80]
                    ]
                  |))
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      [Literal.number 64];
                      M.get_var (| "_1" |)
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.if_ (|
                  M.call_function (|
                    "iszero",
                    [
                      M.call_function (|
                        "lt",
                        [
                          M.call_function (|
                            "calldatasize",
                            []
                          |);
                          [Literal.number 4]
                        ]
                      |)
                    ]
                  |),
                  M.scope (
                    do! ltac:(M.monadic (
                      M.if_ (|
                        M.call_function (|
                          "eq",
                          [
                            [Literal.number 0x28b5e32b];
                            M.call_function (|
                              "shr",
                              [
                                [Literal.number 224];
                                M.call_function (|
                                  "calldataload",
                                  [
                                    [Literal.number 0]
                                  ]
                                |)
                              ]
                            |)
                          ]
                        |),
                        M.scope (
                          do! ltac:(M.monadic (
                            M.if_ (|
                              M.call_function (|
                                "callvalue",
                                []
                              |),
                              M.scope (
                                do! ltac:(M.monadic (
                                  M.expr_stmt (|
                                    M.call_function (|
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
                          do! ltac:(M.monadic (
                            M.if_ (|
                              M.call_function (|
                                "slt",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.call_function (|
                                        "calldatasize",
                                        []
                                      |);
                                      M.call_function (|
                                        "not",
                                        [
                                          [Literal.number 3]
                                        ]
                                      |)
                                    ]
                                  |);
                                  [Literal.number 0]
                                ]
                              |),
                              M.scope (
                                do! ltac:(M.monadic (
                                  M.expr_stmt (|
                                    M.call_function (|
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
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "log1",
                                [
                                  M.get_var (| "_1" |);
                                  M.call_function (|
                                    "sub",
                                    [
                                      M.call_function (|
                                        "abi_encode_rational_by_stringliteral_4e03_bool",
                                        [
                                          M.get_var (| "_1" |)
                                        ]
                                      |);
                                      M.get_var (| "_1" |)
                                    ]
                                  |);
                                  [Literal.number 0x0a6321261f8fd3728190e424705d7ec968fc4090923bd99f78033e386f8ef78c]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["_2"],
                              Some (M.call_function (|
                                "mload",
                                [
                                  [Literal.number 64]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "log1",
                                [
                                  M.get_var (| "_2" |);
                                  M.call_function (|
                                    "sub",
                                    [
                                      M.call_function (|
                                        "abi_encode_rational_by_stringliteral_4e03_bool",
                                        [
                                          M.get_var (| "_2" |)
                                        ]
                                      |);
                                      M.get_var (| "_2" |)
                                    ]
                                  |);
                                  [Literal.number 0x0a6321261f8fd3728190e424705d7ec968fc4090923bd99f78033e386f8ef78c]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["_3"],
                              Some (M.call_function (|
                                "mload",
                                [
                                  [Literal.number 64]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "log1",
                                [
                                  M.get_var (| "_3" |);
                                  M.call_function (|
                                    "sub",
                                    [
                                      M.call_function (|
                                        "abi_encode_rational_by_stringliteral_4e03_bool",
                                        [
                                          M.get_var (| "_3" |)
                                        ]
                                      |);
                                      M.get_var (| "_3" |)
                                    ]
                                  |);
                                  [Literal.number 0x0a6321261f8fd3728190e424705d7ec968fc4090923bd99f78033e386f8ef78c]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["_4"],
                              Some (M.call_function (|
                                "mload",
                                [
                                  [Literal.number 64]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "log1",
                                [
                                  M.get_var (| "_4" |);
                                  M.call_function (|
                                    "sub",
                                    [
                                      M.call_function (|
                                        "abi_encode_rational_by_stringliteral_4e03_bool",
                                        [
                                          M.get_var (| "_4" |)
                                        ]
                                      |);
                                      M.get_var (| "_4" |)
                                    ]
                                  |);
                                  [Literal.number 0x0a6321261f8fd3728190e424705d7ec968fc4090923bd99f78033e386f8ef78c]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["_5"],
                              Some (M.call_function (|
                                "mload",
                                [
                                  [Literal.number 64]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "log1",
                                [
                                  M.get_var (| "_5" |);
                                  M.call_function (|
                                    "sub",
                                    [
                                      M.call_function (|
                                        "abi_encode_rational_by_stringliteral_4e03_bool",
                                        [
                                          M.get_var (| "_5" |)
                                        ]
                                      |);
                                      M.get_var (| "_5" |)
                                    ]
                                  |);
                                  [Literal.number 0x0a6321261f8fd3728190e424705d7ec968fc4090923bd99f78033e386f8ef78c]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["_6"],
                              Some (M.call_function (|
                                "mload",
                                [
                                  [Literal.number 64]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "log1",
                                [
                                  M.get_var (| "_6" |);
                                  M.call_function (|
                                    "sub",
                                    [
                                      M.call_function (|
                                        "abi_encode_rational_by_stringliteral_4e03_bool",
                                        [
                                          M.get_var (| "_6" |)
                                        ]
                                      |);
                                      M.get_var (| "_6" |)
                                    ]
                                  |);
                                  [Literal.number 0x0a6321261f8fd3728190e424705d7ec968fc4090923bd99f78033e386f8ef78c]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "return",
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
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
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
          )) in
          M.pure BlockUnit.Tt
        );
    |}.
  End deployed.
End C.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
