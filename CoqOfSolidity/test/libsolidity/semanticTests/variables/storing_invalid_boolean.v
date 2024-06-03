(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Event Ev *)

  Definition perm : Value.t :=
    undefined.

  Definition set (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "tmp" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 14
src: 123:41:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 146:3:0declaration: 12isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "perm" |),
          M.get_name (| "tmp" |)
        |) in
      let _ :=
        M.return_ (|
          Value.Integer 1
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition ret (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "tmp" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 30
src: 277:41:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 300:3:0declaration: 28isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.get_name (| "tmp" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition ev (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "tmp" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 42
src: 412:41:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 435:3:0declaration: 40isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "Ev" |),
          [
            M.get_name (| "tmp" |)
          ]
        |)
 in
      let _ :=
        M.return_ (|
          Value.Integer 1
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
