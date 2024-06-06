(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module D.
  (* Struct s *)

  Definition mul (α : list Value.t) : M :=
    match α with
    | [self, x] =>
      let _ :=
        M.return_ (|
          M.assign (|
            "*=",
            M.member_access (|
              M.get_name (| "self" |),
              "a"
            |),
            M.get_name (| "x" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 24
src: 135:16:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 23
src: 147:3:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 22
src: 147:3:0
nodeType: IdentifierPath
name: D.s
nameLocations: [147:1:0, 149:1:0, ]
referencedDeclaration: 3

referencedDeclaration: 3
typeDescriptions: typeString struct D.stypeIdentifier st_struct$_s_$3_storage_ptr

libraryName: (* Beginning of a node! *)
id: 21
src: 141:1:0
nodeType: IdentifierPath
name: D
nameLocations: [141:1:0, ]
referencedDeclaration: 20

global: 0


  Definition x : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "x" |),
            "a"
          |),
          Value.Integer 6
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            Value.Tuple [
              M.member_access (|
                M.get_name (| "x" |),
                "mul"
              |)
            ],
            [
              M.get_name (| "a" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
