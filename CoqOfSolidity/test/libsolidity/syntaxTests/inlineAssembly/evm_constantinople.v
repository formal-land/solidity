(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        (* Beginning of a node! *)
id: 5
src: 73:115:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 129:3:0declaration: 3isSlot: isOffset: alueSize: src: 140:3:0declaration: 3isSlot: isOffset: alueSize: src: 160:3:0declaration: 3isSlot: isOffset: alueSize: src: 171:3:0declaration: 3isSlot: isOffset: alueSize: src: 96:3:0declaration: 3isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        (* Beginning of a node! *)
id: 12
src: 253:59:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 276:3:0declaration: 10isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        (* Beginning of a node! *)
id: 19
src: 382:62:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 405:3:0declaration: 17isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
