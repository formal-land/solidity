(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module D.
  Definition x : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          Value.Integer 7
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.


(* Contract *)
Module C.
  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "c" ],
          M.member_access (|
            M.call (|
              M.get_name (| "type" |),
              [
                M.get_name (| "D" |)
              ]
            |),
            "creationCode"
          |)
        |) in
      let _ :=
        M.define (|
          [ "d" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 35
src: 276:71:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 318:1:0declaration: 25isSlot: isOffset: alueSize: src: 334:1:0declaration: 25isSlot: isOffset: alueSize: src: 299:1:0declaration: 33isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "d" |),
              "f"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
