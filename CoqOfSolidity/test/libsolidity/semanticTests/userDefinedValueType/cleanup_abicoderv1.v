(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

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
            NewExpression (* Beginning of a node! *)
id: 67
src: 532:9:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 66
src: 532:7:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 65
src: 532:7:0
nodeType: IdentifierPath
name: MyUInt8
nameLocations: [532:7:0, ]
referencedDeclaration: 3

referencedDeclaration: 3
typeDescriptions: typeString MyUInt8typeIdentifier st_userDefinedValueType$_MyUInt8_$3

length: 
typeDescriptions: typeString MyUInt8[]typeIdentifier st_array$_t_userDefinedValueType$_MyUInt8_$3_$dyn_storage_ptr

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
