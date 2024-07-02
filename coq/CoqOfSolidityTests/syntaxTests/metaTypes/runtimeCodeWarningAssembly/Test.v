(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module Test.
  Definition code : Code.t := {|
    Code.name := "Test_31";
    Code.hex_name := 0x546573745f333100000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x546573745f33315f6465706c6f79656400000000000000000000000000000000]
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
                        [Literal.string 0x546573745f33315f6465706c6f79656400000000000000000000000000000000]
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
      Code.name := "Test_31_deployed";
      Code.hex_name := 0x546573745f33315f6465706c6f79656400000000000000000000000000000000;
      Code.functions :=
        [
          Code.Function.make (
            "allocate_memory",
            ["size"],
            ["memPtr"],
            M.scope (
              do! ltac:(M.monadic (
                M.assign (|
                  ["memPtr"],
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
                  ["newFreePtr"],
                  Some (M.call_function (|
                    "add",
                    [
                      M.get_var (| "memPtr" |);
                      M.call_function (|
                        "and",
                        [
                          M.call_function (|
                            "add",
                            [
                              M.get_var (| "size" |);
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
                          [Literal.number 0xffffffffffffffff]
                        ]
                      |);
                      M.call_function (|
                        "lt",
                        [
                          M.get_var (| "newFreePtr" |);
                          M.get_var (| "memPtr" |)
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
              M.pure BlockUnit.Tt
            )
          );
          Code.Function.make (
            "checked_add_uint256",
            ["x"; "y"],
            ["sum"],
            M.scope (
              do! ltac:(M.monadic (
                M.assign (|
                  ["sum"],
                  Some (M.call_function (|
                    "add",
                    [
                      M.get_var (| "x" |);
                      M.get_var (| "y" |)
                    ]
                  |))
                |)
              )) in
              do! ltac:(M.monadic (
                M.if_ (|
                  M.call_function (|
                    "gt",
                    [
                      M.get_var (| "x" |);
                      M.get_var (| "sum" |)
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
                            [Literal.number 0x11]
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
              M.pure BlockUnit.Tt
            )
          )
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
                              ["_1"],
                              Some (M.call_function (|
                                "datasize",
                                [
                                  [Literal.string 0x435f33372e435f33375f6465706c6f7965640000000000000000000000000000]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_mpos"],
                              Some (M.call_function (|
                                "allocate_memory",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "_1" |);
                                      [Literal.number 32]
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
                                  M.get_var (| "expr_mpos" |);
                                  M.get_var (| "_1" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "datacopy",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "expr_mpos" |);
                                      [Literal.number 32]
                                    ]
                                  |);
                                  M.call_function (|
                                    "dataoffset",
                                    [
                                      [Literal.string 0x435f33372e435f33375f6465706c6f7965640000000000000000000000000000]
                                    ]
                                  |);
                                  M.get_var (| "_1" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr"],
                              Some (M.call_function (|
                                "mload",
                                [
                                  M.get_var (| "expr_mpos" |)
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["_2"],
                              Some (M.call_function (|
                                "datasize",
                                [
                                  [Literal.string 0x445f34342e445f34345f6465706c6f7965640000000000000000000000000000]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_mpos_1"],
                              Some (M.call_function (|
                                "allocate_memory",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "_2" |);
                                      [Literal.number 32]
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
                                  M.get_var (| "expr_mpos_1" |);
                                  M.get_var (| "_2" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "datacopy",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "expr_mpos_1" |);
                                      [Literal.number 32]
                                    ]
                                  |);
                                  M.call_function (|
                                    "dataoffset",
                                    [
                                      [Literal.string 0x445f34342e445f34345f6465706c6f7965640000000000000000000000000000]
                                    ]
                                  |);
                                  M.get_var (| "_2" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_1"],
                              Some (M.call_function (|
                                "checked_add_uint256",
                                [
                                  M.get_var (| "expr" |);
                                  M.call_function (|
                                    "mload",
                                    [
                                      M.get_var (| "expr_mpos_1" |)
                                    ]
                                  |)
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
                                  [Literal.string 0x435f333700000000000000000000000000000000000000000000000000000000]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_mpos_2"],
                              Some (M.call_function (|
                                "allocate_memory",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "_3" |);
                                      [Literal.number 32]
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
                                  M.get_var (| "expr_mpos_2" |);
                                  M.get_var (| "_3" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "datacopy",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "expr_mpos_2" |);
                                      [Literal.number 32]
                                    ]
                                  |);
                                  M.call_function (|
                                    "dataoffset",
                                    [
                                      [Literal.string 0x435f333700000000000000000000000000000000000000000000000000000000]
                                    ]
                                  |);
                                  M.get_var (| "_3" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_2"],
                              Some (M.call_function (|
                                "checked_add_uint256",
                                [
                                  M.get_var (| "expr_1" |);
                                  M.call_function (|
                                    "mload",
                                    [
                                      M.get_var (| "expr_mpos_2" |)
                                    ]
                                  |)
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["_4"],
                              Some (M.call_function (|
                                "datasize",
                                [
                                  [Literal.string 0x445f343400000000000000000000000000000000000000000000000000000000]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_mpos_3"],
                              Some (M.call_function (|
                                "allocate_memory",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "_4" |);
                                      [Literal.number 32]
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
                                  M.get_var (| "expr_mpos_3" |);
                                  M.get_var (| "_4" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "datacopy",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.get_var (| "expr_mpos_3" |);
                                      [Literal.number 32]
                                    ]
                                  |);
                                  M.call_function (|
                                    "dataoffset",
                                    [
                                      [Literal.string 0x445f343400000000000000000000000000000000000000000000000000000000]
                                    ]
                                  |);
                                  M.get_var (| "_4" |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["var"],
                              Some (M.call_function (|
                                "checked_add_uint256",
                                [
                                  M.get_var (| "expr_2" |);
                                  M.call_function (|
                                    "mload",
                                    [
                                      M.get_var (| "expr_mpos_3" |)
                                    ]
                                  |)
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
                                  M.get_var (| "var" |)
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

    Module C.
      Definition code : Code.t := {|
        Code.name := "C_37";
        Code.hex_name := 0x435f333700000000000000000000000000000000000000000000000000000000;
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
                        [Literal.string 0x435f33375f6465706c6f79656400000000000000000000000000000000000000]
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
                            [Literal.string 0x435f33375f6465706c6f79656400000000000000000000000000000000000000]
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
          Code.name := "C_37_deployed";
          Code.hex_name := 0x435f33375f6465706c6f79656400000000000000000000000000000000000000;
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

    Module D.
      Definition code : Code.t := {|
        Code.name := "D_44";
        Code.hex_name := 0x445f343400000000000000000000000000000000000000000000000000000000;
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
                        [Literal.string 0x445f34345f6465706c6f79656400000000000000000000000000000000000000]
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
                            [Literal.string 0x445f34345f6465706c6f79656400000000000000000000000000000000000000]
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
          Code.name := "D_44_deployed";
          Code.hex_name := 0x445f34345f6465706c6f79656400000000000000000000000000000000000000;
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
    End D.
  End deployed.
End Test.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
