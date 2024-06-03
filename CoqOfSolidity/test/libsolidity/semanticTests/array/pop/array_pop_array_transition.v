(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
  Definition a : Value.t :=
    undefined.

  Definition b : Value.t :=
    undefined.

  Definition c : Value.t :=
    undefined.

  Definition inner : Value.t :=
    Value.Array [
      Value.Integer 1,
      Value.Integer 2,
      Value.Integer 3,
      Value.Integer 4,
      Value.Integer 5,
      Value.Integer 6,
      Value.Integer 7,
      Value.Integer 8,
      Value.Integer 9,
      Value.Integer 10,
      Value.Integer 11,
      Value.Integer 12,
      Value.Integer 13,
      Value.Integer 14,
      Value.Integer 15,
      Value.Integer 16
    ].

  Definition data : Value.t :=
    undefined.

  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.for_ (|
          M.define (|
            [ "i" ],
            Value.Integer 1
          |),
          M.bin_op (|
            "<=",
            M.get_name (| "i" |),
            Value.Integer 48
          |),
          M.un_op (|
            false,
            "++",
            M.get_name (| "i" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "data" |),
              "push"
            |),
            [
              M.get_name (| "inner" |)
            ]
          |)
        |) in
      let _ :=
        M.for_ (|
          M.define (|
            [ "j" ],
            Value.Integer 1
          |),
          M.bin_op (|
            "<=",
            M.get_name (| "j" |),
            Value.Integer 10
          |),
          M.un_op (|
            false,
            "++",
            M.get_name (| "j" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "data" |),
              "pop"
            |),
            []
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.index_access (|
            M.index_access (|
              M.get_name (| "data" |),
              Some (M.bin_op (|
                "-",
                M.member_access (|
                  M.get_name (| "data" |),
                  "length"
                |),
                Value.Integer 1
              |))
            |),
            Some (Value.Integer 0)
          |)
        |) in
      let _ :=
        M.for_ (|
          M.define (|
            [ "k" ],
            Value.Integer 1
          |),
          M.bin_op (|
            "<=",
            M.get_name (| "k" |),
            Value.Integer 10
          |),
          M.un_op (|
            false,
            "++",
            M.get_name (| "k" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "data" |),
              "pop"
            |),
            []
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.index_access (|
            M.index_access (|
              M.get_name (| "data" |),
              Some (M.bin_op (|
                "-",
                M.member_access (|
                  M.get_name (| "data" |),
                  "length"
                |),
                Value.Integer 1
              |))
            |),
            Some (Value.Integer 1)
          |)
        |) in
      let _ :=
        M.for_ (|
          M.define (|
            [ "l" ],
            Value.Integer 1
          |),
          M.bin_op (|
            "<=",
            M.get_name (| "l" |),
            Value.Integer 10
          |),
          M.un_op (|
            false,
            "++",
            M.get_name (| "l" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "data" |),
              "pop"
            |),
            []
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "z" |),
          M.index_access (|
            M.index_access (|
              M.get_name (| "data" |),
              Some (M.bin_op (|
                "-",
                M.member_access (|
                  M.get_name (| "data" |),
                  "length"
                |),
                Value.Integer 1
              |))
            |),
            Some (Value.Integer 2)
          |)
        |) in
      let _ :=
        M.for_ (|
          M.define (|
            [ "m" ],
            Value.Integer 1
          |),
          M.bin_op (|
            "<=",
            M.get_name (| "m" |),
            Value.Integer 18
          |),
          M.un_op (|
            false,
            "++",
            M.get_name (| "m" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "data" |),
              "pop"
            |),
            []
          |)
        |) in
      let _ :=
        M.un_op (|
          true,
          "delete",
          M.get_name (| "inner" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
