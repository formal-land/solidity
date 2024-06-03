(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct I *)

  (* Struct S *)

  Definition o (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.get_name (| "a" |),
            Value.Integer 1
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "s" ],
          M.call (|
            M.get_name (| "S" |),
            [
              M.call (|
                M.get_name (| "I" |),
                [
                  Value.Integer 1,
                  Value.Integer 2,
                  M.member_access (|
                    M.get_name (| "this" |),
                    "o"
                  |)
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.member_access (|
                M.get_name (| "s" |),
                "a"
              |),
              "x"
            |),
            [
              Value.Integer 1
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
