(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module A.
  (* Beginning of a node! *)
id: 4
src: 17:27:0
nodeType: ModifierDefinition
name: m
nameLocation: 26:1:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 1
src: 27:2:0
nodeType: ParameterList
parameters: 

virtual: 1
overrides: 
body: let _ :=
    (* Beginning of a node! *)
id: 2
src: 40:1:0
nodeType: PlaceholderStatement
 in
  Value.Tuple []

End A.

(* Contract *)
Module B.
  (* Beginning of a node! *)
id: 7
src: 73:21:0
nodeType: ModifierDefinition
name: m
nameLocation: 82:1:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 6
src: 83:2:0
nodeType: ParameterList
parameters: 

virtual: 1
overrides: 
body: 

End B.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 19
src: 122:34:0
nodeType: ModifierDefinition
name: m
nameLocation: 131:1:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 13
src: 132:2:0
nodeType: ParameterList
parameters: 

virtual: 0
overrides: (* Beginning of a node! *)
id: 16
src: 135:14:0
nodeType: OverrideSpecifier
overrides: (* Beginning of a node! *)
id: 14
src: 144:1:0
nodeType: IdentifierPath
name: A
nameLocations: [144:1:0, ]
referencedDeclaration: 5
, (* Beginning of a node! *)
id: 15
src: 147:1:0
nodeType: IdentifierPath
name: B
nameLocations: [147:1:0, ]
referencedDeclaration: 8


body: let _ :=
    (* Beginning of a node! *)
id: 17
src: 152:1:0
nodeType: PlaceholderStatement
 in
  Value.Tuple []
baseModifiers: [Invalid remapping: "alid remapping: "]


  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
