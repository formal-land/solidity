(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
  (* Struct Struct *)

  Definition r : Value.t :=
    undefined.

  Definition data1 : Value.t :=
    undefined.

  Definition data2 : Value.t :=
    undefined.

  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "data1" |),
            "a"
          |),
          Value.Integer 1
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "data1" |),
            "b"
          |),
          Value.Integer 2
        |) in
      let _ :=
        M.define (|
          [ "x" ],
          M.get_name (| "data1" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "data2" |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "&&",
            M.bin_op (|
              "==",
              M.member_access (|
                M.get_name (| "data2" |),
                "a"
              |),
              M.member_access (|
                M.get_name (| "data1" |),
                "a"
              |)
            |),
            M.bin_op (|
              "==",
              M.member_access (|
                M.get_name (| "data2" |),
                "b"
              |),
              M.member_access (|
                M.get_name (| "data1" |),
                "b"
              |)
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
