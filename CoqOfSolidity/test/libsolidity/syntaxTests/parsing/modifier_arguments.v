(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
  (* Beginning of a node! *)
id: 11
src: 17:51:0
nodeType: ModifierDefinition
name: mod
nameLocation: 26:3:0
documentation: 
visibility: internal
parameters: (* Beginning of a node! *)
id: 3
src: 29:11:0
nodeType: ParameterList
parameters: Definition a : Value.t :=
    undefined.

virtual: 0
overrides: 
body: let _ :=
    if M.bin_op (|
      "==",
      M.member_access (|
        M.get_name (| "msg" |),
        "sender"
      |),
      M.get_name (| "a" |)
    |) then
      (* Beginning of a node! *)
id: 8
src: 64:1:0
nodeType: PlaceholderStatement

    else
      Value.Tuple [] in
  Value.Tuple []

End c.
