(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition s : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        (* Beginning of a node! *)
id: 9
src: 86:52:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 116:6:0declaration: 4sSlot: isOffset: suffix: slotalueSize: 
evmVersion: cancun
 in
      let _ :=
        M.define (|
          [ "x" ],
          M.index_access (|
            M.get_name (| "s" |),
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
id: 19
src: 187:39:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 210:1:0declaration: 17isSlot: isOffset: alueSize: src: 215:1:0declaration: 11isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "correct" |),
          M.bin_op (|
            "&&",
            Value.Tuple [
              M.bin_op (|
                "==",
                M.index_access (|
                  M.get_name (| "s" |),
                  Some (Value.Integer 0)
                |),
                Value.Integer 0x01
              |)
            ],
            Value.Tuple [
              M.bin_op (|
                "==",
                M.get_name (| "r" |),
                Value.Integer 0x01
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
