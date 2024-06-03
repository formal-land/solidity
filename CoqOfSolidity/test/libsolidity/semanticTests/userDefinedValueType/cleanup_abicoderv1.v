(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv1 *)

Axiom user_type_MyUInt8 : Ty.path "MyUInt8" = Ty.path "uint8".

Definition wrap (α : list Value.t) : M :=
  match α with
  | [x] =>
    let _ :=
      (* Beginning of a node! *)
id: 11
src: 132:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 148:1:0declaration: 5isSlot: isOffset: alueSize: src: 143:1:0declaration: 9isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.

Definition unwrap (α : list Value.t) : M :=
  match α with
  | [x] =>
    let _ :=
      (* Beginning of a node! *)
id: 21
src: 206:19:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 222:1:0declaration: 16isSlot: isOffset: alueSize: src: 217:1:0declaration: 19isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.

(* Contract *)
Module C.
  Definition a : Value.t :=
    undefined.

  Definition b : Value.t :=
    undefined.

  Definition c : Value.t :=
    undefined.

  Definition ret (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.get_name (| "wrap" |),
            [
              Value.Integer 0x1ff
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition mem (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.call (|
            NewExpression Ty.array (Ty.path "MyUInt8") None
,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "x" |),
            Some (Value.Integer 0)
          |),
          M.call (|
            M.get_name (| "wrap" |),
            [
              Value.Integer 0x1ff
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "x" |),
            Some (Value.Integer 1)
          |),
          M.call (|
            M.get_name (| "wrap" |),
            [
              Value.Integer 0xff
            ]
          |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "require" |),
          [
            M.bin_op (|
              "==",
              M.call (|
                M.get_name (| "unwrap" |),
                [
                  M.index_access (|
                    M.get_name (| "x" |),
                    Some (Value.Integer 0)
                  |)
                ]
              |),
              M.call (|
                M.get_name (| "unwrap" |),
                [
                  M.index_access (|
                    M.get_name (| "x" |),
                    Some (Value.Integer 1)
                  |)
                ]
              |)
            |)
          ]
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 102
src: 656:60:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 690:1:0declaration: 64isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.call (|
          M.get_name (| "require" |),
          [
            M.bin_op (|
              "==",
              M.call (|
                M.get_name (| "unwrap" |),
                [
                  M.index_access (|
                    M.get_name (| "x" |),
                    Some (Value.Integer 0)
                  |)
                ]
              |),
              M.call (|
                M.get_name (| "unwrap" |),
                [
                  M.index_access (|
                    M.get_name (| "x" |),
                    Some (Value.Integer 1)
                  |)
                ]
              |)
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition stor (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          Value.Integer 1
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          Value.Integer 2
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          M.call (|
            M.get_name (| "wrap" |),
            [
              Value.Integer 0x1ff
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "a" |),
            M.get_name (| "b" |),
            M.get_name (| "c" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
