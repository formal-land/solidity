(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Enum X *)

  Definition tested (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          Value.Integer 1
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "garbled" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 23
src: 184:45:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 207:7:0declaration: 21isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "tested"
            |),
            [
              M.get_name (| "garbled" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
