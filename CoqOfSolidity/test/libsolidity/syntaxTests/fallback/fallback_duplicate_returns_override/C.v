(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_9.
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
                  [Literal.string "435f395f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f395f6465706c6f796564"]
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
                  [Literal.string "435f395f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.od
    )) in
    M.od.

  Module C_9_deployed.
    Definition code : M.t BlockUnit.t :=
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
          "zero_value_for_split_bytes",
          [],
          ["ret"],
          do* ltac:(M.monadic (
            M.assign (|
              ["ret"],
              Some ([Literal.number 96])
            |)
          )) in
          M.od
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun",
          ["var_input_offset"; "var_input_length"],
          ["var_output_mpos"],
          do* ltac:(M.monadic (
            M.assign (|
              ["zero_bytes_mpos"],
              Some (M.call (|
                "zero_value_for_split_bytes",
                []
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_output_mpos"],
              Some (M.get (| "zero_bytes_mpos" |))
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
            ["retval"],
            Some (M.call (|
              "fun",
              [
                [Literal.number 0];
                M.call (|
                  "calldatasize",
                  []
                |)
              ]
            |))
          |)
        )) in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "return",
              [
                M.call (|
                  "add",
                  [
                    M.get (| "retval" |);
                    [Literal.number 0x20]
                  ]
                |);
                M.call (|
                  "mload",
                  [
                    M.get (| "retval" |)
                  ]
                |)
              ]
            |)
          |)
        )) in
        M.od
      )) in
      M.od.

    Definition data : string :=
      "a26469706673582212204ee38a51339536b8adb3f17fc209575ea2518f119d2a190063ec59a3484ea40e64736f6c634300081b0033".
  End C_9_deployed.
End C_9.
