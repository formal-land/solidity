(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition a : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.define (|
          [ "off" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 18
src: 144:78:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 197:3:0declaration: 16isSlot: isOffset: alueSize: src: 204:8:0declaration: 12isSlot: sOffset: suffix: offsetalueSize: src: 174:6:0declaration: 12sSlot: isOffset: suffix: slotalueSize: 
evmVersion: cancun
 in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.get_name (| "off" |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "a" |),
            "length"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
