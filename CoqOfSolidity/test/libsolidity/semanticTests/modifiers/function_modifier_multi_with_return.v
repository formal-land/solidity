(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 9
src: 134:68:0
nodeType: ModifierDefinition
name: repeat
nameLocation: 143:6:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 3
src: 149:12:0
nodeType: ParameterList
parameters: Definition twice : Value.t :=
    undefined.

virtual: 0
overrides: 
body: let _ :=
    if M.get_name (| "twice" |) then
      (* Beginning of a node! *)
id: 5
src: 183:1:0
nodeType: PlaceholderStatement

    else
      Value.Tuple [] in
  let _ :=
    (* Beginning of a node! *)
id: 7
src: 194:1:0
nodeType: PlaceholderStatement
 in
  Value.Tuple []


  Definition f (α : list Value.t) : M :=
    match α with
    | [twice] =>
      let _ :=
        M.assign (|
          "+=",
          M.get_name (| "r" |),
          Value.Integer 1
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "r" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
