(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "b" ],
          Value.String ""
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "bytes",
              "concat"
            |),
            [
              M.call (|
                M.member_access (|
                  Ty.path "bytes",
                  "concat"
                |),
                [
                  M.get_name (| "b" |)
                ]
              |),
              M.call (|
                M.member_access (|
                  Ty.path "bytes",
                  "concat"
                |),
                [
                  M.get_name (| "b" |),
                  M.get_name (| "b" |)
                ]
              |),
              M.call (|
                M.member_access (|
                  Ty.path "bytes",
                  "concat"
                |),
                [
                  Value.String "",
                  M.get_name (| "b" |)
                ]
              |),
              M.call (|
                M.member_access (|
                  Ty.path "bytes",
                  "concat"
                |),
                [
                  M.get_name (| "b" |),
                  Value.String ""
                ]
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "bytes",
              "concat"
            |),
            [
              Value.String "",
              Value.String "abc",
              hexString,
              Value.String "abc",
              unicodeString
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "b" ],
          Value.String ""
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "bytes",
              "concat"
            |),
            [
              M.get_name (| "b" |),
              Value.String "abc",
              M.get_name (| "b" |),
              Value.String "abc",
              M.get_name (| "b" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
