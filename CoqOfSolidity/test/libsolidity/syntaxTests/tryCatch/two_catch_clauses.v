(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        TryStatement M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |),
          []
        |) TryCatchClause   let _ :=
           in
        Value.Tuple [], TryCatchClause Error (* Beginning of a node! *)
id: 14
src: 105:17:0
nodeType: ParameterList
parameters: Definition x : Value.t :=
          undefined.
 let _ :=
          M.get_name (| "x" |) in
        Value.Tuple [], TryCatchClause  (* Beginning of a node! *)
id: 21
src: 157:16:0
nodeType: ParameterList
parameters: Definition x : Value.t :=
          undefined.
 let _ :=
          M.get_name (| "x" |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
