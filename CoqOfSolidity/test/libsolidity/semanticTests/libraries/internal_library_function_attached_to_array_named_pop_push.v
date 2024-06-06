(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition pop (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition push (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 22
src: 127:20:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 21
src: 139:7:0
nodeType: ArrayTypeName
baseType: Ty.path "uint"
length: Value.Integer 2
typeDescriptions: typeString uint256[2]typeIdentifier st_array$_t_uint256_$2_storage_ptr

libraryName: (* Beginning of a node! *)
id: 18
src: 133:1:0
nodeType: IdentifierPath
name: L
nameLocations: [133:1:0, ]
referencedDeclaration: 17

global: 0


  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "input" ],
          Value.Default
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "input" |),
            "push"
          |),
          []
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "input" |),
            "pop"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
