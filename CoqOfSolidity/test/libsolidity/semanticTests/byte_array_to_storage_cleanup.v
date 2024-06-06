(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Event ev *)

  Definition s : Value.t :=
    undefined.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 20
src: 142:6:0
nodeType: ArrayTypeName
baseType: Ty.path "uint"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "ev" |),
          [
            M.get_name (| "x" |),
            Value.Integer 0x21
          ]
        |)
 in
      let _ :=
        M.define (|
          [ "m" ],
          M.call (|
            NewExpression Ty.path "bytes"
,
            [
              Value.Integer 63
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "s" |),
          M.get_name (| "m" |)
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "s" |),
            "push"
          |),
          []
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "s" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          M.call (|
            NewExpression Ty.path "bytes"
,
            [
              Value.Integer 63
            ]
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 61
src: 375:67:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 410:1:0declaration: 55isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "s" |),
          M.get_name (| "m" |)
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "s" |),
            "push"
          |),
          []
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "s" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [c] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "s" |),
          M.get_name (| "c" |)
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "s" |),
            "push"
          |),
          []
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "s" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
