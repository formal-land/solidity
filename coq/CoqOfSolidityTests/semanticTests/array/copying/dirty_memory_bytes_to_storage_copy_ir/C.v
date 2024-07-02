(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C.
  Definition code : Code.t := {|
    Code.name := "C_19";
    Code.hex_name := 0x435f313900000000000000000000000000000000000000000000000000000000;
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
                    [Literal.string 0x435f31395f6465706c6f79656400000000000000000000000000000000000000]
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
                        [Literal.string 0x435f31395f6465706c6f79656400000000000000000000000000000000000000]
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
      Code.name := "C_19_deployed";
      Code.hex_name := 0x435f31395f6465706c6f79656400000000000000000000000000000000000000;
      Code.functions :=
        [
          Code.Function.make (
            "abi_encode_uint256",
            ["headStart"; "value0"],
            ["tail"],
            M.scope (
              do! ltac:(M.monadic (
                M.assign (|
                  ["tail"],
                  Some (M.call_function (|
                    "add",
                    [
                      M.get_var (| "headStart" |);
                      [Literal.number 32]
                    ]
                  |))
                |)
              )) in
              do! ltac:(M.monadic (
                M.expr_stmt (|
                  M.call_function (|
                    "mstore",
                    [
                      M.get_var (| "headStart" |);
                      M.get_var (| "value0" |)
                    ]
                  |)
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          );
          Code.Function.make (
            "panic_error_0x41",
            [],
            [],
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
          );
          Code.Function.make (
            "extract_byte_array_length",
            ["data"],
            ["length"],
            M.scope (
              do! ltac:(M.monadic (
                M.assign (|
                  ["length"],
                  Some (M.call_function (|
                    "shr",
                    [
                      [Literal.number 1];
                      M.get_var (| "data" |)
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
                      M.get_var (| "data" |);
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
          );
          Code.Function.make (
            "clean_up_bytearray_end_slots_bytes_storage",
            ["len"],
            [],
            M.scope (
              do! ltac:(M.monadic (
                M.if_ (|
                  M.call_function (|
                    "gt",
                    [
                      M.get_var (| "len" |);
                      [Literal.number 31]
                    ]
                  |),
                  M.scope (
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
                      M.declare (|
                        ["deleteStart"],
                        Some (M.call_function (|
                          "add",
                          [
                            M.get_var (| "data" |);
                            [Literal.number 1]
                          ]
                        |))
                      |)
                    )) in
                    do! ltac:(M.monadic (
                      M.assign (|
                        ["deleteStart"],
                        Some (M.get_var (| "data" |))
                      |)
                    )) in
                    do! ltac:(M.monadic (
                      M.declare (|
                        ["_1"],
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
                                    M.get_var (| "len" |);
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
                                M.get_var (| "_1" |)
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
          );
          Code.Function.make (
            "extract_used_part_and_set_length_of_short_byte_array",
            ["data"],
            ["used"],
            M.scope (
              do! ltac:(M.monadic (
                M.assign (|
                  ["used"],
                  Some (M.call_function (|
                    "or",
                    [
                      M.call_function (|
                        "and",
                        [
                          M.get_var (| "data" |);
                          M.call_function (|
                            "shl",
                            [
                              [Literal.number 192];
                              [Literal.number 0xffffffffffffffff]
                            ]
                          |)
                        ]
                      |);
                      [Literal.number 16]
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
                      [Literal.number 128]
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
                      M.declare (|
                        ["_1"],
                        Some ([Literal.number 0])
                      |)
                    )) in
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
                                  [Literal.number 64]
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
                                      "panic_error_0x41",
                                      []
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
                              ["_2"],
                              Some (M.call_function (|
                                "add",
                                [
                                  M.get_var (| "memPtr" |);
                                  [Literal.number 32]
                                ]
                              |))
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "mstore",
                                [
                                  M.get_var (| "memPtr" |);
                                  [Literal.number 8]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "mstore",
                                [
                                  M.get_var (| "_2" |);
                                  [Literal.string 0x6465616462656566313564656164000000000000000000000000000000000000]
                                ]
                              |)
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.assign (|
                              ["_1"],
                              Some ([Literal.number 0])
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "clean_up_bytearray_end_slots_bytes_storage",
                                [
                                  M.call_function (|
                                    "extract_byte_array_length",
                                    [
                                      M.call_function (|
                                        "sload",
                                        [
                                          [Literal.number 0]
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
                              ["srcOffset"],
                              Some ([Literal.number 0])
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.assign (|
                              ["srcOffset"],
                              Some ([Literal.number 32])
                            |)
                          )) in
                          do! ltac:(M.monadic (
                            M.expr_stmt (|
                              M.call_function (|
                                "sstore",
                                [
                                  [Literal.number 0];
                                  M.call_function (|
                                    "extract_used_part_and_set_length_of_short_byte_array",
                                    [
                                      M.call_function (|
                                        "mload",
                                        [
                                          M.get_var (| "_2" |)
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
                              ["var_r"],
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
                                "return",
                                [
                                  M.get_var (| "memPos" |);
                                  M.call_function (|
                                    "sub",
                                    [
                                      M.call_function (|
                                        "abi_encode_uint256",
                                        [
                                          M.get_var (| "memPos" |);
                                          M.get_var (| "var_r" |)
                                        ]
                                      |);
                                      M.get_var (| "memPos" |)
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
