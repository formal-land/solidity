(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct gas *)

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
          M.define (|
            [ "x" ],
            Value.Default
          |) in
        Value.Tuple [], TryCatchClause Error (* Beginning of a node! *)
id: 21
src: 157:15:0
nodeType: ParameterList
parameters: Definition  : Value.t :=
          undefined.
 let _ :=
           in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
