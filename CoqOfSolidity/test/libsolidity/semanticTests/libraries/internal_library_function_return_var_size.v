(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  (* Struct S *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [_s] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.member_access (|
              M.get_name (| "_s" |),
              "data"
            |),
            Some (Value.Integer 3)
          |),
          Value.Integer 2
        |) in
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "_s" |),
            "data"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 30
src: 272:16:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 29
src: 284:3:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 28
src: 284:3:0
nodeType: IdentifierPath
name: L.S
nameLocations: [284:1:0, 286:1:0, ]
referencedDeclaration: 4

referencedDeclaration: 4
typeDescriptions: typeString struct L.StypeIdentifier st_struct$_S_$4_storage_ptr

libraryName: (* Beginning of a node! *)
id: 27
src: 278:1:0
nodeType: IdentifierPath
name: L
nameLocations: [278:1:0, ]
referencedDeclaration: 26

global: 0


  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "x" |),
            "data"
          |),
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 45
src: 377:9:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

,
            [
              Value.Integer 7
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.member_access (|
              M.get_name (| "x" |),
              "data"
            |),
            Some (Value.Integer 3)
          |),
          Value.Integer 8
        |) in
      let _ :=
        M.return_ (|
          M.index_access (|
            M.call (|
              M.member_access (|
                M.get_name (| "x" |),
                "f"
              |),
              []
            |),
            Some (Value.Integer 3)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
