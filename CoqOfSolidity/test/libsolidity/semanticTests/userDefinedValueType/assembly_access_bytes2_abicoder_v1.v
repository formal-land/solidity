(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv1 *)

Axiom user_type_MyBytes2 : Ty.path "MyBytes2" = Ty.path "bytes2".

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [val] =>
      let _ :=
        (* Beginning of a node! *)
id: 11
src: 129:43:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 152:3:0declaration: 9isSlot: isOffset: alueSize: src: 159:3:0declaration: 6isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [val] =>
      let _ :=
        (* Beginning of a node! *)
id: 20
src: 247:43:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 270:3:0declaration: 18isSlot: isOffset: alueSize: src: 277:3:0declaration: 15isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [val] =>
      let _ :=
        M.define (|
          [ "ret" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 34
src: 386:43:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 409:3:0declaration: 32isSlot: isOffset: alueSize: src: 416:3:0declaration: 24isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.get_name (| "ret" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
