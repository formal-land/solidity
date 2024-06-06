(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition externalFunction (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition publicFunction (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition internalFunction (α : list Value.t) : M :=
    match α with
    | [] =>
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
src: 187:17:0
nodeType: UsingForDirective
typeName: Ty.path "uint"
libraryName: (* Beginning of a node! *)
id: 20
src: 193:1:0
nodeType: IdentifierPath
name: L
nameLocations: [193:1:0, ]
referencedDeclaration: 19

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
        M.call (|
          M.member_access (|
            M.get_name (| "x" |),
            "externalFunction"
          |),
          []
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "x" |),
            "publicFunction"
          |),
          []
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "x" |),
            "internalFunction"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
