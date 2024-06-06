(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  (* Struct S *)

  Definition integer (α : list Value.t) : M :=
    match α with
    | [t, b] =>
      let _ :=
        if M.get_name (| "b" |) then
          let _ :=
            M.return_ (|
              M.get_name (| "t" |)
            |) in
          Value.Tuple []
        else
          let _ :=
            M.call (|
              M.get_name (| "revert" |),
              [
                Value.String "failure"
              ]
            |) in
          Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition stru (α : list Value.t) : M :=
    match α with
    | [t, b] =>
      let _ :=
        if M.get_name (| "b" |) then
          let _ :=
            M.return_ (|
              M.member_access (|
                M.get_name (| "t" |),
                "x"
              |)
            |) in
          Value.Tuple []
        else
          let _ :=
            M.call (|
              M.get_name (| "revert" |),
              [
                Value.String "failure"
              ]
            |) in
          Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  (* Beginning of a node! *)
id: 50
src: 398:16:0
nodeType: UsingForDirective
typeName: (* Beginning of a node! *)
id: 49
src: 410:3:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 48
src: 410:3:0
nodeType: IdentifierPath
name: L.S
nameLocations: [410:1:0, 412:1:0, ]
referencedDeclaration: 3

referencedDeclaration: 3
typeDescriptions: typeString struct L.StypeIdentifier st_struct$_S_$3_storage_ptr

libraryName: (* Beginning of a node! *)
id: 47
src: 404:1:0
nodeType: IdentifierPath
name: L
nameLocations: [404:1:0, ]
referencedDeclaration: 46

global: 0


  Definition t : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [b] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 8
        |) in
      let _ :=
        TryStatement M.call (|
          M.member_access (|
            M.get_name (| "L" |),
            "integer"
          |),
          [
            M.get_name (| "x" |),
            M.get_name (| "b" |)
          ]
        |) TryCatchClause  (* Beginning of a node! *)
id: 73
src: 549:9:0
nodeType: ParameterList
parameters: Definition _x : Value.t :=
          undefined.
 let _ :=
          M.return_ (|
            Value.Tuple [
              M.get_name (| "_x" |),
              Value.String ""
            ]
          |) in
        Value.Tuple [], TryCatchClause Error (* Beginning of a node! *)
id: 82
src: 611:23:0
nodeType: ParameterList
parameters: Definition message : Value.t :=
          undefined.
 let _ :=
          M.return_ (|
            Value.Tuple [
              Value.Integer 18,
              M.get_name (| "message" |)
            ]
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [b] =>
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "t" |),
            "x"
          |),
          Value.Integer 9
        |) in
      let _ :=
        TryStatement M.call (|
          M.member_access (|
            M.get_name (| "t" |),
            "stru"
          |),
          [
            M.get_name (| "b" |)
          ]
        |) TryCatchClause  (* Beginning of a node! *)
id: 112
src: 796:8:0
nodeType: ParameterList
parameters: Definition x : Value.t :=
          undefined.
 let _ :=
          M.return_ (|
            Value.Tuple [
              M.get_name (| "x" |),
              Value.String ""
            ]
          |) in
        Value.Tuple [], TryCatchClause Error (* Beginning of a node! *)
id: 121
src: 856:23:0
nodeType: ParameterList
parameters: Definition message : Value.t :=
          undefined.
 let _ :=
          M.return_ (|
            Value.Tuple [
              Value.Integer 19,
              M.get_name (| "message" |)
            ]
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
