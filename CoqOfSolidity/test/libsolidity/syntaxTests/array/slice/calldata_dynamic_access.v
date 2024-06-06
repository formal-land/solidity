(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.index_access (|
          IndexRangeAccess M.get_name (| "x" |) Value.Integer 1 Value.Integer 2
,
          Some (Value.Integer 0)
        |) in
      let _ :=
        M.index_access (|
          IndexRangeAccess M.get_name (| "x" |) Value.Integer 1 
,
          Some (Value.Integer 0)
        |) in
      let _ :=
        M.index_access (|
          IndexRangeAccess IndexRangeAccess M.get_name (| "x" |) Value.Integer 1 
 Value.Integer 1 Value.Integer 2
,
          Some (Value.Integer 0)
        |) in
      let _ :=
        M.index_access (|
          IndexRangeAccess IndexRangeAccess M.get_name (| "x" |) Value.Integer 1 Value.Integer 2
 Value.Integer 1 
,
          Some (Value.Integer 0)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
