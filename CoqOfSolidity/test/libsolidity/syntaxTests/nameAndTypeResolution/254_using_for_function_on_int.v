(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module D.
  Definition double (α : list Value.t) : M :=
    match α with
    | [self] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "*",
            Value.Integer 2,
            M.get_name (| "self" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 16
src: 99:17:0
nodeType: UsingForDirective
typeName: Ty.path "uint"
libraryName: (* Beginning of a node! *)
id: 14
src: 105:1:0
nodeType: IdentifierPath
name: D
nameLocations: [105:1:0, ]
referencedDeclaration: 13

global: 0


  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "a" |),
              "double"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
