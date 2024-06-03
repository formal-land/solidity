(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
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
              M.call (|
                Ty.path "uint16",
                [
                  M.get_name (| "i" |)
                ]
              |)
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
            M.get_name (| "data" |),
            Some (M.bin_op (|
              "-",
              M.member_access (|
                M.get_name (| "data" |),
                "length"
              |),
              Value.Integer 1
            |))
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
            M.get_name (| "data" |),
            Some (M.bin_op (|
              "-",
              M.member_access (|
                M.get_name (| "data" |),
                "length"
              |),
              Value.Integer 1
            |))
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
            M.get_name (| "data" |),
            Some (M.bin_op (|
              "-",
              M.member_access (|
                M.get_name (| "data" |),
                "length"
              |),
              Value.Integer 1
            |))
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
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
