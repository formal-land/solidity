(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C1.
  Definition bla : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "bla" |),
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C1.

(* Contract *)
Module C.
  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "c" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 28
src: 167:2:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 27
src: 167:2:0
nodeType: IdentifierPath
name: C1
nameLocations: [167:2:0, ]
referencedDeclaration: 15

referencedDeclaration: 15
typeDescriptions: typeString contract C1typeIdentifier st_contract$_C1_$15

,
            [
              M.call (|
                M.get_name (| "C1" |),
                [
                  M.call (|
                    Ty.path "address",
                    [
                      Value.Integer 9
                    ]
                  |)
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.call (|
            M.member_access (|
              M.get_name (| "c" |),
              "bla"
            |),
            []
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "t1"
            |),
            [
              M.call (|
                M.get_name (| "C1" |),
                [
                  M.call (|
                    Ty.path "address",
                    [
                      Value.Integer 7
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

  Definition t1 (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.get_name (| "a" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition t2 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.get_name (| "C1" |),
            [
              M.call (|
                Ty.path "address",
                [
                  Value.Integer 9
                ]
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
