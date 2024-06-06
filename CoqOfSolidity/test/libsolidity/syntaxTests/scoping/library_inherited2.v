(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module Lib.
  Definition foo (α : list Value.t) : M :=
    match α with
    | [value] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.get_name (| "value" |),
            Value.Integer 42
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Lib.

(* Contract *)
Module A.
  (* Beginning of a node! *)
id: 16
src: 133:22:0
nodeType: UsingForDirective
typeName: Ty.path "uint256"
libraryName: (* Beginning of a node! *)
id: 14
src: 139:3:0
nodeType: IdentifierPath
name: Lib
nameLocations: [139:3:0, ]
referencedDeclaration: 13

global: 0

End A.

(* Contract *)
Module B.
  (* Beginning of a node! *)
id: 22
src: 181:22:0
nodeType: UsingForDirective
typeName: Ty.path "uint256"
libraryName: (* Beginning of a node! *)
id: 20
src: 187:3:0
nodeType: IdentifierPath
name: Lib
nameLocations: [187:3:0, ]
referencedDeclaration: 13

global: 0


  Definition bar (α : list Value.t) : M :=
    match α with
    | [value] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "value" |),
              "foo"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B.
