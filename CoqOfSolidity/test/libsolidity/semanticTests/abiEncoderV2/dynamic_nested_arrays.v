(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [a, b, c, d] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "a" |),
            M.member_access (|
              M.get_name (| "b" |),
              "length"
            |),
            M.member_access (|
              M.index_access (|
                M.get_name (| "b" |),
                Some (Value.Integer 1)
              |),
              "length"
            |),
            M.index_access (|
              M.index_access (|
                M.get_name (| "b" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 1)
            |),
            M.member_access (|
              M.index_access (|
                M.get_name (| "c" |),
                Some (Value.Integer 1)
              |),
              "length"
            |),
            M.index_access (|
              M.index_access (|
                M.index_access (|
                  M.get_name (| "c" |),
                  Some (Value.Integer 1)
                |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 1)
            |),
            M.get_name (| "d" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "b" ],
          M.call (|
            NewExpression Ty.array (Ty.array (Ty.path "uint16") None) None
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
            M.get_name (| "b" |),
            Some (Value.Integer 0)
          |),
          M.call (|
            NewExpression Ty.array (Ty.path "uint16") None
,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x55
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x56
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "b" |),
            Some (Value.Integer 1)
          |),
          M.call (|
            NewExpression Ty.array (Ty.path "uint16") None
,
            [
              Value.Integer 4
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 1)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x65
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 1)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x66
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 1)
            |),
            Some (Value.Integer 2)
          |),
          Value.Integer 0x67
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 1)
            |),
            Some (Value.Integer 3)
          |),
          Value.Integer 0x68
        |) in
      let _ :=
        M.define (|
          [ "c" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "c" |),
            Some (Value.Integer 0)
          |),
          M.call (|
            NewExpression Ty.array (Ty.array (Ty.path "uint") (Some (Value.Integer 2))) None
,
            [
              Value.Integer 1
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "c" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x75
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "c" |),
            Some (Value.Integer 1)
          |),
          M.call (|
            NewExpression Ty.array (Ty.array (Ty.path "uint") (Some (Value.Integer 2))) None
,
            [
              Value.Integer 5
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "c" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 1)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x85
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f"
            |),
            [
              Value.Integer 12,
              M.get_name (| "b" |),
              M.get_name (| "c" |),
              Value.Integer 13
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
