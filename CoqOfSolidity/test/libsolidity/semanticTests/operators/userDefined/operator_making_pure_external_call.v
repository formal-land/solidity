(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Axiom user_type_Int32 : Ty.path "Int32" = Ty.path "int32".

Axiom using : M.usingFunctions (|
    Some (Ty.path "Int32"),
    UsingKind.Global,
    [
    UsingFunction.Operator "+" "add",
    UsingFunction.Operator "-" "unsub",
  ]
  |).

Definition add (α : list Value.t) : M :=
  match α with
  | [x, y] =>
    let _ :=
      M.return_ (|
        M.call (|
          M.member_access (|
            M.call (|
              M.get_name (| "loadAdder" |),
              []
            |),
            "mul"
          |),
          [
            M.get_name (| "x" |),
            M.get_name (| "y" |)
          ]
        |)
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.

Definition unsub (α : list Value.t) : M :=
  match α with
  | [x] =>
    let _ :=
      M.return_ (|
        M.call (|
          M.member_access (|
            M.call (|
              M.get_name (| "loadAdder" |),
              []
            |),
            "inc"
          |),
          [
            M.get_name (| "x" |)
          ]
        |)
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.

(* Interface *)
Module IAdder.
  Definition mul (α : list Value.t) : M :=
    match α with
    | [_, _] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition inc (α : list Value.t) : M :=
    match α with
    | [_] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.
End IAdder.


(* Contract *)
Module Adder.
  Definition mul (α : list Value.t) : M :=
    match α with
    | [x, y] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "Int32" |),
              "wrap"
            |),
            [
              M.bin_op (|
                "*",
                M.call (|
                  M.member_access (|
                    M.get_name (| "Int32" |),
                    "unwrap"
                  |),
                  [
                    M.get_name (| "x" |)
                  ]
                |),
                M.call (|
                  M.member_access (|
                    M.get_name (| "Int32" |),
                    "unwrap"
                  |),
                  [
                    M.get_name (| "y" |)
                  ]
                |)
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition inc (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "Int32" |),
              "wrap"
            |),
            [
              M.bin_op (|
                "+",
                M.call (|
                  M.member_access (|
                    M.get_name (| "Int32" |),
                    "unwrap"
                  |),
                  [
                    M.get_name (| "x" |)
                  ]
                |),
                Value.Integer 1
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Adder.


Definition storeAdder (α : list Value.t) : M :=
  match α with
  | [adder] =>
    let _ :=
      (* Beginning of a node! *)
id: 122
src: 721:134:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 843:5:0declaration: 119isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.

Definition loadAdder (α : list Value.t) : M :=
  match α with
  | [] =>
    let _ :=
      (* Beginning of a node! *)
id: 130
src: 914:42:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 933:5:0declaration: 128isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.

(* Contract *)
Module C.
  Definition testMul (α : list Value.t) : M :=
    match α with
    | [x, y] =>
      let _ :=
        M.call (|
          M.get_name (| "storeAdder" |),
          [
            M.call (|
              NewExpression Ty.path "Adder"
,
              []
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.get_name (| "x" |),
            M.get_name (| "y" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition testInc (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.call (|
          M.get_name (| "storeAdder" |),
          [
            M.call (|
              NewExpression Ty.path "Adder"
,
              []
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          M.un_op (|
            true,
            "-",
            M.get_name (| "x" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
