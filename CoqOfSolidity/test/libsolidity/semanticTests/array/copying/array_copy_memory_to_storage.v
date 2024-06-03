(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition unused : Value.t :=
    undefined.

  Definition a : Value.t :=
    undefined.

  Definition b : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          M.call (|
            NewExpression Ty.array (Ty.path "uint32") None
,
            [
              Value.Integer 3
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "m" |),
            Some (Value.Integer 0)
          |),
          Value.Integer 1
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "m" |),
            Some (Value.Integer 1)
          |),
          Value.Integer 2
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "m" |),
            Some (Value.Integer 2)
          |),
          Value.Integer 3
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.get_name (| "m" |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.index_access (|
                M.get_name (| "a" |),
                Some (Value.Integer 0)
              |),
              M.index_access (|
                M.get_name (| "m" |),
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
                M.get_name (| "a" |),
                Some (Value.Integer 1)
              |),
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
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
                M.get_name (| "a" |),
                Some (Value.Integer 2)
              |),
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 2)
              |)
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 0)
            |),
            M.member_access (|
              M.get_name (| "a" |),
              "length"
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
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
          M.index_access (|
            M.get_name (| "m" |),
            Some (Value.Integer 0)
          |),
          Value.Integer 1
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "m" |),
            Some (Value.Integer 1)
          |),
          Value.Integer 2
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "m" |),
            Some (Value.Integer 2)
          |),
          Value.Integer 3
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.get_name (| "m" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          M.get_name (| "m" |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "&&",
              M.bin_op (|
                "&&",
                M.bin_op (|
                  "==",
                  M.index_access (|
                    M.get_name (| "a" |),
                    Some (Value.Integer 0)
                  |),
                  M.index_access (|
                    M.get_name (| "b" |),
                    Some (Value.Integer 0)
                  |)
                |),
                M.bin_op (|
                  "==",
                  M.index_access (|
                    M.get_name (| "a" |),
                    Some (Value.Integer 1)
                  |),
                  M.index_access (|
                    M.get_name (| "b" |),
                    Some (Value.Integer 1)
                  |)
                |)
              |),
              M.bin_op (|
                "==",
                M.index_access (|
                  M.get_name (| "a" |),
                  Some (Value.Integer 2)
                |),
                M.index_access (|
                  M.get_name (| "b" |),
                  Some (Value.Integer 2)
                |)
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
        M.return_ (|
          Value.Tuple [
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 0)
            |),
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 1)
            |),
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 2)
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
