(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition at (α : list Value.t) : M :=
    match α with
    | [a, i] =>
      let _ :=
        M.return_ (|
          M.index_access (|
            M.get_name (| "a" |),
            Some (M.get_name (| "i" |))
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 20
src: 131:19:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 19
src: 143:6:0
nodeType: ArrayTypeName
baseType: Ty.path "uint"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

libraryName: (* Beginning of a node! *)
id: 17
src: 137:1:0
nodeType: IdentifierPath
name: L
nameLocations: [137:1:0, ]
referencedDeclaration: 16

global: 0


  Definition secondItem (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "input" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 31
src: 236:6:0
nodeType: ArrayTypeName
baseType: Ty.path "uint"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "input" |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x11
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "input" |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x22
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "input" |),
              "at"
            |),
            [
              Value.Integer 1
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
