(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module A.
  (* Beginning of a node! *)
id: 4
src: 22:29:0
nodeType: ModifierDefinition
name: mod
nameLocation: 31:3:0
documentation: 
visibility: internal
parameters: ParameterList.make [
    Definition a : Value.t :=
      undefined.
  ]
virtual: 1
overrides: 
body: 

End A.


(* Contract *)
Module B.
  (* Beginning of a node! *)
id: 14
src: 71:36:0
nodeType: ModifierDefinition
name: mod
nameLocation: 80:3:0
documentation: 
visibility: internal
parameters: ParameterList.make [
    Definition a : Value.t :=
      undefined.
  ]
virtual: 0
overrides: OverrideSpecifier.make []
body: let _ :=
    (* Beginning of a node! *)
id: 12
src: 103:1:0
nodeType: PlaceholderStatement
 in
  Value.Tuple []
baseModifiers: [Invalid remapping: "]

End B.


(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 17
src: 134:19:0
nodeType: ModifierDefinition
name: m
nameLocation: 143:1:0
documentation: 
visibility: internal
parameters: ParameterList.make []
virtual: 1
overrides: 
body: 


  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.


(* Contract *)
Module D.
  (* Beginning of a node! *)
id: 31
src: 204:29:0
nodeType: ModifierDefinition
name: m
nameLocation: 213:1:0
documentation: 
visibility: internal
parameters: ParameterList.make []
virtual: 0
overrides: OverrideSpecifier.make []
body: let _ :=
    (* Beginning of a node! *)
id: 29
src: 228:1:0
nodeType: PlaceholderStatement
 in
  Value.Tuple []
baseModifiers: [ping: "]

End D.
