(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_15.
  Definition code : M.t BlockUnit.t :=
    do* ltac:(M.monadic (
      M.function (|
        "allocate_unbounded",
        [],
        ["memPtr"],
        do* ltac:(M.monadic (
          M.assign (|
            ["memPtr"],
            Some (M.call (|
              "mload",
              [
                [Literal.number 64]
              ]
            |))
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      M.function (|
        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
        [],
        [],
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0]
              ]
            |)
          |)
        )) in
        M.od
      |)
    )) in
    do* ltac:(M.monadic (
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "mstore",
            [
              [Literal.number 64];
              M.call (|
                "memoryguard",
                [
                  [Literal.number 0x80]
                ]
              |)
            ]
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.if_ (|
          M.call (|
            "callvalue",
            []
          |),
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                []
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.assign (|
          ["_1"],
          Some (M.call (|
            "allocate_unbounded",
            []
          |))
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "codecopy",
            [
              M.get (| "_1" |);
              M.call (|
                "dataoffset",
                [
                  [Literal.string "435f31355f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f31355f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "return",
            [
              M.get (| "_1" |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f31355f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_15_deployed.
    Definition code : M.t BlockUnit.t :=
      do* ltac:(M.monadic (
        M.function (|
          "shift_right_unsigned",
          ["value"],
          ["newValue"],
          do* ltac:(M.monadic (
            M.assign (|
              ["newValue"],
              Some (M.call (|
                "shr",
                [
                  [Literal.number 224];
                  M.get (| "value" |)
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "allocate_unbounded",
          [],
          ["memPtr"],
          do* ltac:(M.monadic (
            M.assign (|
              ["memPtr"],
              Some (M.call (|
                "mload",
                [
                  [Literal.number 64]
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
          [],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
          [],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_decode",
          ["headStart"; "dataEnd"],
          [],
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "slt",
                [
                  M.call (|
                    "sub",
                    [
                      M.get (| "dataEnd" |);
                      M.get (| "headStart" |)
                    ]
                  |);
                  [Literal.number 0]
                ]
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_tuple",
          ["headStart"],
          ["tail"],
          do* ltac:(M.monadic (
            M.assign (|
              ["tail"],
              Some (M.call (|
                "add",
                [
                  M.get (| "headStart" |);
                  [Literal.number 0]
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "external_fun_f",
          [],
          [],
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "callvalue",
                []
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_decode",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    []
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "fun_f",
                []
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["memPos"],
              Some (M.call (|
                "allocate_unbounded",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["memEnd"],
              Some (M.call (|
                "abi_encode_tuple",
                [
                  M.get (| "memPos" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "return",
                [
                  M.get (| "memPos" |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "memEnd" |);
                      M.get (| "memPos" |)
                    ]
                  |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
          [],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "round_up_to_mul_of",
          ["value"],
          ["result"],
          do* ltac:(M.monadic (
            M.assign (|
              ["result"],
              Some (M.call (|
                "and",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "value" |);
                      [Literal.number 31]
                    ]
                  |);
                  M.call (|
                    "not",
                    [
                      [Literal.number 31]
                    ]
                  |)
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "panic_error_0x41",
          [],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  [Literal.number 0];
                  M.call (|
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
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  [Literal.number 4];
                  [Literal.number 0x41]
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0x24]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "finalize_allocation",
          ["memPtr"; "size"],
          [],
          do* ltac:(M.monadic (
            M.assign (|
              ["newFreePtr"],
              Some (M.call (|
                "add",
                [
                  M.get (| "memPtr" |);
                  M.call (|
                    "round_up_to_mul_of",
                    [
                      M.get (| "size" |)
                    ]
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.if_ (|
              M.call (|
                "or",
                [
                  M.call (|
                    "gt",
                    [
                      M.get (| "newFreePtr" |);
                      [Literal.number 0xffffffffffffffff]
                    ]
                  |);
                  M.call (|
                    "lt",
                    [
                      M.get (| "newFreePtr" |);
                      M.get (| "memPtr" |)
                    ]
                  |)
                ]
              |),
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "panic_error_0x41",
                    []
                  |)
                |)
              )) in
              M.od
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  [Literal.number 64];
                  M.get (| "newFreePtr" |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_stringliteral_bc36",
          ["pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  [Literal.number 0x0000000000000000000000000000000000000000000000000000000000000000]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_stringliteral_ccad",
          ["pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "shl",
                    [
                      [Literal.number 234];
                      [Literal.number 2797299]
                    ]
                  |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_stringliteral_4e03",
          ["pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  [Literal.string "616263"]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_stringliteral_64e6",
          ["pos"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  [Literal.string "313233"]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "array_storeLengthForEncoding_bytes_nonPadded_inplace",
          ["pos"; "length"],
          ["updated_pos"],
          do* ltac:(M.monadic (
            M.assign (|
              ["updated_pos"],
              Some (M.get (| "pos" |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "store_literal_in_memory_7bc219505d229c86d766769d0a64e8ac99ad2399151063f61913c7034f484e0a",
          ["memPtr"],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 0]
                    ]
                  |);
                  [Literal.string "6162633132333435363738393031323334353637383930313233343536373839"]
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "memPtr" |);
                      [Literal.number 32]
                    ]
                  |);
                  [Literal.string "30313233343536373839303132333435363738393031323334353637383930"]
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_stringliteral_7bc2",
          ["pos"],
          ["end"],
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "array_storeLengthForEncoding_bytes_nonPadded_inplace",
                [
                  M.get (| "pos" |);
                  [Literal.number 63]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "store_literal_in_memory_7bc219505d229c86d766769d0a64e8ac99ad2399151063f61913c7034f484e0a",
                [
                  M.get (| "pos" |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["end"],
              Some (M.call (|
                "add",
                [
                  M.get (| "pos" |);
                  [Literal.number 63]
                ]
              |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "abi_encode_packed_stringliteral_bc36_stringliteral_ccad_stringliteral_4e03_stringliteral_64e6_stringliteral_7bc2",
          ["pos"],
          ["end"],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_stringliteral_bc36",
                [
                  M.get (| "pos" |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "add",
                [
                  M.get (| "pos" |);
                  [Literal.number 1]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_stringliteral_ccad",
                [
                  M.get (| "pos" |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "add",
                [
                  M.get (| "pos" |);
                  [Literal.number 3]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_stringliteral_4e03",
                [
                  M.get (| "pos" |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "add",
                [
                  M.get (| "pos" |);
                  [Literal.number 3]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "abi_encode_stringliteral_64e6",
                [
                  M.get (| "pos" |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "add",
                [
                  M.get (| "pos" |);
                  [Literal.number 3]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["pos"],
              Some (M.call (|
                "abi_encode_stringliteral_7bc2",
                [
                  M.get (| "pos" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["end"],
              Some (M.get (| "pos" |))
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "bytes_concat_stringliteral_bc36_stringliteral_ccad_stringliteral_4e03_stringliteral_64e6_stringliteral_7bc2",
          [],
          ["outPtr"],
          do* ltac:(M.monadic (
            M.assign (|
              ["outPtr"],
              Some (M.call (|
                "allocate_unbounded",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["dataStart"],
              Some (M.call (|
                "add",
                [
                  M.get (| "outPtr" |);
                  [Literal.number 0x20]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["dataEnd"],
              Some (M.call (|
                "abi_encode_packed_stringliteral_bc36_stringliteral_ccad_stringliteral_4e03_stringliteral_64e6_stringliteral_7bc2",
                [
                  M.get (| "dataStart" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  M.get (| "outPtr" |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "dataEnd" |);
                      M.get (| "dataStart" |)
                    ]
                  |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "finalize_allocation",
                [
                  M.get (| "outPtr" |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "dataEnd" |);
                      M.get (| "outPtr" |)
                    ]
                  |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_f",
          [],
          [],
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "pop",
                [
                  M.call (|
                    "bytes_concat_stringliteral_bc36_stringliteral_ccad_stringliteral_4e03_stringliteral_64e6_stringliteral_7bc2",
                    []
                  |)
                ]
              |)
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "mstore",
              [
                [Literal.number 64];
                M.call (|
                  "memoryguard",
                  [
                    [Literal.number 0x80]
                  ]
                |)
              ]
            |)
          |)
        )) in
        do* ltac:(M.monadic (
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.call (|
                  "lt",
                  [
                    M.call (|
                      "calldatasize",
                      []
                    |);
                    [Literal.number 4]
                  ]
                |)
              ]
            |),
            do* ltac:(M.monadic (
              M.assign (|
                ["selector"],
                Some (M.call (|
                  "shift_right_unsigned",
                  [
                    M.call (|
                      "calldataload",
                      [
                        [Literal.number 0]
                      ]
                    |)
                  ]
                |))
              |)
            )) in
            do* ltac:(M.monadic (
              M.switch (|
                M.get (| "selector" |),
                [
                  (
                    Some (Literal.number 0x26121ff0),
                    do* ltac:(M.monadic (
                      M.expr_stmt (|
                        M.call (|
                          "external_fun_f",
                          []
                        |)
                      |)
                    )) in
                    M.od
                  );
                  (
                    None,
                    M.od
                  )          ]
              |)
            )) in
            M.od
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
              []
            |)
          |)
        )) in
        M.od
      )) in
      M.od.

    Definition data : string :=
      "a2646970667358221220a799734339a1b6f0610a29b4a8376ad2d0b7d734dc84c1362b7556d73bcaf00f64736f6c634300081b0033".
  End C_15_deployed.
End C_15.
