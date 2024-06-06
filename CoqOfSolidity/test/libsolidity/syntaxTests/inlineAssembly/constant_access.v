(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition x : Value.t :=
    M.bin_op (|
      "**",
      Value.Integer 2,
      Value.Integer 20
    |).

  Definition b : Value.t :=
    Value.Bool true.

  Definition s : Value.t :=
    Value.String "ab".

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        (* Beginning of a node! *)
id: 14
src: 139:92:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 196:1:0declaration: 8isSlot: isOffset: alueSize: src: 220:1:0declaration: 11isSlot: isOffset: alueSize: src: 172:1:0declaration: 5isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
