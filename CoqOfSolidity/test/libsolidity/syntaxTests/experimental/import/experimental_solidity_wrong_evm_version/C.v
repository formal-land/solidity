(* Generated by solc *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module C_2.
  Definition code : M.t unit := ltac:(M.monadic (
    let _ :=
      let _ :=
        M.call (|
          "codecopy",
          [
            [Literal.number 0];
            M.call (|
              "dataoffset",
              [
                [Literal.string "435f325f6465706c6f796564"]
              ]
            |);
            M.call (|
              "datasize",
              [
                [Literal.string "435f325f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          "return",
          [
            [Literal.number 0];
            M.call (|
              "datasize",
              [
                [Literal.string "435f325f6465706c6f796564"]
              ]
            |)
          ]
        |) in
      tt in
    tt
  )).

  Module C_2_deployed.
    Definition code : M.t unit := ltac:(M.monadic (
      let _ :=
        let _ :=
          M.call (|
            "revert",
            [
              [Literal.number 0];
              [Literal.number 0]
            ]
          |) in
        tt in
      tt
    )).
  End C_2_deployed.
End C_2.
