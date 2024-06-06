(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition comparison_operators_for_external_function_pointers_with_dirty_bits (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "g_ptr_dirty" ],
          M.member_access (|
            M.get_name (| "this" |),
            "g"
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 16
src: 205:187:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 232:19:0declaration: 12isSlot: isOffset: suffix: addressalueSize: src: 258:19:0declaration: 12isSlot: isOffset: suffix: addressalueSize: src: 315:20:0declaration: 12isSlot: isOffset: suffix: selectoralueSize: src: 342:20:0declaration: 12isSlot: isOffset: suffix: selectoralueSize: 
evmVersion: cancun
 in
      let _ :=
        M.define (|
          [ "g_ptr" ],
          M.member_access (|
            M.get_name (| "this" |),
            "g"
          |)
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.get_name (| "g_ptr" |),
            M.get_name (| "g_ptr_dirty" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
