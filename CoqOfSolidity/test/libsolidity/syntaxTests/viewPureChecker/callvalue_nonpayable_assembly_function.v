(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        (* Beginning of a node! *)
id: 5
src: 53:49:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 76:1:0declaration: 2isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
