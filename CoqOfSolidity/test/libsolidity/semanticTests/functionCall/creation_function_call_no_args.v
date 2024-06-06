(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition i : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "i" |),
          Value.Integer 2
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.

(* Contract *)
Module D.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.call (|
                NewExpression (* Beginning of a node! *)
id: 17
src: 150:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 16
src: 150:1:0
nodeType: IdentifierPath
name: C
nameLocations: [150:1:0, ]
referencedDeclaration: 11

referencedDeclaration: 11
typeDescriptions: typeString contract CtypeIdentifier st_contract$_C_$11

,
                []
              |),
              "i"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
