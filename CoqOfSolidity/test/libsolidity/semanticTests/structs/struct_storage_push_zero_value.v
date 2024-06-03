(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition b : Value.t :=
    Value.Integer 23.

  Definition s : Value.t :=
    undefined.

  Definition a : Value.t :=
    Value.Integer 17.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "s" |),
            "push"
          |),
          []
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.index_access (|
                  M.get_name (| "s" |),
                  Some (Value.Integer 0)
                |),
                "x"
              |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.index_access (|
                  M.get_name (| "s" |),
                  Some (Value.Integer 0)
                |),
                "y"
              |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.index_access (|
                  M.get_name (| "s" |),
                  Some (Value.Integer 0)
                |),
                "z"
              |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.index_access (|
                M.member_access (|
                  M.index_access (|
                    M.get_name (| "s" |),
                    Some (Value.Integer 0)
                  |),
                  "a1"
                |),
                Some (Value.Integer 0)
              |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.index_access (|
                M.member_access (|
                  M.index_access (|
                    M.get_name (| "s" |),
                    Some (Value.Integer 0)
                  |),
                  "a1"
                |),
                Some (Value.Integer 1)
              |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.index_access (|
                M.member_access (|
                  M.index_access (|
                    M.get_name (| "s" |),
                    Some (Value.Integer 0)
                  |),
                  "a1"
                |),
                Some (Value.Integer 2)
              |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.member_access (|
                  M.index_access (|
                    M.get_name (| "s" |),
                    Some (Value.Integer 0)
                  |),
                  "a2"
                |),
                "length"
              |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.get_name (| "b" |),
              Value.Integer 23
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.get_name (| "a" |),
              Value.Integer 17
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
