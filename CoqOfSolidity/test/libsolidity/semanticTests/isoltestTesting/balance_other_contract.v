(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Other.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition getAddress (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            Ty.path "address",
            [
              M.get_name (| "this" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Other.

(* Contract *)
Module ClientReceipt.
  Definition other : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "other" |),
          M.call (|
            FunctionCallOptions NewExpression (* Beginning of a node! *)
id: 24
src: 232:5:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 23
src: 232:5:0
nodeType: IdentifierPath
name: Other
nameLocations: [232:5:0, ]
referencedDeclaration: 16

referencedDeclaration: 16
typeDescriptions: typeString contract OthertypeIdentifier st_contract$_Other_$16

 [value, ] Value.Integer 500
,
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition getAddress (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "other" |),
              "getAddress"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End ClientReceipt.
