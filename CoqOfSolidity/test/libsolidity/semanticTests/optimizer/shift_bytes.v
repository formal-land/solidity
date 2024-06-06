(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.bin_op (|
            "<<",
            M.get_name (| "a" |),
            Value.Tuple [
              M.bin_op (|
                "-",
                Value.Integer 256,
                Value.Integer 8
              |)
            ]
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 20
src: 269:38:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 286:1:0declaration: 12isSlot: isOffset: alueSize: src: 299:1:0declaration: 12isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.define (|
          [ "y" ],
          M.bin_op (|
            "<<",
            M.get_name (| "a" |),
            Value.Integer 8
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 27
src: 333:39:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 350:1:0declaration: 22isSlot: isOffset: alueSize: src: 364:1:0declaration: 22isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.define (|
          [ "z" ],
          M.bin_op (|
            "<<",
            M.get_name (| "a" |),
            Value.Integer 16
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 34
src: 399:38:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 416:1:0declaration: 29isSlot: isOffset: alueSize: src: 429:1:0declaration: 29isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "x" |),
            M.get_name (| "y" |),
            M.get_name (| "z" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.bin_op (|
            ">>",
            M.get_name (| "a" |),
            Value.Tuple [
              M.bin_op (|
                "-",
                Value.Integer 256,
                Value.Integer 16
              |)
            ]
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 61
src: 555:39:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 572:1:0declaration: 53isSlot: isOffset: alueSize: src: 586:1:0declaration: 53isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.define (|
          [ "y" ],
          M.bin_op (|
            ">>",
            M.get_name (| "a" |),
            Value.Integer 8
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 68
src: 620:38:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 637:1:0declaration: 63isSlot: isOffset: alueSize: src: 650:1:0declaration: 63isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.define (|
          [ "z" ],
          M.bin_op (|
            ">>",
            M.get_name (| "a" |),
            Value.Integer 16
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 75
src: 685:38:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 702:1:0declaration: 70isSlot: isOffset: alueSize: src: 715:1:0declaration: 70isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "x" |),
            M.get_name (| "y" |),
            M.get_name (| "z" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
