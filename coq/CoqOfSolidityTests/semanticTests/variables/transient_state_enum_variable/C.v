(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_39";
    Code.hex_name := 0x435f333900000000000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x435f33395f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x435f33395f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "C_39_deployed";
      Code.hex_name := 0x435f33395f6465706c6f79656400000000000000000000000000000000000000;
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
                      M.call_function (|
                        "memoryguard",
                        [
                          [Literal.number 0x80]
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
                      M.declare (|
                        ["_1"],
                        Some ([Literal.number 0])
                      |)
                    )) in
                    do! ltac:(M.monadic (
                      M.switch (|
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
                        |),
                        [
                          (
                            Some (Literal.number 0x26121ff0),
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
                                  ["slot"],
                                  Some ([Literal.number 0])
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.assign (|
                                  ["slot"],
                                  Some ([Literal.number 0])
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "tstore",
                                    [
                                      [Literal.number 0];
                                      M.call_function (|
                                        "or",
                                        [
                                          M.call_function (|
                                            "and",
                                            [
                                              M.call_function (|
                                                "tload",
                                                [
                                                  [Literal.number 0]
                                                ]
                                              |);
                                              M.call_function (|
                                                "not",
                                                [
                                                  [Literal.number 255]
                                                ]
                                              |)
                                            ]
                                          |);
                                          [Literal.number 2]
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
                                    "mstore",
                                    [
                                      M.get_var (| "_2" |);
                                      M.call_function (|
                                        "shl",
                                        [
                                          [Literal.number 225];
                                          [Literal.number 0x710bcdc7]
                                        ]
                                      |)
                                    ]
                                  |)
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
                                      M.get_var (| "_2" |);
                                      [Literal.number 4];
                                      M.get_var (| "_2" |);
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
                                            M.get_var (| "_2" |);
                                            [Literal.number 0xffffffffffffffff]
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
                                            M.get_var (| "_2" |)
                                          ]
                                        |)
                                      |)
                                    )) in
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["_1"],
                                        Some ([Literal.number 0])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.declare (|
                                  ["value"],
                                  Some (M.call_function (|
                                    "and",
                                    [
                                      M.call_function (|
                                        "tload",
                                        [
                                          M.get_var (| "_1" |)
                                        ]
                                      |);
                                      [Literal.number 255]
                                    ]
                                  |))
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
                                          M.get_var (| "value" |);
                                          [Literal.number 4]
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
                                            M.get_var (| "_1" |);
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
                                            [Literal.number 0x21]
                                          ]
                                        |)
                                      |)
                                    )) in
                                    do! ltac:(M.monadic (
                                      M.expr_stmt (|
                                        M.call_function (|
                                          "revert",
                                          [
                                            M.get_var (| "_1" |);
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
                                M.if_ (|
                                  M.call_function (|
                                    "iszero",
                                    [
                                      M.call_function (|
                                        "eq",
                                        [
                                          M.get_var (| "value" |);
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
                                            M.get_var (| "_1" |);
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
                                            M.get_var (| "_1" |);
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
                                    "return",
                                    [
                                      M.get_var (| "_1" |);
                                      M.get_var (| "_1" |)
                                    ]
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xe2179b8e),
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
                                            M.get_var (| "_1" |);
                                            M.get_var (| "_1" |)
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
                                      M.get_var (| "_1" |)
                                    ]
                                  |),
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.expr_stmt (|
                                        M.call_function (|
                                          "revert",
                                          [
                                            M.get_var (| "_1" |);
                                            M.get_var (| "_1" |)
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
                                  ["slot_1"],
                                  Some (M.get_var (| "_1" |))
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.assign (|
                                  ["slot_1"],
                                  Some (M.get_var (| "_1" |))
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "tstore",
                                    [
                                      M.get_var (| "_1" |);
                                      M.call_function (|
                                        "or",
                                        [
                                          M.call_function (|
                                            "and",
                                            [
                                              M.call_function (|
                                                "tload",
                                                [
                                                  M.get_var (| "_1" |)
                                                ]
                                              |);
                                              M.call_function (|
                                                "not",
                                                [
                                                  [Literal.number 255]
                                                ]
                                              |)
                                            ]
                                          |);
                                          [Literal.number 1]
                                        ]
                                      |)
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
                                      M.get_var (| "_1" |)
                                    ]
                                  |)
                                |)
                              )) in
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
