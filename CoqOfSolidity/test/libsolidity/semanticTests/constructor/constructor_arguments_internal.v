(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Helper.
  Definition name : Value.t :=
    undefined.

  Definition flag : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [x, f] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "name" |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "flag" |),
          M.get_name (| "f" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition getName (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "name" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition getFlag (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "flag" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Helper.

(* Contract *)
Module Main.
  Definition h : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "h" |),
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 45
src: 360:6:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 44
src: 360:6:0
nodeType: IdentifierPath
name: Helper
nameLocations: [360:6:0, ]
referencedDeclaration: 37

referencedDeclaration: 37
typeDescriptions: typeString contract HelpertypeIdentifier st_contract$_Helper_$37

,
            [
              Value.String "abc",
              Value.Bool true
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition getFlag (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "h" |),
              "getFlag"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition getName (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "h" |),
              "getName"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Main.
