(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module D.
  Definition x : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "codeHash" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 8
src: 90:151:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 191:8:0declaration: 6isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.get_name (| "codeHash" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.

(* Contract *)
Module C.
  Definition testRuntime (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "d" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 24
src: 356:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 23
src: 356:1:0
nodeType: IdentifierPath
name: D
nameLocations: [356:1:0, ]
referencedDeclaration: 15

referencedDeclaration: 15
typeDescriptions: typeString contract DtypeIdentifier st_contract$_D_$15

,
            []
          |)
        |) in
      let _ :=
        M.define (|
          [ "runtimeHash" ],
          M.call (|
            M.get_name (| "keccak256" |),
            [
              M.member_access (|
                M.call (|
                  M.get_name (| "type" |),
                  [
                    M.get_name (| "D" |)
                  ]
                |),
                "runtimeCode"
              |)
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "otherHash" ],
          Value.Default
        |) in
      let _ :=
        M.define (|
          [ "size" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 43
src: 480:158:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 523:1:0declaration: 22isSlot: isOffset: alueSize: src: 550:1:0declaration: 22isSlot: isOffset: alueSize: src: 587:9:0declaration: 38isSlot: isOffset: alueSize: src: 503:4:0declaration: 41isSlot: isOffset: alueSize: src: 569:4:0declaration: 41isSlot: isOffset: alueSize: src: 623:4:0declaration: 41isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.call (|
          M.get_name (| "require" |),
          [
            M.bin_op (|
              "==",
              M.get_name (| "size" |),
              M.member_access (|
                M.member_access (|
                  M.call (|
                    M.get_name (| "type" |),
                    [
                      M.get_name (| "D" |)
                    ]
                  |),
                  "runtimeCode"
                |),
                "length"
              |)
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "require" |),
          [
            M.bin_op (|
              "==",
              M.get_name (| "runtimeHash" |),
              M.get_name (| "otherHash" |)
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition testCreation (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "d" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 72
src: 833:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 71
src: 833:1:0
nodeType: IdentifierPath
name: D
nameLocations: [833:1:0, ]
referencedDeclaration: 15

referencedDeclaration: 15
typeDescriptions: typeString contract DtypeIdentifier st_contract$_D_$15

,
            []
          |)
        |) in
      let _ :=
        M.define (|
          [ "creationHash" ],
          M.call (|
            M.get_name (| "keccak256" |),
            [
              M.member_access (|
                M.call (|
                  M.get_name (| "type" |),
                  [
                    M.get_name (| "D" |)
                  ]
                |),
                "creationCode"
              |)
            ]
          |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "require" |),
          [
            M.bin_op (|
              "==",
              M.get_name (| "creationHash" |),
              M.call (|
                M.member_access (|
                  M.get_name (| "d" |),
                  "x"
                |),
                []
              |)
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
