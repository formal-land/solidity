(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        (* Beginning of a node! *)
id: 13
src: 96:43:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 124:8:0declaration: 5isSlot: isOffset: suffix: lengthalueSize: src: 107:8:0declaration: 5isSlot: sOffset: suffix: offsetalueSize: 
evmVersion: cancun
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r" |),
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
