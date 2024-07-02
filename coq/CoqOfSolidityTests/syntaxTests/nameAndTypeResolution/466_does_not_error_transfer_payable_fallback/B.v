(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module B.
  Definition code : Code.t := {|
    Code.name := "B_21";
    Code.hex_name := 0x425f323100000000000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x425f32315f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x425f32315f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "B_21_deployed";
      Code.hex_name := 0x425f32315f6465706c6f79656400000000000000000000000000000000000000;
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
                        "call",
                        [
                          [Literal.number 0x00];
                          M.call_function (|
                            "and",
                            [
                              M.call_function (|
                                "sload",
                                [
                                  [Literal.number 0x00]
                                ]
                              |);
                              M.call_function (|
                                "sub",
                                [
                                  M.call_function (|
                                    "shl",
                                    [
                                      [Literal.number 160];
                                      [Literal.number 1]
                                    ]
                                  |);
                                  [Literal.number 1]
                                ]
                              |)
                            ]
                          |);
                          [Literal.number 0x64];
                          [Literal.number 0x00];
                          [Literal.number 0x00];
                          [Literal.number 0x00];
                          [Literal.number 0x00]
                        ]
                      |)
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
                            [Literal.number 0x00];
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
                M.expr_stmt (|
                  M.call_function (|
                    "stop",
                    []
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
End B.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).
