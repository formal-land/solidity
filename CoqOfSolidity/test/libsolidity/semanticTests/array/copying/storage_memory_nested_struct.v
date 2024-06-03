(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct T *)

  Definition a : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "a" |),
            "push"
          |),
          []
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "a" |),
            "push"
          |),
          []
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "a" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 1)
            |),
            "x"
          |),
          Value.Integer 11
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "a" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 1)
            |),
            "y"
          |),
          Value.Integer 12
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "a" |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 1)
              |),
              "z"
            |),
            "push"
          |),
          [
            Value.Integer 1
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "a" |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 1)
              |),
              "z"
            |),
            "push"
          |),
          [
            Value.Integer 2
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "a" |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 1)
              |),
              "z"
            |),
            "push"
          |),
          [
            Value.Integer 3
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "a" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 2)
            |),
            "x"
          |),
          Value.Integer 21
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "a" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 2)
            |),
            "y"
          |),
          Value.Integer 22
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "a" |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 2)
              |),
              "z"
            |),
            "push"
          |),
          [
            Value.Integer 4
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "a" |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 2)
              |),
              "z"
            |),
            "push"
          |),
          [
            Value.Integer 5
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "a" |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 2)
              |),
              "z"
            |),
            "push"
          |),
          [
            Value.Integer 6
          ]
        |) in
      let _ :=
        M.define (|
          [ "m" ],
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "m" |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 1)
              |),
              "x"
            |),
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "m" |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 1)
              |),
              "y"
            |),
            M.index_access (|
              M.member_access (|
                M.index_access (|
                  M.index_access (|
                    M.get_name (| "m" |),
                    Some (Value.Integer 0)
                  |),
                  Some (Value.Integer 1)
                |),
                "z"
              |),
              Some (Value.Integer 0)
            |),
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "m" |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 2)
              |),
              "x"
            |),
            M.member_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "m" |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 2)
              |),
              "y"
            |),
            M.index_access (|
              M.member_access (|
                M.index_access (|
                  M.index_access (|
                    M.get_name (| "m" |),
                    Some (Value.Integer 1)
                  |),
                  Some (Value.Integer 2)
                |),
                "z"
              |),
              Some (Value.Integer 0)
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
