(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_26";
    Code.hex_name := 0x435f323600000000000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x435f32365f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x435f32365f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "C_26_deployed";
      Code.hex_name := 0x435f32365f6465706c6f79656400000000000000000000000000000000000000;
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
                            [Literal.number 0xe871c061];
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
                                  [Literal.number 64]
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
                              ["offset"],
                              Some (M.call_function (|
                                "calldataload",
                                [
                                  [Literal.number 4]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.if_ (|
                              M.call_function (|
                                "gt",
                                [
                                  M.get_var (| "offset" |);
                                  [Literal.number 0xffffffffffffffff]
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
                            M.if_ (|
                              M.call_function (|
                                "iszero",
                                [
                                  M.call_function (|
                                    "slt",
                                    [
                                      M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "offset" |);
                                          [Literal.number 35]
                                        ]
                                      |);
                                      M.call_function (|
                                        "calldatasize",
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
                              ["length"],
                              Some (M.call_function (|
                                "calldataload",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      [Literal.number 4];
                                      M.get_var (| "offset" |)
                                    ]
                                  |)
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.if_ (|
                              M.call_function (|
                                "gt",
                                [
                                  M.get_var (| "length" |);
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
                                        [Literal.number 36]
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
                                "shl",
                                [
                                  [Literal.number 5];
                                  M.get_var (| "length" |)
                                ]
                              |))
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
                                          M.get_var (| "_2" |);
                                          [Literal.number 63]
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
                                      [Literal.number 0xffffffffffffffff]
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
                                        [Literal.number 36]
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
                            M.declare (|
                              ["dst"],
                              Some (M.get_var (| "_1" |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "mstore",
                                [
                                  M.get_var (| "_1" |);
                                  M.get_var (| "length" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.assign (|
                              ["dst"],
                              Some (M.call_function (|
                                "add",
                                [
                                  M.get_var (| "_1" |);
                                  [Literal.number 0x20]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["dst_1"],
                              Some (M.get_var (| "dst" |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["srcEnd"],
                              Some (M.call_function (|
                                "add",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "offset" |);
                                      M.get_var (| "_2" |)
                                    ]
                                  |);
                                  [Literal.number 36]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.if_ (|
                              M.call_function (|
                                "gt",
                                [
                                  M.get_var (| "srcEnd" |);
                                  M.call_function (|
                                    "calldatasize",
                                    []
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
                              ["src"],
                              Some (M.call_function (|
                                "add",
                                [
                                  M.get_var (| "offset" |);
                                  [Literal.number 36]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            do!
                              M.scope (
                                M.pure BlockUnit.Tt
                              ) in
                            ltac:(M.monadic (
                              M.for_ (|
                                ltac:(M.monadic (
                                  M.call_function (|
                                    "lt",
                                    [
                                      M.get_var (| "src" |);
                                      M.get_var (| "srcEnd" |)
                                    ]
                                  |)
                                )),
                                M.scope (
                                  do! ltac:(M.monadic (
                                    M.assign (|
                                      ["src"],
                                      Some (M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "src" |);
                                          [Literal.number 0x20]
                                        ]
                                      |))
                                    |)
                                  )) in
                                  M.pure BlockUnit.Tt
                                ),
                                M.scope (
                                  do! ltac:(M.monadic (
                                    M.expr_stmt (|
                                      M.call_function (|
                                        "mstore",
                                        [
                                          M.get_var (| "dst" |);
                                          M.call_function (|
                                            "calldataload",
                                            [
                                              M.get_var (| "src" |)
                                            ]
                                          |)
                                        ]
                                      |)
                                    |)
                                  )) in
                                  do! ltac:(M.monadic (
                                    M.assign (|
                                      ["dst"],
                                      Some (M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "dst" |);
                                          [Literal.number 0x20]
                                        ]
                                      |))
                                    |)
                                  )) in
                                  M.pure BlockUnit.Tt
                                )
                              |)
                            ))
                          )) in
                          do! ltac:(M.monadic (
                            M.if_ (|
                              M.call_function (|
                                "gt",
                                [
                                  [Literal.number 68];
                                  M.call_function (|
                                    "calldatasize",
                                    []
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
                                "mstore",
                                [
                                  M.get_var (| "_3" |);
                                  M.call_function (|
                                    "shl",
                                    [
                                      [Literal.number 224];
                                      [Literal.number 0xf42f106d]
                                    ]
                                  |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["tail"],
                              Some (M.call_function (|
                                "add",
                                [
                                  M.get_var (| "_3" |);
                                  [Literal.number 68]
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
                                      M.get_var (| "_3" |);
                                      [Literal.number 4]
                                    ]
                                  |);
                                  [Literal.number 64]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["pos"],
                              Some (M.get_var (| "tail" |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["length_1"],
                              Some (M.call_function (|
                                "mload",
                                [
                                  M.get_var (| "_1" |)
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "mstore",
                                [
                                  M.get_var (| "tail" |);
                                  M.get_var (| "length_1" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.assign (|
                              ["pos"],
                              Some (M.call_function (|
                                "add",
                                [
                                  M.get_var (| "_3" |);
                                  [Literal.number 100]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["srcPtr"],
                              Some (M.get_var (| "dst_1" |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["i"],
                              Some ([Literal.number 0])
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            do!
                              M.scope (
                                M.pure BlockUnit.Tt
                              ) in
                            ltac:(M.monadic (
                              M.for_ (|
                                ltac:(M.monadic (
                                  M.call_function (|
                                    "lt",
                                    [
                                      M.get_var (| "i" |);
                                      M.get_var (| "length_1" |)
                                    ]
                                  |)
                                )),
                                M.scope (
                                  do! ltac:(M.monadic (
                                    M.assign (|
                                      ["i"],
                                      Some (M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "i" |);
                                          [Literal.number 1]
                                        ]
                                      |))
                                    |)
                                  )) in
                                  M.pure BlockUnit.Tt
                                ),
                                M.scope (
                                  do! ltac:(M.monadic (
                                    M.expr_stmt (|
                                      M.call_function (|
                                        "mstore",
                                        [
                                          M.get_var (| "pos" |);
                                          M.call_function (|
                                            "mload",
                                            [
                                              M.get_var (| "srcPtr" |)
                                            ]
                                          |)
                                        ]
                                      |)
                                    |)
                                  )) in
                                  do! ltac:(M.monadic (
                                    M.assign (|
                                      ["pos"],
                                      Some (M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "pos" |);
                                          [Literal.number 0x20]
                                        ]
                                      |))
                                    |)
                                  )) in
                                  do! ltac:(M.monadic (
                                    M.assign (|
                                      ["srcPtr"],
                                      Some (M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "srcPtr" |);
                                          [Literal.number 0x20]
                                        ]
                                      |))
                                    |)
                                  )) in
                                  M.pure BlockUnit.Tt
                                )
                              |)
                            ))
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "calldatacopy",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "_3" |);
                                      [Literal.number 36]
                                    ]
                                  |);
                                  [Literal.number 36];
                                  [Literal.number 0x20]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "revert",
                                [
                                  M.get_var (| "_3" |);
                                  M.call_function (|
                                    "sub",
                                    [
                                      M.get_var (| "pos" |);
                                      M.get_var (| "_3" |)
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
