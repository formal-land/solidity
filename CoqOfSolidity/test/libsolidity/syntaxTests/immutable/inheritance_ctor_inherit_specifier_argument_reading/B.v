(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module B_13.
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
                [Literal.number 0xa0]
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
            "copy_arguments_for_constructor_object_B",
            [

            ]
          |)
        |) in
      let _ :=
        M.call (|
          "constructor_B",
          [
            M.get (| "_1" |)
          ]
        |) in
      let _ :=
        M.assign (|
          ["_2"],
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
            M.get (| "_2" |);
            M.call (|
              "dataoffset",
              [
                [Literal.string "425f31335f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "425f31335f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          "setimmutable",
          [
            M.get (| "_2" |);
            [Literal.string "32"];
            M.call (|
              "mload",
              [
                [Literal.number 128]
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          "return",
          [
            M.get (| "_2" |);
            M.call (|
              "datasize",
              [
                [Literal.string "425f31335f6465706c6f796564"]
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
        "round_up_to_mul_of",
        ["value"],
        ["result"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["result"],
              M.call (|
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
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "panic_error_0x41",
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
                [Literal.number 0x41]
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
        "finalize_allocation",
        ["memPtr"; "size"],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["newFreePtr"],
              M.call (|
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
              |)
            |) in
          let _ :=
            M.if_ (|
              M.call (|
                "or",
                [
                  M.call (|
                    "gt",
                    [
                      M.get (| "newFreePtr" |);
                      M.call (|
                        "sub",
                        [
                          M.call (|
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
                  M.call (|
                    "lt",
                    [
                      M.get (| "newFreePtr" |);
                      M.get (| "memPtr" |)
                    ]
                  |)
                ]
              |),
              ltac:(M.monadic (
                let _ :=
                  M.call (|
                    "panic_error_0x41",
                    [

                    ]
                  |) in
                tt
              ))
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 64];
                M.get (| "newFreePtr" |)
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "allocate_memory",
        ["size"],
        ["memPtr"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["memPtr"],
              M.call (|
                "allocate_unbounded",
                [

                ]
              |)
            |) in
          let _ :=
            M.call (|
              "finalize_allocation",
              [
                M.get (| "memPtr" |);
                M.get (| "size" |)
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
        "validator_revert_uint256",
        ["value"],
        [],
        ltac:(M.monadic (
          let _ :=
            M.if_ (|
              M.call (|
                "iszero",
                [
                  M.call (|
                    "eq",
                    [
                      M.get (| "value" |);
                      M.call (|
                        "cleanup_uint256",
                        [
                          M.get (| "value" |)
                        ]
                      |)
                    ]
                  |)
                ]
              |),
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
        ))
      |) in
    let _ :=
      M.function (|
        "abi_decode_t_uint256_fromMemory",
        ["offset"; "end"],
        ["value"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["value"],
              M.call (|
                "mload",
                [
                  M.get (| "offset" |)
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "validator_revert_uint256",
              [
                M.get (| "value" |)
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "abi_decode_uint256_fromMemory",
        ["headStart"; "dataEnd"],
        ["value0"],
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
                  [Literal.number 32]
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
          let _ :=
            M.assign (|
              ["offset"],
              [Literal.number 0]
            |) in
          let _ :=
            M.declare (|
              ["value0"],
              M.call (|
                "abi_decode_t_uint256_fromMemory",
                [
                  M.call (|
                    "add",
                    [
                      M.get (| "headStart" |);
                      M.get (| "offset" |)
                    ]
                  |);
                  M.get (| "dataEnd" |)
                ]
              |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "copy_arguments_for_constructor_object_B",
        [],
        ["ret_param"],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["programSize"],
              M.call (|
                "datasize",
                [
                  [Literal.string "425f3133"]
                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["argSize"],
              M.call (|
                "sub",
                [
                  M.call (|
                    "codesize",
                    [

                    ]
                  |);
                  M.get (| "programSize" |)
                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["memoryDataOffset"],
              M.call (|
                "allocate_memory",
                [
                  M.get (| "argSize" |)
                ]
              |)
            |) in
          let _ :=
            M.call (|
              "codecopy",
              [
                M.get (| "memoryDataOffset" |);
                M.get (| "programSize" |);
                M.get (| "argSize" |)
              ]
            |) in
          let _ :=
            M.declare (|
              ["ret_param"],
              M.call (|
                "abi_decode_uint256_fromMemory",
                [
                  M.get (| "memoryDataOffset" |);
                  M.call (|
                    "add",
                    [
                      M.get (| "memoryDataOffset" |);
                      M.get (| "argSize" |)
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
        "constructor_B",
        ["var_x"],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["_1"],
              M.get (| "var_x" |)
            |) in
          let _ :=
            M.assign (|
              ["expr"],
              M.get (| "_1" |)
            |) in
          let _ :=
            M.assign (|
              ["_2"],
              M.get (| "expr" |)
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_2" |)
              ]
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module B_13_deployed.
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
      "a26469706673582212201105aee14c1888db5c2b4e2994e55668cc2e962e8af88444c0cdebcc54a855e664736f6c634300081b0033".
  End B_13_deployed.
End B_13.
