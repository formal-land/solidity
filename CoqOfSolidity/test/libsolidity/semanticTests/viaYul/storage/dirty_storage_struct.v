(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition s : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.member_access (|
              M.get_name (| "s" |),
              "m"
            |),
            "push"
          |),
          []
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 19
src: 139:94:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 172:6:0declaration: 7sSlot: isOffset: suffix: slotalueSize: 
evmVersion: cancun
 in
      let _ :=
        M.define (|
          [ "x" ],
          M.index_access (|
            M.member_access (|
              M.get_name (| "s" |),
              "m"
            |),
            Some (Value.Integer 0)
          |)
        |) in
      let _ :=
        M.define (|
          [ "r" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 30
src: 284:39:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 307:1:0declaration: 28isSlot: isOffset: alueSize: src: 312:1:0declaration: 21isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "correct" |),
          M.bin_op (|
            "==",
            M.get_name (| "r" |),
            Value.Integer 0x01
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
