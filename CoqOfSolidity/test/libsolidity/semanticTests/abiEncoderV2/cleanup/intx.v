(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition ggg8 (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition gg16 (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition gg32 (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition gg64 (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g128 (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f8 (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 0
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 62
src: 555:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 571:1:0declaration: 53isSlot: isOffset: alueSize: src: 566:1:0declaration: 59isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "ggg8"
            |),
            [
              M.get_name (| "x" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f16 (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 0
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 80
src: 699:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 715:1:0declaration: 71isSlot: isOffset: alueSize: src: 710:1:0declaration: 77isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "gg16"
            |),
            [
              M.get_name (| "x" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f32 (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 0
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 98
src: 843:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 859:1:0declaration: 89isSlot: isOffset: alueSize: src: 854:1:0declaration: 95isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "gg32"
            |),
            [
              M.get_name (| "x" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f64 (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 0
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 116
src: 987:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 1003:1:0declaration: 107isSlot: isOffset: alueSize: src: 998:1:0declaration: 113isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "gg64"
            |),
            [
              M.get_name (| "x" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f128 (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 0
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 134
src: 1133:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 1149:1:0declaration: 125isSlot: isOffset: alueSize: src: 1144:1:0declaration: 131isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "g128"
            |),
            [
              M.get_name (| "x" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
