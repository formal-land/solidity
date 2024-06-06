(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

Axiom user_type_Int : Ty.path "Int" = Ty.path "int32".
(* Beginning of a node! *)
id: 7
src: 20:42:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 6
src: 51:3:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 5
src: 51:3:0
nodeType: IdentifierPath
name: Int
nameLocations: [51:3:0, ]
referencedDeclaration: 2

referencedDeclaration: 2
typeDescriptions: typeString InttypeIdentifier st_userDefinedValueType$_Int_$2

functionList: [{definition: (* Beginning of a node! *)
id: 3
src: 27:3:0
nodeType: IdentifierPath
name: foo
nameLocations: [27:3:0, ]
referencedDeclaration: 33
, operator: +, }, {definition: (* Beginning of a node! *)
id: 4
src: 37:3:0
nodeType: IdentifierPath
name: foo
nameLocations: [37:3:0, ]
referencedDeclaration: 33
, operator: -, }, ]
global: 1

Definition foo (α : list Value.t) : M :=
  match α with
  | [a, b] =>
    let _ :=
      M.return_ (|
        M.call (|
          M.member_access (|
            M.get_name (| "Int" |),
            "wrap"
          |),
          [
            M.bin_op (|
              "+",
              M.call (|
                M.member_access (|
                  M.get_name (| "Int" |),
                  "unwrap"
                |),
                [
                  M.get_name (| "a" |)
                ]
              |),
              M.call (|
                M.member_access (|
                  M.get_name (| "Int" |),
                  "unwrap"
                |),
                [
                  M.get_name (| "b" |)
                ]
              |)
            |)
          ]
        |)
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.
(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.call (|
              M.member_access (|
                M.get_name (| "Int" |),
                "wrap"
              |),
              [
                Value.Integer 2
              ]
            |),
            M.call (|
              M.member_access (|
                M.get_name (| "Int" |),
                "wrap"
              |),
              [
                Value.Integer 3
              ]
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "-",
            M.call (|
              M.member_access (|
                M.get_name (| "Int" |),
                "wrap"
              |),
              [
                Value.Integer 6
              ]
            |),
            M.call (|
              M.member_access (|
                M.get_name (| "Int" |),
                "wrap"
              |),
              [
                Value.Integer 1
              ]
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
