(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module T.
  Definition code : Code.t := {|
    Code.name := "T_14";
    Code.hex_name := 0x545f313400000000000000000000000000000000000000000000000000000000;
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
              M.if_ (|
                M.call_function (|
                  "iszero",
                  [
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
                  "mstore",
                  [
                    M.get_var (| "_1" |);
                    M.call_function (|
                      "shl",
                      [
                        [Literal.number 228];
                        [Literal.number 0x026121ff]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["_2"],
                Some ([Literal.number 0])
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["_3"],
                Some (M.call_function (|
                  "call",
                  [
                    M.call_function (|
                      "gas",
                      []
                    |);
                    M.call_function (|
                      "address",
                      []
                    |);
                    [Literal.number 0];
                    M.get_var (| "_1" |);
                    [Literal.number 4];
                    M.get_var (| "_1" |);
                    [Literal.number 0]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.if_ (|
                M.call_function (|
                  "iszero",
                  [
                    M.get_var (| "_3" |)
                  ]
                |),
                M.scope (
                  do! ltac:(M.monadic (
                    M.declare (|
                      ["pos"],
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
                        "returndatacopy",
                        [
                          M.get_var (| "pos" |);
                          [Literal.number 0];
                          M.call_function (|
                            "returndatasize",
                            []
                          |)
                        ]
                      |)
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call_function (|
                        "revert",
                        [
                          M.get_var (| "pos" |);
                          M.call_function (|
                            "returndatasize",
                            []
                          |)
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
                M.get_var (| "_3" |),
                M.scope (
                  do! ltac:(M.monadic (
                    M.if_ (|
                      M.call_function (|
                        "gt",
                        [
                          M.get_var (| "_1" |);
                          M.call_function (|
                            "sub",
                            [
                              M.call_function (|
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
                                [Literal.number 0x41]
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
                    M.assign (|
                      ["_2"],
                      Some ([Literal.number 0])
                    |)
                  )) in
                  M.pure BlockUnit.Tt
                )
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
              M.declare (|
                ["_5"],
                Some (M.call_function (|
                  "datasize",
                  [
                    [Literal.string 0x545f31345f6465706c6f79656400000000000000000000000000000000000000]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "codecopy",
                  [
                    M.get_var (| "_4" |);
                    M.call_function (|
                      "dataoffset",
                      [
                        [Literal.string 0x545f31345f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |);
                    M.get_var (| "_5" |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "return",
                  [
                    M.get_var (| "_4" |);
                    M.get_var (| "_5" |)
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
      Code.name := "T_14_deployed";
      Code.hex_name := 0x545f31345f6465706c6f79656400000000000000000000000000000000000000;
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
End T.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
