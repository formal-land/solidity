(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_48.
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
                [Literal.number 0xc0]
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
          "constructor_C",
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
                [Literal.string "435f34385f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f34385f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          "setimmutable",
          [
            M.get (| "_1" |);
            [Literal.string "34"];
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
          "setimmutable",
          [
            M.get (| "_1" |);
            [Literal.string "3239"];
            M.call (|
              "mload",
              [
                [Literal.number 160]
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
                [Literal.string "435f34385f6465706c6f796564"]
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
        "constructor_C",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.call (|
              "constructor_B",
              [

              ]
            |) in
          let _ :=
            M.assign (|
              ["expr"],
              [Literal.number 0x03]
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
            M.assign (|
              ["_2"],
              M.get (| "_1" |)
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 160];
                M.get (| "_2" |)
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "constructor_B",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["expr"],
              M.call (|
                "fun_f",
                [

                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["_1"],
              M.get (| "expr" |)
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 128];
                M.get (| "_1" |)
              ]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "zero_value_for_split_uint256",
        [],
        ["ret"],
        ltac:(M.monadic (
          let _ :=
            M.declare (|
              ["ret"],
              [Literal.number 0]
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "fun_f",
        [],
        ["var_"],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["zero_uint256"],
              M.call (|
                "zero_value_for_split_uint256",
                [

                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["var_"],
              M.get (| "zero_uint256" |)
            |) in
          let _ :=
            M.assign (|
              ["expr"],
              M.call (|
                "fun_readX",
                [

                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["var_"],
              M.get (| "expr" |)
            |) in
          let _ :=
            M.leave (||) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "read_from_memoryt_uint256",
        ["ptr"],
        ["returnValue"],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["value"],
              M.call (|
                "cleanup_uint256",
                [
                  M.call (|
                    "mload",
                    [
                      M.get (| "ptr" |)
                    ]
                  |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["returnValue"],
              M.get (| "value" |)
            |) in
          tt
        ))
      |) in
    let _ :=
      M.function (|
        "fun_readX",
        [],
        ["var"],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["zero_t_uint256"],
              M.call (|
                "zero_value_for_split_uint256",
                [

                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["var"],
              M.get (| "zero_t_uint256" |)
            |) in
          let _ :=
            M.assign (|
              ["_1"],
              M.call (|
                "read_from_memoryt_uint256",
                [
                  [Literal.number 128]
                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["expr"],
              M.get (| "_1" |)
            |) in
          let _ :=
            M.declare (|
              ["var"],
              M.get (| "expr" |)
            |) in
          let _ :=
            M.leave (||) in
          tt
        ))
      |) in
    tt
  )).

  Module C_48_deployed.
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
      "a264697066735822122065e8cf0ecf8a73bfc89d2bf767aeecb33a7066aa491bb028dbc1ceb1f53a11ff64736f6c634300081b0033".
  End C_48_deployed.
End C_48.
