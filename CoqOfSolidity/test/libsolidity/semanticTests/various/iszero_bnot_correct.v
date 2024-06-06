(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.call (|
            Ty.path "bytes32",
            [
              M.call (|
                Ty.path "uint256",
                [
                  Value.Integer 1
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 15
src: 200:44:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 223:1:0declaration: 6isSlot: isOffset: alueSize: src: 232:1:0declaration: 6isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        if M.bin_op (|
          "!=",
          M.get_name (| "x" |),
          M.un_op (|
            true,
            "~",
            M.call (|
              Ty.path "bytes32",
              [
                M.call (|
                  Ty.path "uint256",
                  [
                    Value.Integer 1
                  ]
                |)
              ]
            |)
          |)
        |) then
          M.return_ (|
            Value.Bool false
          |)
        else
          Value.Tuple [] in
      let _ :=
        (* Beginning of a node! *)
id: 29
src: 306:47:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 329:1:0declaration: 6isSlot: isOffset: alueSize: src: 341:1:0declaration: 6isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        if M.bin_op (|
          "!=",
          M.get_name (| "x" |),
          M.call (|
            Ty.path "bytes32",
            [
              Value.Integer 0
            ]
          |)
        |) then
          M.return_ (|
            Value.Bool false
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
