(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

Axiom user_type_U8 : Ty.path "U8" = Ty.path "uint8".
(* Beginning of a node! *)
id: 7
src: 18:49:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 6
src: 57:2:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 5
src: 57:2:0
nodeType: IdentifierPath
name: U8
nameLocations: [57:2:0, ]
referencedDeclaration: 2

referencedDeclaration: 2
typeDescriptions: typeString U8typeIdentifier st_userDefinedValueType$_U8_$2

functionList: [{definition: (* Beginning of a node! *)
id: 3
src: 25:7:0
nodeType: IdentifierPath
name: yoloAdd
nameLocations: [25:7:0, ]
referencedDeclaration: 21
, operator: +, }, {definition: (* Beginning of a node! *)
id: 4
src: 39:7:0
nodeType: IdentifierPath
name: yoloDiv
nameLocations: [39:7:0, ]
referencedDeclaration: 35
, operator: /, }, ]
global: 1

Definition yoloAdd (α : list Value.t) : M :=
  match α with
  | [x, y] =>
    let _ :=
      (* Beginning of a node! *)
id: 19
src: 124:61:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 152:1:0declaration: 10isSlot: isOffset: alueSize: src: 155:1:0declaration: 13isSlot: isOffset: alueSize: src: 143:1:0declaration: 17isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.
Definition yoloDiv (α : list Value.t) : M :=
  match α with
  | [x, y] =>
    let _ :=
      (* Beginning of a node! *)
id: 33
src: 244:61:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 272:1:0declaration: 24isSlot: isOffset: alueSize: src: 275:1:0declaration: 27isSlot: isOffset: alueSize: src: 263:1:0declaration: 31isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.
(* Contract *)
Module C.
  Definition divAddNoOverflow (α : list Value.t) : M :=
    match α with
    | [a, b, c] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "/",
            M.get_name (| "a" |),
            Value.Tuple [
              M.bin_op (|
                "+",
                M.get_name (| "b" |),
                M.get_name (| "c" |)
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
