(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module Lib.
  Definition f (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "r" |),
            Some (Value.Integer 1)
          |),
          Value.Integer 42
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.get_name (| "b" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "r" |),
            Some (Value.Integer 1)
          |),
          Value.Integer 21
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Lib.

(* Contract *)
Module Test.
  Definition a : Value.t :=
    undefined.

  Definition b : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.call (|
              M.member_access (|
                M.get_name (| "Lib" |),
                "f"
              |),
              [
                M.get_name (| "a" |),
                M.get_name (| "b" |)
              ]
            |),
            Some (Value.Integer 2)
          |),
          Value.Integer 84
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 0)
            |),
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 1)
            |),
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 2)
            |),
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 0)
            |),
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 1)
            |),
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 2)
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
          M.call (|
            M.member_access (|
              M.get_name (| "Lib" |),
              "f"
            |),
            [
              M.get_name (| "a" |),
              M.get_name (| "b" |)
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "m" |),
            Some (Value.Integer 2)
          |),
          Value.Integer 17
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 0)
            |),
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 1)
            |),
            M.index_access (|
              M.get_name (| "a" |),
              Some (Value.Integer 2)
            |),
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 0)
            |),
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 1)
            |),
            M.index_access (|
              M.get_name (| "b" |),
              Some (Value.Integer 2)
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
