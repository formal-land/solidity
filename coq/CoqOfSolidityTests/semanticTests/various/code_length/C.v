(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_97";
    Code.hex_name := 0x435f393700000000000000000000000000000000000000000000000000000000;
    Code.functions :=
      [
        
      ];
    Code.body :=
      M.scope (
        do! ltac:(M.monadic (
          M.scope (
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "mstore",
                  [
                    [Literal.number 64];
                    [Literal.number 128]
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
              M.expr_stmt (|
                M.call_function (|
                  "sstore",
                  [
                    [Literal.number 0];
                    M.call_function (|
                      "extcodesize",
                      [
                        [Literal.number 0]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["_1"],
                Some ([Literal.number 0])
              |)
            )) in
            do! ltac:(M.monadic (
              M.assign (|
                ["_1"],
                Some ([Literal.number 0])
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "sstore",
                  [
                    [Literal.number 1];
                    M.call_function (|
                      "extcodesize",
                      [
                        M.call_function (|
                          "address",
                          []
                        |)
                      ]
                    |)
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
                      "eq",
                      [
                        [Literal.number 128];
                        M.call_function (|
                          "mload",
                          [
                            [Literal.number 64]
                          ]
                        |)
                      ]
                    |)
                  ]
                |),
                M.scope (
                  do! ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call_function (|
                        "mstore",
                        [
                          [Literal.number 0];
                          M.call_function (|
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
                  do! ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call_function (|
                        "mstore",
                        [
                          [Literal.number 4];
                          [Literal.number 1]
                        ]
                      |)
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call_function (|
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
              M.declare (|
                ["_3"],
                Some (M.call_function (|
                  "datasize",
                  [
                    [Literal.string 0x435f39375f6465706c6f79656400000000000000000000000000000000000000]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "codecopy",
                  [
                    M.get_var (| "_2" |);
                    M.call_function (|
                      "dataoffset",
                      [
                        [Literal.string 0x435f39375f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |);
                    M.get_var (| "_3" |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "return",
                  [
                    M.get_var (| "_2" |);
                    M.get_var (| "_3" |)
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
      Code.name := "C_97_deployed";
      Code.hex_name := 0x435f39375f6465706c6f79656400000000000000000000000000000000000000;
      Code.functions :=
        [
          
        ];
      Code.body :=
        M.scope (
          do! ltac:(M.monadic (
            M.scope (
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
                            [Literal.number 0x26121ff0];
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
                            M.declare (|
                              ["var_r1"],
                              Some (M.call_function (|
                                "gt",
                                [
                                  M.call_function (|
                                    "extcodesize",
                                    [
                                      M.call_function (|
                                        "address",
                                        []
                                      |)
                                    ]
                                  |);
                                  [Literal.number 0x32]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["var_r2"],
                              Some (M.call_function (|
                                "iszero",
                                [
                                  M.call_function (|
                                    "extcodesize",
                                    [
                                      [Literal.number 0]
                                    ]
                                  |)
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "mstore",
                                [
                                  [Literal.number 128];
                                  M.get_var (| "var_r1" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "mstore",
                                [
                                  [Literal.number 160];
                                  M.get_var (| "var_r2" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "return",
                                [
                                  [Literal.number 128];
                                  [Literal.number 64]
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
