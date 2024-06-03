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
        M.call (|
          M.member_access (|
            M.get_name (| "data" |),
            "push"
          |),
          [
            Value.Integer 0x07
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "data" |),
            "push"
          |),
          [
            Value.Integer 0x03
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.member_access (|
            M.get_name (| "data" |),
            "length"
          |)
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "data" |),
            "pop"
          |),
          []
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "data" |),
            "pop"
          |),
          []
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "data" |),
            "push"
          |),
          [
            Value.Integer 0x02
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.member_access (|
            M.get_name (| "data" |),
            "length"
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "l" |),
          M.member_access (|
            M.get_name (| "data" |),
            "length"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
