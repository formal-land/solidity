(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Definition e : Value.t :=
  Value.Integer 0x1212121212121212121212121000002134593163.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        (* Beginning of a node! *)
id: 8
src: 127:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 143:1:0declaration: 3isSlot: isOffset: alueSize: src: 138:1:0declaration: 6isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
