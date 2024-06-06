(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

Axiom user_type_MyInt8 : Ty.path "MyInt8" = Ty.path "int8".
(* Contract *)
Module C.
  Definition x : Value.t :=
    M.call (|
      M.member_access (|
        M.get_name (| "MyInt8" |),
        "wrap"
      |),
      [
        M.un_op (|
          true,
          "-",
          Value.Integer 5
        |)
      ]
    |).

  Definition create_dirty_slot (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "mask" ],
          M.bin_op (|
            "-",
            M.bin_op (|
              "**",
              Value.Integer 2,
              Value.Integer 255
            |),
            Value.Integer 1
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 22
src: 207:104:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 288:4:0declaration: 15isSlot: isOffset: alueSize: src: 249:6:0declaration: 10sSlot: isOffset: suffix: slotalueSize: src: 276:6:0declaration: 10sSlot: isOffset: suffix: slotalueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition read_unclean_value (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "value" ],
          M.get_name (| "x" |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 34
src: 420:45:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 443:3:0declaration: 27isSlot: isOffset: alueSize: src: 450:5:0declaration: 31isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
