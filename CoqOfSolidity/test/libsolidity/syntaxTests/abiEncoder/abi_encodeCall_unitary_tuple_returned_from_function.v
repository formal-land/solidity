(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition g1 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            Value.Integer 1
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g2 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            Value.Integer 2,
            Value.Integer 3
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f1 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f2 (α : list Value.t) : M :=
    match α with
    | [, ] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "abi" |),
            "encodeCall"
          |),
          [
            M.member_access (|
              M.get_name (| "this" |),
              "f1"
            |),
            M.call (|
              M.get_name (| "g1" |),
              []
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "abi" |),
            "encodeCall"
          |),
          [
            M.member_access (|
              M.get_name (| "this" |),
              "f1"
            |),
            Value.Tuple [
              M.call (|
                M.get_name (| "g1" |),
                []
              |)
            ]
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "abi" |),
            "encodeCall"
          |),
          [
            M.member_access (|
              M.get_name (| "this" |),
              "f2"
            |),
            Value.Tuple [
              M.call (|
                M.get_name (| "g1" |),
                []
              |),
              M.call (|
                M.get_name (| "g1" |),
                []
              |)
            ]
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
