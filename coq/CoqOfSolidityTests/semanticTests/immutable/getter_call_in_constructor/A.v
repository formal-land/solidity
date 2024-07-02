(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module A.
  Definition code : Code.t := {|
    Code.name := "A_16";
    Code.hex_name := 0x415f313600000000000000000000000000000000000000000000000000000000;
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
                    [Literal.number 0xa0]
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
              M.expr_stmt (|
                M.call_function (|
                  "mstore",
                  [
                    [Literal.number 128];
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
                    M.get_var (| "_1" |);
                    M.call_function (|
                      "shl",
                      [
                        [Literal.number 226];
                        [Literal.number 0x03155a67]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["_2"],
                Some (M.call_function (|
                  "staticcall",
                  [
                    M.call_function (|
                      "gas",
                      []
                    |);
                    M.call_function (|
                      "address",
                      []
                    |);
                    M.get_var (| "_1" |);
                    [Literal.number 4];
                    M.get_var (| "_1" |);
                    [Literal.number 32]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.if_ (|
                M.call_function (|
                  "iszero",
                  [
                    M.get_var (| "_2" |)
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
              M.declare (|
                ["expr"],
                Some ([Literal.number 0])
              |)
            )) in
            do! ltac:(M.monadic (
              M.if_ (|
                M.get_var (| "_2" |),
                M.scope (
                  do! ltac:(M.monadic (
                    M.declare (|
                      ["_3"],
                      Some ([Literal.number 32])
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.if_ (|
                      M.call_function (|
                        "gt",
                        [
                          [Literal.number 32];
                          M.call_function (|
                            "returndatasize",
                            []
                          |)
                        ]
                      |),
                      M.scope (
                        do! ltac:(M.monadic (
                          M.assign (|
                            ["_3"],
                            Some (M.call_function (|
                              "returndatasize",
                              []
                            |))
                          |)
                        )) in
                        M.pure BlockUnit.Tt
                      )
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.declare (|
                      ["newFreePtr"],
                      Some (M.call_function (|
                        "add",
                        [
                          M.get_var (| "_1" |);
                          M.call_function (|
                            "and",
                            [
                              M.call_function (|
                                "add",
                                [
                                  M.get_var (| "_3" |);
                                  [Literal.number 31]
                                ]
                              |);
                              M.call_function (|
                                "not",
                                [
                                  [Literal.number 31]
                                ]
                              |)
                            ]
                          |)
                        ]
                      |))
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.if_ (|
                      M.call_function (|
                        "or",
                        [
                          M.call_function (|
                            "gt",
                            [
                              M.get_var (| "newFreePtr" |);
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
                          |);
                          M.call_function (|
                            "lt",
                            [
                              M.get_var (| "newFreePtr" |);
                              M.get_var (| "_1" |)
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
                          M.get_var (| "newFreePtr" |)
                        ]
                      |)
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.if_ (|
                      M.call_function (|
                        "slt",
                        [
                          M.call_function (|
                            "sub",
                            [
                              M.call_function (|
                                "add",
                                [
                                  M.get_var (| "_1" |);
                                  M.get_var (| "_3" |)
                                ]
                              |);
                              M.get_var (| "_1" |)
                            ]
                          |);
                          [Literal.number 32]
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
                    M.assign (|
                      ["expr"],
                      Some (M.call_function (|
                        "mload",
                        [
                          M.get_var (| "_1" |)
                        ]
                      |))
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
                    M.get_var (| "expr" |)
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
              M.declare (|
                ["_5"],
                Some (M.call_function (|
                  "datasize",
                  [
                    [Literal.string 0x415f31365f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x415f31365f6465706c6f79656400000000000000000000000000000000000000]
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
                  "setimmutable",
                  [
                    M.get_var (| "_4" |);
                    [Literal.string 0x3300000000000000000000000000000000000000000000000000000000000000];
                    M.call_function (|
                      "mload",
                      [
                        [Literal.number 128]
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
      Code.name := "A_16_deployed";
      Code.hex_name := 0x415f31365f6465706c6f79656400000000000000000000000000000000000000;
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
                            Some (Literal.number 0x0c55699c),
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
                                    "mstore",
                                    [
                                      M.get_var (| "_1" |);
                                      M.call_function (|
                                        "loadimmutable",
                                        [
                                          [Literal.string 0x3300000000000000000000000000000000000000000000000000000000000000]
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
                                      [Literal.number 32]
                                    ]
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xa56dfe4a),
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
                                  ["_2"],
                                  Some (M.call_function (|
                                    "sload",
                                    [
                                      [Literal.number 0]
                                    ]
                                  |))
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.declare (|
                                  ["memPos"],
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
                                      M.get_var (| "memPos" |);
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
                                      M.get_var (| "memPos" |);
                                      [Literal.number 32]
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
End A.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
