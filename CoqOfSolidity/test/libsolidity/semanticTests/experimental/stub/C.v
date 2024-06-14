(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_174.
  Definition code : M.t BlockUnit.t :=
    do* M.open_scope in
    do* ltac:(M.monadic (
      do* M.open_scope in
      do* ltac:(M.monadic (
        M.expr_stmt (|
          M.call (|
            "codecopy",
            [
              [Literal.number 0];
              M.call (|
                "dataoffset",
                [
                  [Literal.string "435f3137345f6465706c6f796564"]
                ]
              |);
              M.call (|
                "datasize",
                [
                  [Literal.string "435f3137345f6465706c6f796564"]
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
              [Literal.number 0];
              M.call (|
                "datasize",
                [
                  [Literal.string "435f3137345f6465706c6f796564"]
                ]
              |)
            ]
          |)
        |)
      )) in
      M.close_scope
    )) in
    M.close_scope.

  Module C_174_deployed.
    Definition code : M.t BlockUnit.t :=
      do* M.open_scope in
      do* ltac:(M.monadic (
        M.function (|
          "fun_fun$unit$unit$$",
          [],
          [],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_arg"],
              None
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_arg"],
              Some (M.call (|
                "calldataload",
                [
                  [Literal.number 0]
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_x"],
              None
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr"],
              Some (M.get_var (| "var_arg" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_1"],
              Some (M.call (|
                "iszero",
                [
                  M.call (|
                    "iszero",
                    [
                      M.get_var (| "expr" |)
                    ]
                  |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.if_ (|
              M.get_var (| "expr_1" |),
              do* M.open_scope in
              do* ltac:(M.monadic (
                M.assign (|
                  ["var_x"],
                  Some ([Literal.number 0x10])
                |)
              )) in
              M.close_scope
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_2"],
              Some (M.get_var (| "var_x" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_3"],
              Some (M.get_var (| "expr_2" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_w"],
              Some (M.get_var (| "expr_3" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_4"],
              Some (M.get_var (| "var_w" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_5"],
              Some (M.get_var (| "var_w" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_6"],
              Some (M.call (|
                "fun_mul$fun$pair$t_uint256$t_uint256$$t_uint256$$",
                [
                  M.get_var (| "expr_4" |);
                  M.get_var (| "expr_5" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_7"],
              Some (M.get_var (| "var_w" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_8"],
              Some (M.call (|
                "fun_add$fun$pair$t_uint256$t_uint256$$t_uint256$$",
                [
                  M.get_var (| "expr_6" |);
                  M.get_var (| "expr_7" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_w"],
              Some (M.get_var (| "expr_8" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_y"],
              None
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_y"],
              Some ([Literal.number 2])
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_9"],
              Some (M.get_var (| "var_w" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_10"],
              Some (M.get_var (| "expr_9" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_11"],
              Some (M.get_var (| "var_y" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_12"],
              Some (M.call (|
                "fun_mul$fun$pair$word$word$$word$$",
                [
                  M.get_var (| "expr_10" |);
                  M.get_var (| "expr_11" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_y"],
              Some (M.get_var (| "expr_12" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "mstore",
                [
                  [Literal.number 0];
                  M.get_var (| "var_y" |)
                ]
              |)
            |)
          )) in
          do* ltac:(M.monadic (
            M.expr_stmt (|
              M.call (|
                "return",
                [
                  [Literal.number 0];
                  [Literal.number 32]
                ]
              |)
            |)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_mul$fun$pair$t_uint256$t_uint256$$t_uint256$$",
          ["var_x"; "var_y"],
          ["expr"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_1"],
              Some (M.get_var (| "var_x" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_2"],
              Some (M.get_var (| "expr_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_a"],
              Some (M.get_var (| "expr_2" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_3"],
              Some (M.get_var (| "var_y" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_4"],
              Some (M.get_var (| "expr_3" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_b"],
              Some (M.get_var (| "expr_4" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_a"],
              Some (M.call (|
                "mul",
                [
                  M.get_var (| "var_a" |);
                  M.get_var (| "var_b" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_5"],
              Some (M.get_var (| "var_a" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_6"],
              Some (M.get_var (| "expr_5" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.get_var (| "expr_6" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.leave (||)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_add$fun$pair$t_uint256$t_uint256$$t_uint256$$",
          ["var_x"; "var_y"],
          ["expr"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_1"],
              Some (M.get_var (| "var_x" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_2"],
              Some (M.get_var (| "expr_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_a"],
              Some (M.get_var (| "expr_2" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_3"],
              Some (M.get_var (| "var_y" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_4"],
              Some (M.get_var (| "expr_3" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_b"],
              Some (M.get_var (| "expr_4" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_a"],
              Some (M.call (|
                "add",
                [
                  M.get_var (| "var_a" |);
                  M.get_var (| "var_b" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_5"],
              Some (M.get_var (| "var_a" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_6"],
              Some (M.get_var (| "expr_5" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.get_var (| "expr_6" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.leave (||)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        M.function (|
          "fun_mul$fun$pair$word$word$$word$$",
          ["var_x"; "var_y"],
          ["expr"],
          do* M.open_scope in
          do* ltac:(M.monadic (
            M.declare (|
              ["var_z"],
              None
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["var_z"],
              Some (M.call (|
                "mul",
                [
                  M.get_var (| "var_x" |);
                  M.get_var (| "var_y" |)
                ]
              |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.declare (|
              ["expr_1"],
              Some (M.get_var (| "var_z" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.assign (|
              ["expr"],
              Some (M.get_var (| "expr_1" |))
            |)
          )) in
          do* ltac:(M.monadic (
            M.leave (||)
          )) in
          M.close_scope
        |)
      )) in
      do* ltac:(M.monadic (
        do* M.open_scope in
        do* ltac:(M.monadic (
          M.expr_stmt (|
            M.call (|
              "fun_fun$unit$unit$$",
              []
            |)
          |)
        )) in
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
        M.close_scope
      )) in
      M.close_scope.
  End C_174_deployed.
End C_174.
