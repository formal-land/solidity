(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition at (α : list Value.t) : M :=
    match α with
    | [a, i] =>
      let _ :=
        M.return_ (|
          M.call (|
            Ty.path "uint8",
            [
              M.index_access (|
                M.call (|
                  Ty.path "bytes",
                  [
                    M.get_name (| "a" |)
                  ]
                |),
                Some (M.get_name (| "i" |))
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 24
src: 146:19:0
nodeType: UsingForDirective
typeName: Ty.path "string"
libraryName: (* Beginning of a node! *)
id: 22
src: 152:1:0
nodeType: IdentifierPath
name: L
nameLocations: [152:1:0, ]
referencedDeclaration: 21

global: 0


  Definition secondChar (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "input" ],
          Value.String "abc"
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
