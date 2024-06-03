(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition a : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.for_ (|
          M.define (|
            [ "i" ],
            Value.Integer 0
          |),
          M.bin_op (|
            "<",
            M.get_name (| "i" |),
            Value.Integer 33
          |),
          M.un_op (|
            false,
            "++",
            M.get_name (| "i" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "a" |),
              "push"
            |),
            [
              Value.Integer 7
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "a" |),
            Some (Value.Integer 0)
          |),
          Value.Integer 2
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "a" |),
            Some (Value.Integer 16)
          |),
          Value.Integer 3
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "a" |),
            Some (Value.Integer 32)
          |),
          Value.Integer 4
        |) in
      let _ :=
        M.define (|
          [ "m" ],
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.index_access (|
              M.get_name (| "m" |),
              Some (Value.Integer 0)
            |),
            M.index_access (|
              M.get_name (| "m" |),
              Some (Value.Integer 16)
            |),
            M.index_access (|
              M.get_name (| "m" |),
              Some (Value.Integer 32)
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
