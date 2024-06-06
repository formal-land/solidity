(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

Definition id (α : list Value.t) : M :=
  match α with
  | [x] =>
    let _ :=
      M.return_ (|
        M.get_name (| "x" |)
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.
Definition zero (α : list Value.t) : M :=
  match α with
  | [] =>
    let _ :=
      M.return_ (|
        Value.Integer 0
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.
(* Beginning of a node! *)
id: 23
src: 117:20:0
nodeType: UsingForDirective
typeName: Ty.path "uint"
functionList: [{function: (* Beginning of a node! *)
id: 21
src: 124:2:0
nodeType: IdentifierPath
name: id
nameLocations: [124:2:0, ]
referencedDeclaration: 10
, }, ]
global: 0

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 26
src: 155:22:0
nodeType: UsingForDirective
typeName: Ty.path "uint"
functionList: [{function: (* Beginning of a node! *)
id: 24
src: 162:4:0
nodeType: IdentifierPath
name: zero
nameLocations: [162:4:0, ]
referencedDeclaration: 20
, }, ]
global: 0


  Definition g (α : list Value.t) : M :=
    match α with
    | [z] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "z" |),
            "zero"
          |),
          []
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "z" |),
            "id"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
