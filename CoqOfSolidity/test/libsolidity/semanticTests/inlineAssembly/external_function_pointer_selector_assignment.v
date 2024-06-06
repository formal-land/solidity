(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

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
    | [newSelector] =>
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
src: 169:44:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 183:11:0declaration: 14isSlot: isOffset: suffix: selectoralueSize: src: 198:11:0declaration: 6isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.call (|
            Ty.path "uint32",
            [
              M.member_access (|
                M.get_name (| "fp" |),
                "selector"
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
