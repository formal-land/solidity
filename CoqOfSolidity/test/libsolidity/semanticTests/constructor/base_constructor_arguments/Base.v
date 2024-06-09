(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module Base_25.
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
        M.call (|
          "constructor_Base",
          [

          ]
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
                [Literal.string "426173655f32355f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "426173655f32355f6465706c6f796564"]
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
                [Literal.string "426173655f32355f6465706c6f796564"]
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
    let _ :=
      M.function (|
        "cleanup_rational_by",
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
        "identity",
        ["value"],
        ["ret"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["ret"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "convert_rational_by_to_uint256",
        ["value"],
        ["converted"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["converted"],
              M.call (|
                "cleanup_uint256",
                [
                  M.call (|
                    "identity",
                    [
                      M.call (|
                        "cleanup_rational_by",
                        [
                          M.get (| "value" |)
                        ]
                      |)
                    ]
                  |)
                ]
              |)
            |) in
          tt
        ))
      |) in
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
                  [Literal.number 0];
                  M.get (| "value" |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "cleanup_from_storage_uint256",
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
        "extract_from_storage_value_offsett_uint256",
        ["slot_value"],
        ["value"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["value"],
              M.call (|
                "cleanup_from_storage_uint256",
                [
                  M.call (|
                    "shift_right_unsigned",
                    [
                      M.get (| "slot_value" |)
                    ]
                  |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "read_from_storage_split_offset_uint256",
        ["slot"],
        ["value"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["value"],
              M.call (|
                "extract_from_storage_value_offsett_uint256",
                [
                  M.call (|
                    "sload",
                    [
                      M.get (| "slot" |)
                    ]
                  |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "panic_error_0x11",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
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
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 4];
                [Literal.number 0x11]
              ]
            |) in
          let _ :=
            M.call (|
              "revert",
              [
                [Literal.number 0];
                [Literal.number 0x24]
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "checked_mul_uint256",
        ["x"; "y"],
        ["product"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["x"],
              M.call (|
                "cleanup_uint256",
                [
                  M.get (| "x" |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["y"],
              M.call (|
                "cleanup_uint256",
                [
                  M.get (| "y" |)
                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["product_raw"],
              M.call (|
                "mul",
                [
                  M.get (| "x" |);
                  M.get (| "y" |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["product"],
              M.call (|
                "cleanup_uint256",
                [
                  M.get (| "product_raw" |)
                ]
              |)
            |) in
          let _ :=
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.call (|
                    "or",
                    [
                      M.call (|
                        "iszero",
                        [
                          M.get (| "x" |)
                        ]
                      |);
                      M.call (|
                        "eq",
                        [
                          M.get (| "y" |);
                          M.call (|
                            "div",
                            [
                              M.get (| "product" |);
                              M.get (| "x" |)
                            ]
                          |)
                        ]
                      |)
                    ]
                  |)
                ]
              |),
              ltac:(M.monadic (
                let _ :=
                  M.call (|
                    "panic_error_0x11",
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
        "shift_left",
        ["value"],
        ["newValue"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["newValue"],
              M.call (|
                "shl",
                [
                  [Literal.number 0];
                  M.get (| "value" |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "update_byte_slice_shift",
        ["value"; "toInsert"],
        ["result"],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["mask"],
              M.call (|
                "not",
                [
                  [Literal.number 0]
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["toInsert"],
              M.call (|
                "shift_left",
                [
                  M.get (| "toInsert" |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["value"],
              M.call (|
                "and",
                [
                  M.get (| "value" |);
                  M.call (|
                    "not",
                    [
                      M.get (| "mask" |)
                    ]
                  |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["result"],
              M.call (|
                "or",
                [
                  M.get (| "value" |);
                  M.call (|
                    "and",
                    [
                      M.get (| "toInsert" |);
                      M.get (| "mask" |)
                    ]
                  |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "convert_uint256_to_uint256",
        ["value"],
        ["converted"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["converted"],
              M.call (|
                "cleanup_uint256",
                [
                  M.call (|
                    "identity",
                    [
                      M.call (|
                        "cleanup_uint256",
                        [
                          M.get (| "value" |)
                        ]
                      |)
                    ]
                  |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "prepare_store_uint256",
        ["value"],
        ["ret"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["ret"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "update_storage_value_offsett_uint256_to_uint256",
        ["slot"; "value"],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["convertedValue"],
              M.call (|
                "convert_uint256_to_uint256",
                [
                  M.get (| "value" |)
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "sstore",
              [
                M.get (| "slot" |);
                M.call (|
                  "update_byte_slice_shift",
                  [
                    M.call (|
                      "sload",
                      [
                        M.get (| "slot" |)
                      ]
                    |);
                    M.call (|
                      "prepare_store_uint256",
                      [
                        M.get (| "convertedValue" |)
                      ]
                    |)
                  ]
                |)
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "constructor_Base",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["expr"],
              [Literal.number 0x07]
            |) in
          let _ :=
            M.assign (|
              ["_1"],
              M.call (|
                "convert_rational_by_to_uint256",
                [
                  M.get (| "expr" |)
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "constructor_BaseBase",
              [
                M.get (| "_1" |)
              ]
            |) in
          let _ :=
            M.assign (|
              ["_2"],
              M.call (|
                "read_from_storage_split_offset_uint256",
                [
                  [Literal.number 0x00]
                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["expr_1"],
              M.get (| "_2" |)
            |) in
          let _ :=
            M.assign (|
              ["_3"],
              M.call (|
                "read_from_storage_split_offset_uint256",
                [
                  [Literal.number 0x00]
                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["expr_2"],
              M.call (|
                "checked_mul_uint256",
                [
                  M.get (| "_3" |);
                  M.get (| "expr_1" |)
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "update_storage_value_offsett_uint256_to_uint256",
              [
                [Literal.number 0x00];
                M.get (| "expr_2" |)
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "constructor_BaseBase",
        ["var_a"],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["_1"],
              M.get (| "var_a" |)
            |) in
          let _ :=
            M.assign (|
              ["expr"],
              M.get (| "_1" |)
            |) in
          let _ :=
            M.call (|
              "update_storage_value_offsett_uint256_to_uint256",
              [
                [Literal.number 0x00];
                M.get (| "expr" |)
              ]
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module Base_25_deployed.
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
          M.call (|
            "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
            [

            ]
          |) in
        tt in
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
      tt
    )).

    Definition data : string :=
      "a26469706673582212202141105bf2e61448dfd97796e8bb3531fb225be309232fca9ddd70ca7874448864736f6c634300081b0033".
  End Base_25_deployed.
End Base_25.
