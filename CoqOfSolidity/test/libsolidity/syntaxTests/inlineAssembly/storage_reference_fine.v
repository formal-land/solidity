(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition x : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "y" ],
          M.get_name (| "x" |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 13
src: 91:70:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 142:8:0declaration: 10isSlot: sOffset: suffix: offsetalueSize: src: 118:6:0declaration: 10sSlot: isOffset: suffix: slotalueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
