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
src: 147:34:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 21
src: 159:21:0
nodeType: Mapping
keyType: Ty.path "uint"
keyName: 
keyNameLocation: -1:-1:-1
valueType: Ty.path "uint"
valueName: 
valueNameLocation: -1:-1:-1
typeDescriptions: typeString mapping(uint256 => uint256)typeIdentifier st_mapping$_t_uint256_$_t_uint256_$

libraryName: (* Beginning of a node! *)
id: 18
src: 153:1:0
nodeType: IdentifierPath
name: L
nameLocations: [153:1:0, ]
referencedDeclaration: 17

global: 0


  Definition map : Value.t :=
    undefined.

  Definition mapValue (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "map" |),
            Some (Value.Integer 42)
          |),
          Value.Integer 0x24
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "map" |),
            Some (Value.Integer 66)
          |),
          Value.Integer 0x66
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "map" |),
              "at"
            |),
            [
              M.get_name (| "a" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
