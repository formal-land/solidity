(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module B.
  Definition x : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          Value.Integer 3
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  (* Beginning of a node! *)
id: 20
src: 88:49:0
nodeType: ModifierDefinition
name: readX
nameLocation: 97:5:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 13
src: 102:2:0
nodeType: ParameterList
parameters: 

virtual: 1
overrides: 
body: let _ :=
    (* Beginning of a node! *)
id: 14
src: 123:1:0
nodeType: PlaceholderStatement
 in
  let _ :=
    M.call (|
      M.get_name (| "f" |),
      [
        Value.Integer 3
      ]
    |) in
  Value.Tuple []


  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 38
src: 204:50:0
nodeType: ModifierDefinition
name: readX
nameLocation: 213:5:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 30
src: 218:2:0
nodeType: ParameterList
parameters: 

virtual: 0
overrides: (* Beginning of a node! *)
id: 31
src: 221:8:0
nodeType: OverrideSpecifier
overrides: 

body: let _ :=
    (* Beginning of a node! *)
id: 32
src: 240:1:0
nodeType: PlaceholderStatement
 in
  let _ :=
    M.call (|
      M.get_name (| "f" |),
      [
        M.get_name (| "x" |)
      ]
    |) in
  Value.Tuple []
baseModifiers: [g: "]

End C.
