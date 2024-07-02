(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_52";
    Code.hex_name := 0x435f353200000000000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x435f35325f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x435f35325f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "C_52_deployed";
      Code.hex_name := 0x435f35325f6465706c6f79656400000000000000000000000000000000000000;
      Code.functions :=
        [
          Code.Function.make (
            "array_push_zero_array_struct_S_storage_dyn__ptr",
            [],
            ["slot"; "offset"],
            M.scope (
              do! ltac:(M.monadic (
                M.declare (|
                  ["oldLen"],
                  Some (M.call_function (|
                    "sload",
                    [
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
                      M.call_function (|
                        "lt",
                        [
                          M.get_var (| "oldLen" |);
                          [Literal.number 18446744073709551616]
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
                M.declare (|
                  ["_1"],
                  Some (M.call_function (|
                    "add",
                    [
                      M.get_var (| "oldLen" |);
                      [Literal.number 1]
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
                          M.get_var (| "oldLen" |);
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
                            [Literal.number 0x32]
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
                      [Literal.number 0];
                      [Literal.number 0]
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
                      [Literal.number 0];
                      [Literal.number 0x20]
                    ]
                  |))
                |)
              )) in
              do! ltac:(M.monadic (
                M.assign (|
                  ["slot"],
                  Some (M.call_function (|
                    "add",
                    [
                      M.get_var (| "data" |);
                      M.call_function (|
                        "shl",
                        [
                          [Literal.number 1];
                          M.get_var (| "oldLen" |)
                        ]
                      |)
                    ]
                  |))
                |)
              )) in
              do! ltac:(M.monadic (
                M.assign (|
                  ["offset"],
                  Some ([Literal.number 0])
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
                              ["_1"; "_2"],
                              Some (M.call_function (|
                                "array_push_zero_array_struct_S_storage_dyn__ptr",
                                []
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "sstore",
                                [
                                  M.get_var (| "_1" |);
                                  M.call_function (|
                                    "shl",
                                    [
                                      [Literal.number 200];
                                      [Literal.number 1]
                                    ]
                                  |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["_3"; "_4"],
                              Some (M.call_function (|
                                "array_push_zero_array_struct_S_storage_dyn__ptr",
                                []
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "sstore",
                                [
                                  M.get_var (| "_3" |);
                                  M.call_function (|
                                    "shl",
                                    [
                                      [Literal.number 200];
                                      [Literal.number 1]
                                    ]
                                  |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["oldLen"],
                              Some (M.call_function (|
                                "sload",
                                [
                                  [Literal.number 0]
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
                                  [Literal.number 0]
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
                                    "iszero",
                                    [
                                      M.get_var (| "oldLen" |)
                                    ]
                                  |)
                                ]
                              |),
                              M.scope (
                                do! ltac:(M.monadic (
                                  M.if_ (|
                                    M.call_function (|
                                      "iszero",
                                      [
                                        M.call_function (|
                                          "eq",
                                          [
                                            M.get_var (| "oldLen" |);
                                            M.call_function (|
                                              "and",
                                              [
                                                M.get_var (| "oldLen" |);
                                                M.call_function (|
                                                  "sub",
                                                  [
                                                    M.call_function (|
                                                      "shl",
                                                      [
                                                        [Literal.number 255];
                                                        [Literal.number 1]
                                                      ]
                                                    |);
                                                    [Literal.number 1]
                                                  ]
                                                |)
                                              ]
                                            |)
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
                                do! ltac:(M.monadic (
                                  M.expr_stmt (|
                                    M.call_function (|
                                      "mstore",
                                      [
                                        [Literal.number 0];
                                        [Literal.number 0]
                                      ]
                                    |)
                                  |)
                                )) in
                                do! ltac:(M.monadic (
                                  M.declare (|
                                    ["_5"],
                                    Some (M.call_function (|
                                      "add",
                                      [
                                        [Literal.number 18569430475105882587588266137607568536673111973893317399460219858819262702947];
                                        M.call_function (|
                                          "shl",
                                          [
                                            [Literal.number 1];
                                            M.get_var (| "oldLen" |)
                                          ]
                                        |)
                                      ]
                                    |))
                                  |)
                                )) in
                                do! ltac:(M.monadic (
                                  M.declare (|
                                    ["start"],
                                    Some ([Literal.number 18569430475105882587588266137607568536673111973893317399460219858819262702947])
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
                                            M.get_var (| "_5" |)
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
                                                [Literal.number 2]
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
                                                [Literal.number 0]
                                              ]
                                            |)
                                          |)
                                        )) in
                                        do! ltac:(M.monadic (
                                          M.declare (|
                                            ["_6"],
                                            Some (M.call_function (|
                                              "add",
                                              [
                                                M.get_var (| "start" |);
                                                [Literal.number 1]
                                              ]
                                            |))
                                          |)
                                        )) in
                                        do! ltac:(M.monadic (
                                          M.declare (|
                                            ["oldLen_1"],
                                            Some (M.call_function (|
                                              "sload",
                                              [
                                                M.get_var (| "_6" |)
                                              ]
                                            |))
                                          |)
                                        )) in
                                        do! ltac:(M.monadic (
                                          M.expr_stmt (|
                                            M.call_function (|
                                              "sstore",
                                              [
                                                M.get_var (| "_6" |);
                                                [Literal.number 0]
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
                                                  "iszero",
                                                  [
                                                    M.get_var (| "oldLen_1" |)
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
                                                      M.get_var (| "_6" |)
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
                                                      [Literal.number 0];
                                                      [Literal.number 0x20]
                                                    ]
                                                  |))
                                                |)
                                              )) in
                                              do! ltac:(M.monadic (
                                                M.declare (|
                                                  ["_7"],
                                                  Some (M.call_function (|
                                                    "add",
                                                    [
                                                      M.get_var (| "data" |);
                                                      M.get_var (| "oldLen_1" |)
                                                    ]
                                                  |))
                                                |)
                                              )) in
                                              do! ltac:(M.monadic (
                                                M.declare (|
                                                  ["start_1"],
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
                                                          M.get_var (| "start_1" |);
                                                          M.get_var (| "_7" |)
                                                        ]
                                                      |)
                                                    )),
                                                    M.scope (
                                                      do! ltac:(M.monadic (
                                                        M.assign (|
                                                          ["start_1"],
                                                          Some (M.call_function (|
                                                            "add",
                                                            [
                                                              M.get_var (| "start_1" |);
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
                                                              M.get_var (| "start_1" |);
                                                              [Literal.number 0]
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
