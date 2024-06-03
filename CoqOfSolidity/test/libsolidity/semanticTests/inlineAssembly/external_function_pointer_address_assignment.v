(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition testFunction (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition testYul (α : list Value.t) : M :=
    match α with
    | [newAddress] =>
      let _ :=
        M.define (|
          [ "fp" ],
          M.member_access (|
            M.get_name (| "this" |),
            "testFunction"
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 18
src: 174:42:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 188:10:0declaration: 14isSlot: isOffset: suffix: addressalueSize: src: 202:10:0declaration: 6isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "fp" |),
            "address"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
