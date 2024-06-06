(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module A.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  (* Beginning of a node! *)
id: 10
src: 108:18:0
nodeType: ModifierDefinition
name: m1
nameLocation: 117:2:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 7
src: 120:0:0
nodeType: ParameterList
parameters: 

virtual: 0
overrides: 
body: let _ :=
    (* Beginning of a node! *)
id: 8
src: 122:1:0
nodeType: PlaceholderStatement
 in
  Value.Tuple []

End A.

(* Contract *)
Module B.
  (* Beginning of a node! *)
id: 17
src: 149:18:0
nodeType: ModifierDefinition
name: m2
nameLocation: 158:2:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 14
src: 161:0:0
nodeType: ParameterList
parameters: 

virtual: 0
overrides: 
body: let _ :=
    (* Beginning of a node! *)
id: 15
src: 163:1:0
nodeType: PlaceholderStatement
 in
  Value.Tuple []


  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B.
