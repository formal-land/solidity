(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition st : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "st" |),
          Value.Integer 0
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 17
src: 131:332:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 308:1:0declaration: 4isSlot: isOffset: alueSize: src: 410:1:0declaration: 7isSlot: isOffset: alueSize: src: 363:1:0declaration: 11isSlot: isOffset: alueSize: src: 372:1:0declaration: 11isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.get_name (| "st" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
