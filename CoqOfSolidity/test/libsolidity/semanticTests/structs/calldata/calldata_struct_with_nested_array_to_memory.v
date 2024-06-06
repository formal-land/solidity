(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  (* Struct S *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [p1, c] =>
      let _ :=
        M.define (|
          [ "s" ],
          M.get_name (| "c" |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.index_access (|
                M.index_access (|
                  M.member_access (|
                    M.get_name (| "s" |),
                    "a"
                  |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 0)
              |),
              M.index_access (|
                M.index_access (|
                  M.member_access (|
                    M.get_name (| "c" |),
                    "a"
                  |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 0)
              |)
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
                M.index_access (|
                  M.member_access (|
                    M.get_name (| "s" |),
                    "a"
                  |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 1)
              |),
              M.index_access (|
                M.index_access (|
                  M.member_access (|
                    M.get_name (| "c" |),
                    "a"
                  |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 1)
              |)
            |)
          ]
        |) in
      let _ :=
        M.un_op (|
          false,
          "++",
          M.member_access (|
            M.get_name (| "s" |),
            "p1"
          |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "!=",
              M.member_access (|
                M.get_name (| "s" |),
                "p1"
              |),
              M.member_access (|
                M.get_name (| "c" |),
                "p1"
              |)
            |)
          ]
        |) in
      let _ :=
        M.un_op (|
          false,
          "++",
          M.index_access (|
            M.index_access (|
              M.member_access (|
                M.get_name (| "s" |),
                "a"
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "!=",
              M.index_access (|
                M.index_access (|
                  M.member_access (|
                    M.get_name (| "s" |),
                    "a"
                  |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 1)
              |),
              M.index_access (|
                M.index_access (|
                  M.member_access (|
                    M.get_name (| "c" |),
                    "a"
                  |),
                  Some (Value.Integer 0)
                |),
                Some (Value.Integer 1)
              |)
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "p1" |),
            M.member_access (|
              M.get_name (| "s" |),
              "p1"
            |),
            M.index_access (|
              M.index_access (|
                M.member_access (|
                  M.get_name (| "s" |),
                  "a"
                |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            M.index_access (|
              M.index_access (|
                M.member_access (|
                  M.get_name (| "s" |),
                  "a"
                |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 1)
            |),
            M.member_access (|
              M.get_name (| "s" |),
              "p2"
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
