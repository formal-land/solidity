(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition uninitializedString : Value.t :=
    undefined.

  Definition emptyString : Value.t :=
    Value.String "".

  Definition nonEmptyString : Value.t :=
    Value.String "This is a non empty string".

  Definition nonEmptyString2 : Value.t :=
    Value.String "Another string".

  Definition uninitializedBytes : Value.t :=
    undefined.

  Definition emptyBytes : Value.t :=
    Value.String "".

  (* Error EmptyError *)

  (* Event EmptyEvent *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "uninitializedString" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "uninitializedString" |),
            M.get_name (| "emptyString" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "uninitializedString" |),
            M.get_name (| "nonEmptyString" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition i (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "nonEmptyString" |),
            M.get_name (| "emptyString" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition j (α : list Value.t) : M :=
    match α with
    | [_s] =>
      let _ :=
        M.return_ (|
          M.get_name (| "_s" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition k (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "nonEmptyString2" |),
          Value.String ""
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "nonEmptyString2" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition l (α : list Value.t) : M :=
    match α with
    | [_s] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encode"
            |),
            [
              M.get_name (| "_s" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition m (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "b" ],
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encode"
            |),
            [
              M.get_name (| "emptyString" |)
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            Ty.path "string",
            [
              M.get_name (| "b" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition n (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.revert (|
          M.call (|
            M.get_name (| "EmptyError" |),
            [
              M.get_name (| "uninitializedString" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition o (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "EmptyEvent" |),
          [
            M.get_name (| "emptyString" |)
          ]
        |)
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition p (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "EmptyEvent" |),
          [
            Value.String ""
          ]
        |)
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition q (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "uninitializedBytes" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition r (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "emptyBytes" |),
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encode"
            |),
            [
              Value.String ""
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "emptyBytes" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition s (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "emptyBytes" |),
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encode"
            |),
            [
              M.get_name (| "uninitializedString" |)
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "emptyBytes" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition set (α : list Value.t) : M :=
    match α with
    | [_s] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "nonEmptyString" |),
          M.get_name (| "_s" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition get (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "nonEmptyString" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
