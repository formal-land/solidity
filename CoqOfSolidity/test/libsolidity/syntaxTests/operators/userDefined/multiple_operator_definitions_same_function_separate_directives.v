(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

Axiom user_type_Int : Ty.path "Int" = Ty.path "int32".
(* Beginning of a node! *)
id: 6
src: 20:32:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 5
src: 41:3:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 4
src: 41:3:0
nodeType: IdentifierPath
name: Int
nameLocations: [41:3:0, ]
referencedDeclaration: 2

referencedDeclaration: 2
typeDescriptions: typeString InttypeIdentifier st_userDefinedValueType$_Int_$2

functionList: [{definition: (* Beginning of a node! *)
id: 3
src: 27:3:0
nodeType: IdentifierPath
name: add
nameLocations: [27:3:0, ]
referencedDeclaration: 23
, operator: +, }, ]
global: 1

(* Beginning of a node! *)
id: 10
src: 53:32:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 9
src: 74:3:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 8
src: 74:3:0
nodeType: IdentifierPath
name: Int
nameLocations: [74:3:0, ]
referencedDeclaration: 2

referencedDeclaration: 2
typeDescriptions: typeString InttypeIdentifier st_userDefinedValueType$_Int_$2

functionList: [{definition: (* Beginning of a node! *)
id: 7
src: 60:3:0
nodeType: IdentifierPath
name: add
nameLocations: [60:3:0, ]
referencedDeclaration: 23
, operator: +, }, ]
global: 1

Definition add (α : list Value.t) : M :=
  match α with
  | [, ] =>
    let _ :=
       in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.
Definition f (α : list Value.t) : M :=
  match α with
  | [a, b] =>
    let _ :=
      M.bin_op (|
        "+",
        M.call (|
          M.member_access (|
            M.get_name (| "Int" |),
            "wrap"
          |),
          [
            M.get_name (| "a" |)
          ]
        |),
        M.call (|
          M.member_access (|
            M.get_name (| "Int" |),
            "wrap"
          |),
          [
            M.get_name (| "b" |)
          ]
        |)
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.