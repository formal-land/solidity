(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv1 *)

(* Contract *)
Module C.
  (* Enum E *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [e] =>
      let _ :=
        (* Beginning of a node! *)
id: 12
src: 112:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 128:1:0declaration: 7isSlot: isOffset: alueSize: src: 123:1:0declaration: 10isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
