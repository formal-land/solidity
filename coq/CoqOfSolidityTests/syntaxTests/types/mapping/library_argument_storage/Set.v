(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module Set.
  Definition code : Code.t := {|
    Code.name := "Set_34";
    Code.hex_name := 0x5365745f33340000000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x5365745f33345f6465706c6f7965640000000000000000000000000000000000]
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
                        [Literal.string 0x5365745f33345f6465706c6f7965640000000000000000000000000000000000]
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
      Code.name := "Set_34_deployed";
      Code.hex_name := 0x5365745f33345f6465706c6f7965640000000000000000000000000000000000;
      Code.functions :=
        [
          Code.Function.make (
            "fun_insert",
            ["var_self_slot"; "var_value"],
            ["var"],
            M.scope (
              do! ltac:(M.monadic (
                M.assign (|
                  ["var"],
                  Some ([Literal.number 0])
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      [Literal.number 0];
                      M.get_var (| "var_value" |)
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      [Literal.number 0x20];
                      M.get_var (| "var_self_slot" |)
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.if_ (|
                  M.call_function (|
                    "and",
                    [
                      M.call_function (|
                        "sload",
                        [
                          M.call_function (|
                            "keccak256",
                            [
                              [Literal.number 0];
                              [Literal.number 0x40]
                            ]
                          |)
                        ]
                      |);
                      [Literal.number 0xff]
                    ]
                  |),
                  M.scope (
                    do! ltac:(M.monadic (
                      M.assign (|
                        ["var"],
                        Some ([Literal.number 0])
                      |)
                    )) in
                    do! ltac:(M.monadic (
                      M.leave (||)
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
                      [Literal.number 0];
                      M.get_var (| "var_value" |)
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      [Literal.number 0x20];
                      M.get_var (| "var_self_slot" |)
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.declare (|
                  ["dataSlot"],
                  Some (M.call_function (|
                    "keccak256",
                    [
                      [Literal.number 0];
                      [Literal.number 0x40]
                    ]
                  |))
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "sstore",
                    [
                      M.get_var (| "dataSlot" |);
                      M.call_function (|
                        "or",
                        [
                          M.call_function (|
                            "and",
                            [
                              M.call_function (|
                                "sload",
                                [
                                  M.get_var (| "dataSlot" |)
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
                          [Literal.number 0x01]
                        ]
                      |)
                    ]
                  |)
                |)
              )) in
              do! ltac:(M.monadic (
                M.assign (|
                  ["var"],
                  Some ([Literal.number 0x01])
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
                            [Literal.number 0x831cb739];
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
                                "eq",
                                [
                                  M.call_function (|
                                    "loadimmutable",
                                    [
                                      [Literal.string 0x6c6962726172795f6465706c6f795f6164647265737300000000000000000000]
                                    ]
                                  |);
                                  M.call_function (|
                                    "address",
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
                              ["ret"],
                              Some (M.call_function (|
                                "fun_insert",
                                [
                                  M.call_function (|
                                    "calldataload",
                                    [
                                      [Literal.number 4]
                                    ]
                                  |);
                                  M.call_function (|
                                    "calldataload",
                                    [
                                      [Literal.number 36]
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
                                  M.call_function (|
                                    "iszero",
                                    [
                                      M.call_function (|
                                        "iszero",
                                        [
                                          M.get_var (| "ret" |)
                                        ]
                                      |)
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
  End deployed.
End Set.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).