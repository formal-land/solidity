(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_181";
    Code.hex_name := 0x435f313831000000000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x435f3138315f6465706c6f796564000000000000000000000000000000000000]
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
                        [Literal.string 0x435f3138315f6465706c6f796564000000000000000000000000000000000000]
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
      Code.name := "C_181_deployed";
      Code.hex_name := 0x435f3138315f6465706c6f796564000000000000000000000000000000000000;
      Code.functions :=
        [
          Code.Function.make (
            "external_fun_g5",
            [],
            [],
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
                      [Literal.number 1]
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
                            Some (Literal.number 0x32ce13d4),
                            M.scope (
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "external_fun_g5",
                                    []
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0x3c9d377d),
                            M.scope (
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "external_fun_g5",
                                    []
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0x420467d7),
                            M.scope (
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "external_fun_g5",
                                    []
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0x6970a924),
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
                                      [Literal.number 1]
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
                          );
                          (
                            Some (Literal.number 0x7c396b83),
                            M.scope (
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "external_fun_g5",
                                    []
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0x9942ec6f),
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
                                  ["memPos_1"],
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
                                      M.get_var (| "memPos_1" |);
                                      [Literal.number 1]
                                    ]
                                  |)
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "return",
                                    [
                                      M.get_var (| "memPos_1" |);
                                      [Literal.number 32]
                                    ]
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xaaf05f3d),
                            M.scope (
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "external_fun_g5",
                                    []
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xbdd8a366),
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
                                  ["memPos_2"],
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
                                      M.get_var (| "memPos_2" |);
                                      [Literal.number 1]
                                    ]
                                  |)
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "return",
                                    [
                                      M.get_var (| "memPos_2" |);
                                      [Literal.number 32]
                                    ]
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xc27fc305),
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
                                  ["memPos_3"],
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
                                      M.get_var (| "memPos_3" |);
                                      [Literal.number 1]
                                    ]
                                  |)
                                |)
                              )) in
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "return",
                                    [
                                      M.get_var (| "memPos_3" |);
                                      [Literal.number 32]
                                    ]
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xc3f90202),
                            M.scope (
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "external_fun_g5",
                                    []
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xec0aa1d6),
                            M.scope (
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "external_fun_g5",
                                    []
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xf5174ae9),
                            M.scope (
                              do! ltac:(M.monadic (
                                M.expr_stmt (|
                                  M.call_function (|
                                    "external_fun_g5",
                                    []
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
