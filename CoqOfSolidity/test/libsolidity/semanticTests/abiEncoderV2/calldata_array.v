(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition g (α : list Value.t) : M :=
    match α with
    | [_] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "msg" |),
            "data"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.define (|
          [ "a" ],
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "g"
            |),
            [
              M.index_access (|
                M.get_name (| "s" |),
                Some (Value.Integer 0)
              |)
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "m" ],
          M.index_access (|
            M.get_name (| "s" |),
            Some (Value.Integer 0)
          |)
        |) in
      let _ :=
        M.define (|
          [ "b" ],
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "g"
            |),
            [
              M.get_name (| "m" |)
            ]
          |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.get_name (| "a" |),
                "length"
              |),
              M.member_access (|
                M.get_name (| "b" |),
                "length"
              |)
            |)
          ]
        |) in
      let _ :=
        M.for_ (|
          M.define (|
            [ "i" ],
            Value.Integer 0
          |),
          M.bin_op (|
            "<",
            M.get_name (| "i" |),
            M.member_access (|
              M.get_name (| "a" |),
              "length"
            |)
          |),
          M.un_op (|
            false,
            "++",
            M.get_name (| "i" |)
          |),
          M.call (|
            M.get_name (| "assert" |),
            [
              M.bin_op (|
                "==",
                M.index_access (|
                  M.get_name (| "a" |),
                  Some (M.get_name (| "i" |))
                |),
                M.index_access (|
                  M.get_name (| "b" |),
                  Some (M.get_name (| "i" |))
                |)
              |)
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
