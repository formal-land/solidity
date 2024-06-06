(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [size] =>
      let _ :=
        (* Beginning of a node! *)
id: 5
src: 61:166:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 212:4:0declaration: 2isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition a (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        TryStatement M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |),
          [
            Value.Integer 3
          ]
        |) TryCatchClause   let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause Panic (* Beginning of a node! *)
id: 24
src: 347:6:0
nodeType: ParameterList
parameters: Definition  : Value.t :=
          undefined.
 let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause Error (* Beginning of a node! *)
id: 33
src: 404:15:0
nodeType: ParameterList
parameters: Definition  : Value.t :=
          undefined.
 let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause   let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool true
            ]
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition b (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        TryStatement M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |),
          [
            Value.Integer 6
          ]
        |) TryCatchClause   let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause Panic (* Beginning of a node! *)
id: 65
src: 622:6:0
nodeType: ParameterList
parameters: Definition  : Value.t :=
          undefined.
 let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause Error (* Beginning of a node! *)
id: 74
src: 679:15:0
nodeType: ParameterList
parameters: Definition  : Value.t :=
          undefined.
 let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause   let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool true
            ]
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition c (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        TryStatement M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |),
          [
            Value.Integer 0x24
          ]
        |) TryCatchClause   let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause Panic (* Beginning of a node! *)
id: 106
src: 900:8:0
nodeType: ParameterList
parameters: Definition c : Value.t :=
          undefined.
 let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool true
            ]
          |) in
        let _ :=
          M.return_ (|
            M.get_name (| "c" |)
          |) in
        Value.Tuple [], TryCatchClause Error (* Beginning of a node! *)
id: 117
src: 980:15:0
nodeType: ParameterList
parameters: Definition  : Value.t :=
          undefined.
 let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause   let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition d (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        TryStatement M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |),
          [
            Value.Integer 0x100
          ]
        |) TryCatchClause   let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause Panic (* Beginning of a node! *)
id: 149
src: 1203:8:0
nodeType: ParameterList
parameters: Definition c : Value.t :=
          undefined.
 let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool true
            ]
          |) in
        let _ :=
          M.return_ (|
            M.get_name (| "c" |)
          |) in
        Value.Tuple [], TryCatchClause Error (* Beginning of a node! *)
id: 160
src: 1283:15:0
nodeType: ParameterList
parameters: Definition  : Value.t :=
          undefined.
 let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [], TryCatchClause   let _ :=
          M.call (|
            M.get_name (| "assert" |),
            [
              Value.Bool false
            ]
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
