(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition g (α : list Value.t) : M :=
    match α with
    | [b] =>
      let _ :=
        M.call (|
          M.get_name (| "require" |),
          [
            M.get_name (| "b" |)
          ]
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            Value.Integer 1,
            Value.Integer 2
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [flag] =>
      let _ :=
        TryStatement M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "g"
          |),
          [
            M.get_name (| "flag" |)
          ]
        |) TryCatchClause  (* Beginning of a node! *)
id: 35
src: 222:16:0
nodeType: ParameterList
parameters: Definition a : Value.t :=
          undefined., Definition b : Value.t :=
          undefined.
 let _ :=
          M.assign (|
            "=",
            Value.Tuple [
              M.get_name (| "x" |),
              M.get_name (| "y" |)
            ],
            Value.Tuple [
              M.get_name (| "a" |),
              M.get_name (| "b" |)
            ]
          |) in
        Value.Tuple [], TryCatchClause   let _ :=
          M.assign (|
            "=",
            Value.Tuple [
              M.get_name (| "x" |),
              M.get_name (| "y" |)
            ],
            Value.Tuple [
              Value.Integer 9,
              Value.Integer 10
            ]
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
