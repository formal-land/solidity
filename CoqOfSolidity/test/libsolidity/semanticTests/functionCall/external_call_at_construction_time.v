(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module T.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End T.

(* Contract *)
Module U.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End U.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [c] =>
      let _ :=
        if M.bin_op (|
          "==",
          M.get_name (| "c" |),
          Value.Integer 0
        |) then
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 41
src: 301:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 40
src: 301:1:0
nodeType: IdentifierPath
name: T
nameLocations: [301:1:0, ]
referencedDeclaration: 14

referencedDeclaration: 14
typeDescriptions: typeString contract TtypeIdentifier st_contract$_T_$14

,
            []
          |)
        else
          if M.bin_op (|
            "==",
            M.get_name (| "c" |),
            Value.Integer 1
          |) then
            M.call (|
              NewExpression (* Beginning of a node! *)
id: 49
src: 335:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 48
src: 335:1:0
nodeType: IdentifierPath
name: U
nameLocations: [335:1:0, ]
referencedDeclaration: 30

referencedDeclaration: 30
typeDescriptions: typeString contract UtypeIdentifier st_contract$_U_$30

,
              []
            |)
          else
            Value.Tuple [] in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            Value.Integer 1,
            M.get_name (| "c" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
