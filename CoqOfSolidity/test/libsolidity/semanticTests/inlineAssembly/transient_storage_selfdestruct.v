(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition set (α : list Value.t) : M :=
    match α with
    | [value] =>
      let _ :=
        (* Beginning of a node! *)
id: 5
src: 61:49:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 94:5:0declaration: 2isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition get (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        (* Beginning of a node! *)
id: 12
src: 182:50:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 205:5:0declaration: 10isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition terminate (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.call (|
          M.get_name (| "selfdestruct" |),
          [
            M.get_name (| "a" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.

(* Contract *)
Module D.
  Definition c : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 33
src: 393:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 32
src: 393:1:0
nodeType: IdentifierPath
name: C
nameLocations: [393:1:0, ]
referencedDeclaration: 25

referencedDeclaration: 25
typeDescriptions: typeString contract CtypeIdentifier st_contract$_C_$25

,
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition destroy (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "c" |),
            "set"
          |),
          [
            Value.Integer 42
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "c" |),
            "terminate"
          |),
          [
            M.call (|
              Ty.path "address",
              [
                M.call (|
                  Ty.path "address",
                  [
                    M.get_name (| "this" |)
                  ]
                |)
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.call (|
                M.member_access (|
                  M.get_name (| "c" |),
                  "get"
                |),
                []
              |),
              Value.Integer 42
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition createAndDestroy (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 74
src: 600:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 73
src: 600:1:0
nodeType: IdentifierPath
name: C
nameLocations: [600:1:0, ]
referencedDeclaration: 25

referencedDeclaration: 25
typeDescriptions: typeString contract CtypeIdentifier st_contract$_C_$25

,
            []
          |)
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "c" |),
            "set"
          |),
          [
            Value.Integer 42
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "c" |),
            "terminate"
          |),
          [
            M.call (|
              Ty.path "address",
              [
                M.call (|
                  Ty.path "address",
                  [
                    M.get_name (| "this" |)
                  ]
                |)
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.call (|
                M.member_access (|
                  M.get_name (| "c" |),
                  "get"
                |),
                []
              |),
              Value.Integer 42
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
