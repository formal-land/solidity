(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_51";
    Code.hex_name := 0x435f353100000000000000000000000000000000000000000000000000000000;
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
                ["programSize"],
                Some (M.call_function (|
                  "datasize",
                  [
                    [Literal.string 0x435f353100000000000000000000000000000000000000000000000000000000]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["argSize"],
                Some (M.call_function (|
                  "sub",
                  [
                    M.call_function (|
                      "codesize",
                      []
                    |);
                    M.get_var (| "programSize" |)
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
                            M.get_var (| "argSize" |);
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
              M.expr_stmt (|
                M.call_function (|
                  "codecopy",
                  [
                    M.get_var (| "_1" |);
                    M.get_var (| "programSize" |);
                    M.get_var (| "argSize" |)
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
                            M.get_var (| "argSize" |)
                          ]
                        |);
                        M.get_var (| "_1" |)
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
                ["value"],
                Some (M.call_function (|
                  "mload",
                  [
                    M.get_var (| "_1" |)
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["value_1"],
                Some (M.call_function (|
                  "mload",
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
                  "sstore",
                  [
                    [Literal.number 0];
                    M.get_var (| "value" |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.expr_stmt (|
                M.call_function (|
                  "sstore",
                  [
                    [Literal.number 1];
                    M.get_var (| "value_1" |)
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
              M.declare (|
                ["_3"],
                Some (M.call_function (|
                  "datasize",
                  [
                    [Literal.string 0x435f35315f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x435f35315f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "C_51_deployed";
      Code.hex_name := 0x435f35315f6465706c6f79656400000000000000000000000000000000000000;
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
                            Some (Literal.number 0xb4f40c61),
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
                                        "sload",
                                        [
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
                                      [Literal.number 32]
                                    ]
                                  |)
                                |)
                              )) in
                              M.pure BlockUnit.Tt
                            )
                          );
                          (
                            Some (Literal.number 0xe5aa3d58),
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
End C.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
