(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition externalFunction (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "*",
            M.get_name (| "a" |),
            Value.Integer 1
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition publicFunction (α : list Value.t) : M :=
    match α with
    | [b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "*",
            M.get_name (| "b" |),
            Value.Integer 2
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition internalFunction (α : list Value.t) : M :=
    match α with
    | [c] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "*",
            M.get_name (| "c" |),
            Value.Integer 3
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 40
src: 283:36:0
nodeType: UsingForDirective
typeName: Ty.path "uint"
functionList: [{function: (* Beginning of a node! *)
id: 38
src: 290:18:0
nodeType: IdentifierPath
name: L.externalFunction
nameLocations: [290:1:0, 292:16:0, ]
referencedDeclaration: 12
, }, ]
global: 0


  (* Beginning of a node! *)
id: 43
src: 324:34:0
nodeType: UsingForDirective
typeName: Ty.path "uint"
functionList: [{function: (* Beginning of a node! *)
id: 41
src: 331:16:0
nodeType: IdentifierPath
name: L.publicFunction
nameLocations: [331:1:0, 333:14:0, ]
referencedDeclaration: 24
, }, ]
global: 0


  (* Beginning of a node! *)
id: 46
src: 363:36:0
nodeType: UsingForDirective
typeName: Ty.path "uint"
functionList: [{function: (* Beginning of a node! *)
id: 44
src: 370:18:0
nodeType: IdentifierPath
name: L.internalFunction
nameLocations: [370:1:0, 372:16:0, ]
referencedDeclaration: 36
, }, ]
global: 0


  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 1
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "x" |),
              "externalFunction"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 1
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "x" |),
              "publicFunction"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 1
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "x" |),
              "internalFunction"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
