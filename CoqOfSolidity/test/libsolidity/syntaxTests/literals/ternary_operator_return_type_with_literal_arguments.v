(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module TestTernary.
  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "t" ],
          Value.Bool true
        |) in
      let _ :=
        M.define (|
          [ "f" ],
          Value.Bool false
        |) in
      let _ :=
        M.define (|
          [ "v255" ],
          Value.Integer 255
        |) in
      let _ :=
        M.define (|
          [ "v63" ],
          Value.Integer 63
        |) in
      let _ :=
        M.define (|
          [ "a" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional M.get_name (| "t" |) Value.Integer 63 Value.Integer 255

            ],
            Value.Tuple [
              Conditional M.get_name (| "f" |) Value.Integer 63 Value.Integer 255

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional M.get_name (| "t" |) Value.Integer 0x3f Value.Integer 0xff

            ],
            Value.Tuple [
              Conditional M.get_name (| "f" |) Value.Integer 0x3f Value.Integer 0xff

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional M.get_name (| "t" |) M.call (|
                Ty.path "uint8",
                [
                  Value.Integer 63
                ]
              |) Value.Integer 255

            ],
            Value.Tuple [
              Conditional M.get_name (| "f" |) Value.Integer 63 M.call (|
                Ty.path "uint8",
                [
                  Value.Integer 255
                ]
              |)

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional M.get_name (| "t" |) M.get_name (| "v63" |) Value.Integer 255

            ],
            Value.Tuple [
              Conditional M.get_name (| "f" |) Value.Integer 63 M.get_name (| "v255" |)

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional Value.Bool true Value.Integer 63 Value.Integer 255

            ],
            Value.Tuple [
              Conditional Value.Bool false Value.Integer 63 Value.Integer 255

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional Value.Bool true Value.Integer 0x3f Value.Integer 0xff

            ],
            Value.Tuple [
              Conditional Value.Bool false Value.Integer 0x3f Value.Integer 0xff

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional Value.Bool true M.call (|
                Ty.path "uint8",
                [
                  Value.Integer 63
                ]
              |) Value.Integer 255

            ],
            Value.Tuple [
              Conditional Value.Bool false Value.Integer 63 M.call (|
                Ty.path "uint8",
                [
                  Value.Integer 255
                ]
              |)

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional Value.Bool true M.get_name (| "v63" |) Value.Integer 255

            ],
            Value.Tuple [
              Conditional Value.Bool false Value.Integer 63 M.get_name (| "v255" |)

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "-",
            Value.Tuple [
              Conditional M.get_name (| "t" |) Value.Integer 63 Value.Integer 255

            ],
            Value.Tuple [
              Conditional M.get_name (| "f" |) Value.Integer 63 Value.Integer 255

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "*",
            Value.Tuple [
              Conditional M.get_name (| "t" |) Value.Integer 63 Value.Integer 255

            ],
            Value.Tuple [
              Conditional M.get_name (| "f" |) Value.Integer 63 Value.Integer 255

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "/",
            Value.Tuple [
              Conditional M.get_name (| "t" |) Value.Integer 63 Value.Integer 255

            ],
            Value.Tuple [
              Conditional M.get_name (| "f" |) Value.Integer 63 Value.Integer 255

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            Value.Tuple [
              Conditional M.get_name (| "t" |) Value.Tuple [
                Conditional Value.Bool true Value.Integer 63 Value.Integer 255

              ] Value.Tuple [
                Conditional Value.Bool false Value.Integer 63 Value.Integer 255

              ]

            ],
            Value.Tuple [
              Conditional M.get_name (| "f" |) Value.Tuple [
                Conditional M.get_name (| "t" |) Value.Integer 63 Value.Integer 255

              ] Value.Tuple [
                Conditional M.get_name (| "f" |) Value.Integer 63 Value.Integer 255

              ]

            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.bin_op (|
            "+",
            M.call (|
              Ty.path "uint8",
              [
                Conditional M.get_name (| "t" |) Value.Integer 63 Value.Integer 255

              ]
            |),
            M.call (|
              Ty.path "uint8",
              [
                Conditional M.get_name (| "f" |) Value.Integer 63 Value.Integer 255

              ]
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End TestTernary.
