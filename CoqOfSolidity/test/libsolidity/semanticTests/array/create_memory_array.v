(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.call (|
            NewExpression Ty.path "bytes"
,
            [
              Value.Integer 200
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "x" |),
            Some (Value.Integer 199)
          |),
          Value.String "A"
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 41
src: 242:12:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 40
src: 242:10:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: Value.Integer 2
typeDescriptions: typeString uint256[2]typeIdentifier st_array$_t_uint256_$2_storage_ptr

length: 
typeDescriptions: typeString uint256[2][]typeIdentifier st_array$_t_array$_t_uint256_$2_storage_$dyn_storage_ptr

,
            [
              Value.Integer 300
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "y" |),
              Some (Value.Integer 203)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 8
        |) in
      let _ :=
        M.define (|
          [ "z" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 61
src: 311:3:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 60
src: 311:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 59
src: 311:1:0
nodeType: IdentifierPath
name: S
nameLocations: [311:1:0, ]
referencedDeclaration: 7

referencedDeclaration: 7
typeDescriptions: typeString struct C.StypeIdentifier st_struct$_S_$7_storage_ptr

length: 
typeDescriptions: typeString struct C.S[]typeIdentifier st_array$_t_struct$_S_$7_storage_$dyn_storage_ptr

,
            [
              Value.Integer 180
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.member_access (|
              M.index_access (|
                M.get_name (| "z" |),
                Some (Value.Integer 170)
              |),
              "a"
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 4
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.get_name (| "z" |),
              Some (Value.Integer 170)
            |),
            "b"
          |),
          M.call (|
            NewExpression Ty.path "bytes"
,
            [
              Value.Integer 102
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.member_access (|
              M.index_access (|
                M.get_name (| "z" |),
                Some (Value.Integer 170)
              |),
              "b"
            |),
            Some (Value.Integer 99)
          |),
          Value.String "B"
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.index_access (|
              M.get_name (| "x" |),
              Some (Value.Integer 199)
            |),
            M.index_access (|
              M.index_access (|
                M.get_name (| "y" |),
                Some (Value.Integer 203)
              |),
              Some (Value.Integer 1)
            |),
            M.index_access (|
              M.member_access (|
                M.index_access (|
                  M.get_name (| "z" |),
                  Some (Value.Integer 170)
                |),
                "a"
              |),
              Some (Value.Integer 1)
            |),
            M.index_access (|
              M.member_access (|
                M.index_access (|
                  M.get_name (| "z" |),
                  Some (Value.Integer 170)
                |),
                "b"
              |),
              Some (Value.Integer 99)
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
