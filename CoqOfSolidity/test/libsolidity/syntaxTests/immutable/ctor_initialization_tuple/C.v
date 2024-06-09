(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_32.
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
                [Literal.string "435f33325f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f33325f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          "setimmutable",
          [
            M.get (| "_1" |);
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
          "setimmutable",
          [
            M.get (| "_1" |);
            [Literal.string "34"];
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
                [Literal.string "435f33325f6465706c6f796564"]
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
        "constructor_C",
        [],
        [],
        ltac:(M.monadic (
          let _ :=
            M.assign (|
              ["expr_component"; "expr_component_1"],
              M.call (|
                "fun_f",
                [

                ]
              |)
            |) in
          let _ :=
            M.assign (|
              ["_1"],
              M.get (| "expr_component_1" |)
            |) in
          let _ :=
            M.call (|
              "mstore",
              [
                [Literal.number 160];
                M.get (| "_1" |)
              ]
            |) in
          let _ :=
            M.assign (|
              ["_2"],
              M.get (| "expr_component" |)
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
        "cleanup_t_rational_by",
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
        "convert_t_rational_by_to_t_uint256",
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
                        "cleanup_t_rational_by",
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
        "fun_f",
        [],
        ["var_x";
    "var_y"],
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
              ["var_x"],
              M.get (| "zero_t_uint256" |)
            |) in
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
              ["var_y"],
              M.get (| "zero_uint256" |)
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
                "convert_t_rational_by_to_t_uint256",
                [
                  M.get (| "expr" |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["var_x"],
              M.get (| "_1" |)
            |) in
          let _ :=
            M.assign (|
              ["expr_1"],
              [Literal.number 0x04]
            |) in
          let _ :=
            M.assign (|
              ["_2"],
              M.call (|
                "convert_rational_by_to_uint256",
                [
                  M.get (| "expr_1" |)
                ]
              |)
            |) in
          let _ :=
            M.declare (|
              ["var_y"],
              M.get (| "_2" |)
            |) in
          tt
        ))
      |) in
    tt
  )).

  Module C_32_deployed.
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
      "a26469706673582212202b1f762a8dfebaac44d910cfe35480e4e3107c6573b82bb33fa5fc6b0de8330364736f6c634300081b0033".
  End C_32_deployed.
End C_32.
