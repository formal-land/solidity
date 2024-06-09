(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module X_18.
  Definition code : M.t unit := ltac:(M.monadic (
    let _ :=
      let _ :=
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
        |) in
      let _ :=
        M.if_ (|
          M.call (|
            "callvalue",
            [

            ]
          |),
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                [

                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.assign (|
          ["_1"],
          M.call (|
            "allocate_unbounded",
            [

            ]
          |)
        |) in
      let _ :=
        M.call (|
          "codecopy",
          [
            M.get (| "_1" |);
            M.call (|
              "dataoffset",
              [
                [Literal.string "585f31385f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "585f31385f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          "return",
          [
            M.get (| "_1" |);
            M.call (|
              "datasize",
              [
                [Literal.string "585f31385f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      tt in
    let _ :=
      M.function (|
        "allocate_unbounded",
        [],
        ["memPtr"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["memPtr"],
              M.call (|
                "mload",
                [
                  [Literal.number 64]
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0]
              ]
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module X_18_deployed.
    Definition code : M.t unit := ltac:(M.monadic (
      let _ :=
        let _ :=
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
          |) in
        let _ :=
          M.if_ (|
            M.call (|
              "iszero",
              [
                M.call (|
                  "lt",
                  [
                    M.call (|
                      "calldatasize",
                      [

                      ]
                    |);
                    [Literal.number 4]
                  ]
                |)
              ]
            |),
            ltac:(M.monadic (
              let _ :=
                M.assign (|
                  ["selector"],
                  M.call (|
                    "shift_right_unsigned",
                    [
                      M.call (|
                        "calldataload",
                        [
                          [Literal.number 0]
                        ]
                      |)
                    ]
                  |)
                |) in
              let _ :=
                M.switch (|
                  M.get (| "selector" |),
                  [
                    (
                      Some (Literal.number 0xc2985578),
                      ltac:(M.monadic (
                        let _ :=
                          M.call (|
                            "external_fun_foo",
                            [

                            ]
                          |) in
                        tt
                      ))              );
                    (
                      None,
                      ltac:(M.monadic (
                        tt
                      ))              )            ]
                |) in
              tt
            ))
          |) in
        let _ :=
          M.call (|
            "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
            [

            ]
          |) in
        tt in
      let _ :=
        M.function (|
          "shift_right_unsigned",
          ["value"],
          ["newValue"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["newValue"],
                M.call (|
                  "shr",
                  [
                    [Literal.number 224];
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "allocate_unbounded",
          [],
          ["memPtr"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["memPtr"],
                M.call (|
                  "mload",
                  [
                    [Literal.number 64]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_decode",
          ["headStart"; "dataEnd"],
          [],
          ltac:(M.monadic (
            let _ :=
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
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_length_array_uint256_dyn",
          ["value"],
          ["length"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["length"],
                M.call (|
                  "mload",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_storeLengthForEncoding_array_uint256_dyn",
          ["pos"; "length"],
          ["updated_pos"],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.get (| "length" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["updated_pos"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_dataslot_array_uint256_dyn",
          ["ptr"],
          ["data"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["data"],
                M.get (| "ptr" |)
              |) in
            let _ :=
              M.declare (|
                ["data"],
                M.call (|
                  "add",
                  [
                    M.get (| "ptr" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "cleanup_uint256",
          ["value"],
          ["cleaned"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["cleaned"],
                M.get (| "value" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_uint256",
          ["value"; "pos"],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "mstore",
                [
                  M.get (| "pos" |);
                  M.call (|
                    "cleanup_uint256",
                    [
                      M.get (| "value" |)
                    ]
                  |)
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encodeUpdatedPos_uint256",
          ["value0"; "pos"],
          ["updatedPos"],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "abi_encode_uint256",
                [
                  M.get (| "value0" |);
                  M.get (| "pos" |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["updatedPos"],
                M.call (|
                  "add",
                  [
                    M.get (| "pos" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "array_nextElement_array_uint256_dyn",
          ["ptr"],
          ["next"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["next"],
                M.call (|
                  "add",
                  [
                    M.get (| "ptr" |);
                    [Literal.number 0x20]
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_array_uint256_dyn_memory_ptr",
          ["value"; "pos"],
          ["end"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["length"],
                M.call (|
                  "array_length_array_uint256_dyn",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["pos"],
                M.call (|
                  "array_storeLengthForEncoding_array_uint256_dyn",
                  [
                    M.get (| "pos" |);
                    M.get (| "length" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["baseRef"],
                M.call (|
                  "array_dataslot_array_uint256_dyn",
                  [
                    M.get (| "value" |)
                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["srcPtr"],
                M.get (| "baseRef" |)
              |) in
            let _ :=
              M.assign (|
                ["i"],
                [Literal.number 0]
              |) in
            let _ :=
              M.for (|
                tt,
                M.call (|
                  "lt",
                  [
                    M.get (| "i" |);
                    M.get (| "length" |)
                  ]
                |),
                let _ :=
                  M.declare (|
                    ["i"],
                    M.call (|
                      "add",
                      [
                        M.get (| "i" |);
                        [Literal.number 1]
                      ]
                    |)
                  |) in
                tt,
                let _ :=
                  M.assign (|
                    ["elementValue0"],
                    M.call (|
                      "mload",
                      [
                        M.get (| "srcPtr" |)
                      ]
                    |)
                  |) in
                let _ :=
                  M.declare (|
                    ["pos"],
                    M.call (|
                      "abi_encodeUpdatedPos_uint256",
                      [
                        M.get (| "elementValue0" |);
                        M.get (| "pos" |)
                      ]
                    |)
                  |) in
                let _ :=
                  M.declare (|
                    ["srcPtr"],
                    M.call (|
                      "array_nextElement_array_uint256_dyn",
                      [
                        M.get (| "srcPtr" |)
                      ]
                    |)
                  |) in
                tt
              |) in
            let _ :=
              M.declare (|
                ["end"],
                M.get (| "pos" |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "abi_encode_array_uint256_dyn",
          ["headStart"; "value0"],
          ["tail"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "add",
                  [
                    M.get (| "headStart" |);
                    [Literal.number 32]
                  ]
                |)
              |) in
            let _ :=
              M.call (|
                "mstore",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      [Literal.number 0]
                    ]
                  |);
                  M.call (|
                    "sub",
                    [
                      M.get (| "tail" |);
                      M.get (| "headStart" |)
                    ]
                  |)
                ]
              |) in
            let _ :=
              M.declare (|
                ["tail"],
                M.call (|
                  "abi_encode_array_uint256_dyn_memory_ptr",
                  [
                    M.get (| "value0" |);
                    M.get (| "tail" |)
                  ]
                |)
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "external_fun_foo",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.if_ (|
                M.call (|
                  "callvalue",
                  [

                  ]
                |),
                ltac:(M.monadic (
                  let _ :=
                    M.call (|
                      "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                      [

                      ]
                    |) in
                  tt
                ))
              |) in
            let _ :=
              M.call (|
                "abi_decode",
                [
                  [Literal.number 4];
                  M.call (|
                    "calldatasize",
                    [

                    ]
                  |)
                ]
              |) in
            let _ :=
              M.assign (|
                ["ret"],
                M.call (|
                  "fun_foo",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["memPos"],
                M.call (|
                  "allocate_unbounded",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.assign (|
                ["memEnd"],
                M.call (|
                  "abi_encode_array_uint256_dyn",
                  [
                    M.get (| "memPos" |);
                    M.get (| "ret" |)
                  ]
                |)
              |) in
            let _ :=
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
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
          [],
          [],
          ltac:(M.monadic (
            let _ :=
              M.call (|
                "revert",
                [
                  [Literal.number 0];
                  [Literal.number 0]
                ]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "zero_value_for_split_array_uint256_dyn",
          [],
          ["ret"],
          ltac:(M.monadic (
            let _ :=
              M.declare (|
                ["ret"],
                [Literal.number 96]
              |) in
            tt
          ))
        |) in
      let _ :=
        M.function (|
          "fun_foo",
          [],
          ["var_mpos"],
          ltac:(M.monadic (
            let _ :=
              M.assign (|
                ["zero_array_uint256_dyn_mpos"],
                M.call (|
                  "zero_value_for_split_array_uint256_dyn",
                  [

                  ]
                |)
              |) in
            let _ :=
              M.declare (|
                ["var_mpos"],
                M.get (| "zero_array_uint256_dyn_mpos" |)
              |) in
            tt
          ))
        |) in
      tt
    )).

    Definition data : string :=
      "a2646970667358221220f3e583d54c76b5d47137cde3040d00bf5a96cca0195bbedcd65b5d4904dffdc964736f6c634300081b0033".
  End X_18_deployed.
End X_18.
