(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition a : Value.t :=
    Value.Integer 2.

  Definition b : Value.t :=
    M.get_name (| "a" |).

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        (* Beginning of a node! *)
id: 9
src: 102:43:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 134:1:0declaration: 6isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
