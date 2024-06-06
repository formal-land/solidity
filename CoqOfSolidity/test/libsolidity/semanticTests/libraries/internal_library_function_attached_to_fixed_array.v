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
id: 22
src: 132:20:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 21
src: 144:7:0
nodeType: ArrayTypeName
baseType: Ty.path "uint"
length: Value.Integer 2
typeDescriptions: typeString uint256[2]typeIdentifier st_array$_t_uint256_$2_storage_ptr

libraryName: (* Beginning of a node! *)
id: 18
src: 138:1:0
nodeType: IdentifierPath
name: L
nameLocations: [138:1:0, ]
referencedDeclaration: 17

global: 0


  Definition secondItem (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "input" ],
          Value.Default
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
