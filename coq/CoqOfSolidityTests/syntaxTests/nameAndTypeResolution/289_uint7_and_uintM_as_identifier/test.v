(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module test.
  Definition code : Code.t := {|
    Code.name := "test_27";
    Code.hex_name := 0x746573745f323700000000000000000000000000000000000000000000000000;
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
                  "sload",
                  [
                    [Literal.number 0x00]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["length"],
                Some ([Literal.number 0x00])
              |)
            )) in
            do! ltac:(M.monadic (
              M.assign (|
                ["length"],
                Some (M.call_function (|
                  "shr",
                  [
                    [Literal.number 1];
                    M.get_var (| "_2" |)
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["outOfPlaceEncoding"],
                Some (M.call_function (|
                  "and",
                  [
                    M.get_var (| "_2" |);
                    [Literal.number 1]
                  ]
                |))
              |)
            )) in
            do! ltac:(M.monadic (
              M.if_ (|
                M.call_function (|
                  "iszero",
                  [
                    M.get_var (| "outOfPlaceEncoding" |)
                  ]
                |),
                M.scope (
                  do! ltac:(M.monadic (
                    M.assign (|
                      ["length"],
                      Some (M.call_function (|
                        "and",
                        [
                          M.get_var (| "length" |);
                          [Literal.number 0x7f]
                        ]
                      |))
                    |)
                  )) in
                  M.pure BlockUnit.Tt
                )
              |)
            )) in
            do! ltac:(M.monadic (
              M.if_ (|
                M.call_function (|
                  "eq",
                  [
                    M.get_var (| "outOfPlaceEncoding" |);
                    M.call_function (|
                      "lt",
                      [
                        M.get_var (| "length" |);
                        [Literal.number 32]
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
                          [Literal.number 0x00];
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
                          [Literal.number 0x22]
                        ]
                      |)
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call_function (|
                        "revert",
                        [
                          [Literal.number 0x00];
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
                  "gt",
                  [
                    M.get_var (| "length" |);
                    [Literal.number 31]
                  ]
                |),
                M.scope (
                  do! ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call_function (|
                        "mstore",
                        [
                          [Literal.number 0x00];
                          [Literal.number 0x00]
                        ]
                      |)
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.declare (|
                      ["data"],
                      Some (M.call_function (|
                        "keccak256",
                        [
                          [Literal.number 0x00];
                          [Literal.number 32]
                        ]
                      |))
                    |)
                  )) in
                  do! ltac:(M.monadic (
                    M.declare (|
                      ["_3"],
                      Some (M.call_function (|
                        "add",
                        [
                          M.get_var (| "data" |);
                          M.call_function (|
                            "shr",
                            [
                              [Literal.number 5];
                              M.call_function (|
                                "add",
                                [
                                  M.get_var (| "length" |);
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
                    M.declare (|
                      ["start"],
                      Some (M.get_var (| "data" |))
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
                              M.get_var (| "start" |);
                              M.get_var (| "_3" |)
                            ]
                          |)
                        )),
                        M.scope (
                          do! ltac:(M.monadic (
                            M.assign (|
                              ["start"],
                              Some (M.call_function (|
                                "add",
                                [
                                  M.get_var (| "start" |);
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
                                "sstore",
                                [
                                  M.get_var (| "start" |);
                                  [Literal.number 0x00]
                                ]
                              |)
                            |)
                          )) in
                          M.pure BlockUnit.Tt
                        )
                      |)
                    ))
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
                    [Literal.number 0x00];
                    M.call_function (|
                      "add",
                      [
                        [Literal.string 0x48656c6c6f203420796f75000000000000000000000000000000000000000000];
                        [Literal.number 22]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            do! ltac:(M.monadic (
              M.declare (|
                ["_4"],
                Some (M.call_function (|
                  "datasize",
                  [
                    [Literal.string 0x746573745f32375f6465706c6f79656400000000000000000000000000000000]
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
                        [Literal.string 0x746573745f32375f6465706c6f79656400000000000000000000000000000000]
                      ]
                    |);
                    M.get_var (| "_4" |)
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
                    M.get_var (| "_4" |)
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
      Code.name := "test_27_deployed";
      Code.hex_name := 0x746573745f32375f6465706c6f79656400000000000000000000000000000000;
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
End test.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).