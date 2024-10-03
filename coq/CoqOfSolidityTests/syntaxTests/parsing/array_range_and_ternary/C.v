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
            "calldata_array_index_range_access_bytes_calldata",
            ["offset"; "length"; "startIndex"; "endIndex"],
            ["offsetOut"; "lengthOut"],
            M.scope (
              do! ltac:(M.monadic (
                M.if_ (|
                  M.call_function (|
                    "gt",
                    [
                      M.get_var (| "startIndex" |);
                      M.get_var (| "endIndex" |)
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
                    "gt",
                    [
                      M.get_var (| "endIndex" |);
                      M.get_var (| "length" |)
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
                  ["offsetOut"],
                  Some (M.call_function (|
                    "add",
                    [
                      M.get_var (| "offset" |);
                      M.get_var (| "startIndex" |)
                    ]
                  |))
                |)
              )) in
              do! ltac:(M.monadic (
                M.assign (|
                  ["lengthOut"],
                  Some (M.call_function (|
                    "sub",
                    [
                      M.get_var (| "endIndex" |);
                      M.get_var (| "startIndex" |)
                    ]
                  |))
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          );
          Code.Function.make (
            "abi_decode_uint256",
            ["headStart"; "dataEnd"],
            ["value0"],
            M.scope (
              do! ltac:(M.monadic (
                M.if_ (|
                  M.call_function (|
                    "slt",
                    [
                      M.call_function (|
                        "sub",
                        [
                          M.get_var (| "dataEnd" |);
                          M.get_var (| "headStart" |)
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
                  ["value0"],
                  Some (M.call_function (|
                    "calldataload",
                    [
                      M.get_var (| "headStart" |)
                    ]
                  |))
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
                            [Literal.number 0x240a58a2];
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
                              ["value"],
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
                                "iszero",
                                [
                                  M.call_function (|
                                    "eq",
                                    [
                                      M.get_var (| "value" |);
                                      M.call_function (|
                                        "iszero",
                                        [
                                          M.call_function (|
                                            "iszero",
                                            [
                                              M.get_var (| "value" |)
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
                              ["arrayPos"],
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
                            M.if_ (|
                              M.call_function (|
                                "gt",
                                [
                                  M.call_function (|
                                    "add",
                                    [
                                      M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "offset" |);
                                          M.get_var (| "length" |)
                                        ]
                                      |);
                                      [Literal.number 36]
                                    ]
                                  |);
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
                              ["expr"],
                              Some ([Literal.number 0])
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.switch (|
                              M.get_var (| "value" |),
                              [
                                (
                                  Some (Literal.number 0),
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["expr"],
                                        Some ([Literal.number 0x02])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                );
                                (
                                  None,
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["expr"],
                                        Some ([Literal.number 0x01])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                )
                              ]
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
                                        "and",
                                        [
                                          M.get_var (| "expr" |);
                                          [Literal.number 0xff]
                                        ]
                                      |);
                                      M.get_var (| "length" |)
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
                              ["expr_1"],
                              Some ([Literal.number 0])
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.switch (|
                              M.get_var (| "value" |),
                              [
                                (
                                  Some (Literal.number 0),
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["expr_1"],
                                        Some ([Literal.number 0x02])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                );
                                (
                                  None,
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["expr_1"],
                                        Some ([Literal.number 0x01])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                )
                              ]
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_offset"; "expr_length"],
                              Some (M.call_function (|
                                "calldata_array_index_range_access_bytes_calldata",
                                [
                                  M.get_var (| "arrayPos" |);
                                  M.get_var (| "length" |);
                                  M.call_function (|
                                    "and",
                                    [
                                      M.get_var (| "expr_1" |);
                                      [Literal.number 0xff]
                                    ]
                                  |);
                                  M.get_var (| "length" |)
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "pop",
                                [
                                  M.call_function (|
                                    "abi_decode_uint256",
                                    [
                                      M.get_var (| "expr_offset" |);
                                      M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "expr_offset" |);
                                          M.get_var (| "expr_length" |)
                                        ]
                                      |)
                                    ]
                                  |)
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_2"],
                              Some ([Literal.number 0])
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.switch (|
                              M.get_var (| "value" |),
                              [
                                (
                                  Some (Literal.number 0),
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["expr_2"],
                                        Some ([Literal.number 0x02])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                );
                                (
                                  None,
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["expr_2"],
                                        Some ([Literal.number 0x01])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                )
                              ]
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_3"],
                              Some ([Literal.number 0])
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.switch (|
                              M.get_var (| "value" |),
                              [
                                (
                                  Some (Literal.number 0),
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["expr_3"],
                                        Some ([Literal.number 4])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                );
                                (
                                  None,
                                  M.scope (
                                    do! ltac:(M.monadic (
                                      M.assign (|
                                        ["expr_3"],
                                        Some ([Literal.number 0x03])
                                      |)
                                    )) in
                                    M.pure BlockUnit.Tt
                                  )
                                )
                              ]
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.declare (|
                              ["expr_offset_1"; "expr_length_1"],
                              Some (M.call_function (|
                                "calldata_array_index_range_access_bytes_calldata",
                                [
                                  M.get_var (| "arrayPos" |);
                                  M.get_var (| "length" |);
                                  M.call_function (|
                                    "and",
                                    [
                                      M.get_var (| "expr_2" |);
                                      [Literal.number 0xff]
                                    ]
                                  |);
                                  M.call_function (|
                                    "and",
                                    [
                                      M.get_var (| "expr_3" |);
                                      [Literal.number 0xff]
                                    ]
                                  |)
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "pop",
                                [
                                  M.call_function (|
                                    "abi_decode_uint256",
                                    [
                                      M.get_var (| "expr_offset_1" |);
                                      M.call_function (|
                                        "add",
                                        [
                                          M.get_var (| "expr_offset_1" |);
                                          M.get_var (| "expr_length_1" |)
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
End C.

Import Ltac2.

Definition codes : list Code.t :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).