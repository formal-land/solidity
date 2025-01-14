(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module A.
  Definition code : Code.t := {|
    Code.name := "A_30";
    Code.hex_name := 0x415f333000000000000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x415f33305f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x415f33305f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "A_30_deployed";
      Code.hex_name := 0x415f33305f6465706c6f79656400000000000000000000000000000000000000;
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
                              ["_2"],
                              Some (M.call_function (|
                                "datasize",
                                [
                                  [Literal.string 0x4c325f3230000000000000000000000000000000000000000000000000000000]
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
                            M.expr_stmt (|
                              M.call_function (|
                                "mstore",
                                [
                                  M.get_var (| "_1" |);
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
                                      M.get_var (| "_1" |);
                                      [Literal.number 32]
                                    ]
                                  |);
                                  M.call_function (|
                                    "dataoffset",
                                    [
                                      [Literal.string 0x4c325f3230000000000000000000000000000000000000000000000000000000]
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

    Module L2.
      Definition code : Code.t := {|
        Code.name := "L2_20";
        Code.hex_name := 0x4c325f3230000000000000000000000000000000000000000000000000000000;
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
                        [Literal.string 0x4c325f32305f6465706c6f796564000000000000000000000000000000000000]
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
                            [Literal.string 0x4c325f32305f6465706c6f796564000000000000000000000000000000000000]
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
                      "setimmutable",
                      [
                        M.get_var (| "_1" |);
                        [Literal.string 0x6c6962726172795f6465706c6f795f6164647265737300000000000000000000];
                        M.call_function (|
                          "address",
                          []
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
          Code.name := "L2_20_deployed";
          Code.hex_name := 0x4c325f32305f6465706c6f796564000000000000000000000000000000000000;
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
    End L2.
  End deployed.
End A.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
