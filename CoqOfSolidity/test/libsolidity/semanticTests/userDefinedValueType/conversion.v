(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

Axiom user_type_MyUInt8 : Ty.path "MyUInt8" = Ty.path "uint8".
Axiom user_type_MyInt8 : Ty.path "MyInt8" = Ty.path "int8".
Axiom user_type_MyUInt16 : Ty.path "MyUInt16" = Ty.path "uint16".
(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "MyUInt8" |),
              "wrap"
            |),
            [
              M.call (|
                Ty.path "uint8",
                [
                  M.get_name (| "a" |)
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
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "MyInt8" |),
              "wrap"
            |),
            [
              M.call (|
                Ty.path "int8",
                [
                  M.call (|
                    Ty.path "int",
                    [
                      M.get_name (| "a" |)
                    ]
                  |)
                ]
              |)
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
              M.get_name (| "MyInt8" |),
              "wrap"
            |),
            [
              M.call (|
                Ty.path "int8",
                [
                  M.call (|
                    M.member_access (|
                      M.get_name (| "MyUInt8" |),
                      "unwrap"
                    |),
                    [
                      M.get_name (| "a" |)
                    ]
                  |)
                ]
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition i (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "MyUInt16" |),
              "wrap"
            |),
            [
              M.call (|
                M.member_access (|
                  M.get_name (| "MyUInt8" |),
                  "unwrap"
                |),
                [
                  M.get_name (| "a" |)
                ]
              |)
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
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "MyUInt8" |),
              "unwrap"
            |),
            [
              M.get_name (| "a" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition k (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "MyUInt16" |),
              "wrap"
            |),
            [
              M.call (|
                M.member_access (|
                  M.get_name (| "MyUInt8" |),
                  "unwrap"
                |),
                [
                  M.get_name (| "a" |)
                ]
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition m (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "MyUInt8" |),
              "wrap"
            |),
            [
              M.call (|
                Ty.path "uint8",
                [
                  M.call (|
                    M.member_access (|
                      M.get_name (| "MyUInt16" |),
                      "unwrap"
                    |),
                    [
                      M.get_name (| "a" |)
                    ]
                  |)
                ]
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
