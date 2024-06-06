(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module A.
  Definition f (α : list Value.t) : M :=
    match α with
    | [input] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "arr" |),
            Some (Value.Integer 0)
          |),
          M.get_name (| "input" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "arr" |),
            Some (Value.Integer 1)
          |),
          M.un_op (|
            true,
            "++",
            M.get_name (| "input" |)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "arr" |),
            Some (Value.Integer 2)
          |),
          M.un_op (|
            true,
            "++",
            M.get_name (| "input" |)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "arr" |),
            Some (Value.Integer 3)
          |),
          M.un_op (|
            true,
            "++",
            M.get_name (| "input" |)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "arr" |),
            Some (Value.Integer 4)
          |),
          M.un_op (|
            true,
            "++",
            M.get_name (| "input" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End A.

(* Contract *)
Module B.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "a" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 60
src: 336:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 59
src: 336:1:0
nodeType: IdentifierPath
name: A
nameLocations: [336:1:0, ]
referencedDeclaration: 45

referencedDeclaration: 45
typeDescriptions: typeString contract AtypeIdentifier st_contract$_A_$45

,
            []
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "res" |),
          M.call (|
            M.member_access (|
              M.get_name (| "a" |),
              "f"
            |),
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "res2" |),
          M.call (|
            M.member_access (|
              M.get_name (| "a" |),
              "f"
            |),
            [
              Value.Integer 1000
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B.
