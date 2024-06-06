(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  (* Struct R *)

  (* Struct S *)
End L.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [size] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 39
src: 184:7:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 38
src: 184:5:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 37
src: 184:3:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 36
src: 184:3:0
nodeType: IdentifierPath
name: L.S
nameLocations: [184:1:0, 186:1:0, ]
referencedDeclaration: 23

referencedDeclaration: 23
typeDescriptions: typeString struct L.StypeIdentifier st_struct$_S_$23_storage_ptr

length: 
typeDescriptions: typeString struct L.S[]typeIdentifier st_array$_t_struct$_S_$23_storage_$dyn_storage_ptr

length: 
typeDescriptions: typeString struct L.S[][]typeIdentifier st_array$_t_array$_t_struct$_S_$23_storage_$dyn_storage_$dyn_storage_ptr

,
            [
              Value.Integer 10
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 50
src: 227:6:0
nodeType: ArrayTypeName
baseType: Ty.path "uint"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

,
            [
              Value.Integer 20
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "z" ],
          M.call (|
            NewExpression Ty.path "bytes"
,
            [
              M.get_name (| "size" |)
            ]
          |)
        |) in
      let _ :=
        M.get_name (| "x" |) in
      let _ :=
        M.get_name (| "y" |) in
      let _ :=
        M.get_name (| "z" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
