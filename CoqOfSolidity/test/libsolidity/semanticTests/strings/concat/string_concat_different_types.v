(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition s : Value.t :=
    Value.String "bcdef".

  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "string",
              "concat"
            |),
            [
              M.get_name (| "a" |),
              Value.String "bcdef"
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "string",
              "concat"
            |),
            [
              M.get_name (| "a" |),
              Value.String "abcdefghabcdefghabcdefghabcdefghab"
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "string",
              "concat"
            |),
            [
              M.get_name (| "a" |),
              M.get_name (| "s" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition j (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "ref" ],
          M.get_name (| "s" |)
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "string",
              "concat"
            |),
            [
              M.get_name (| "a" |),
              M.get_name (| "ref" |),
              M.get_name (| "s" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition k (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "string",
              "concat"
            |),
            [
              M.get_name (| "a" |),
              M.call (|
                Ty.path "string",
                [
                  M.get_name (| "b" |)
                ]
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition slice (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.call (|
          M.get_name (| "require" |),
          [
            M.bin_op (|
              ">",
              M.member_access (|
                M.call (|
                  Ty.path "bytes",
                  [
                    M.get_name (| "a" |)
                  ]
                |),
                "length"
              |),
              Value.Integer 2
            |),
            Value.String ""
          ]
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "string",
              "concat"
            |),
            [
              IndexRangeAccess M.get_name (| "a" |)  Value.Integer 2
,
              IndexRangeAccess M.get_name (| "a" |) Value.Integer 2 

            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition strParam (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              Ty.path "string",
              "concat"
            |),
            [
              M.call (|
                Ty.path "string",
                [
                  M.get_name (| "a" |)
                ]
              |),
              Value.String "bcdef"
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
