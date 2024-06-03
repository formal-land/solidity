(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Sample.
  (* Struct s *)

  Definition p : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "m" |),
            "x"
          |),
          Value.Integer 0xbbbb
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "m" |),
            "y"
          |),
          Value.Integer 0xcccc
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "m" |),
            "a"
          |),
          Value.String "hello"
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "m" |),
            "b"
          |),
          Value.String "world"
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "p" |),
            Some (Value.Integer 0)
          |),
          M.get_name (| "m" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Sample.
