(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "msg" |),
            "data"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f2 (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "msg" |),
            "data"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition reenc_f (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f"
            |),
            [
              M.get_name (| "s" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition reenc_f2 (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f2"
            |),
            [
              M.get_name (| "s" |)
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
        M.define (|
          [ "m" ],
          Value.Array [
            M.call (|
              NewExpression Ty.array (Ty.array (Ty.path "uint8") (Some (Value.Integer 1))) None
,
              [
                Value.Integer 1
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 42
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f"
            |),
            [
              M.get_name (| "m" |)
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
          [ "m" ],
          Value.Array [
            M.call (|
              NewExpression Ty.array (Ty.array (Ty.path "uint8") (Some (Value.Integer 1))) None
,
              [
                Value.Integer 1
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 42
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "reenc_f"
            |),
            [
              M.get_name (| "m" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition i (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          Value.Array [
            M.call (|
              NewExpression Ty.array (Ty.array (Ty.path "uint256") (Some (Value.Integer 2))) None
,
              [
                Value.Integer 1
              ]
            |),
            M.call (|
              NewExpression Ty.array (Ty.array (Ty.path "uint256") (Some (Value.Integer 2))) None
,
              [
                Value.Integer 1
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x00042
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x00142
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x10042
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x10142
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f2"
            |),
            [
              M.get_name (| "m" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition j (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          Value.Array [
            M.call (|
              NewExpression Ty.array (Ty.array (Ty.path "uint256") (Some (Value.Integer 2))) None
,
              [
                Value.Integer 1
              ]
            |),
            M.call (|
              NewExpression Ty.array (Ty.array (Ty.path "uint256") (Some (Value.Integer 2))) None
,
              [
                Value.Integer 1
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x00042
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x00142
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x10042
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x10142
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "reenc_f2"
            |),
            [
              M.get_name (| "m" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
