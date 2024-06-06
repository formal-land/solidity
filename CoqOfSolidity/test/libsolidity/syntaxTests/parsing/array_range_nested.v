(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        IndexRangeAccess M.index_access (|
          M.get_name (| "x" |),
          Some (Value.Integer 0)
        |) Value.Integer 1 Value.Integer 2
 in
      let _ :=
        M.define (|
          [ "a" ],
          M.index_access (|
            IndexRangeAccess IndexRangeAccess IndexRangeAccess IndexRangeAccess M.index_access (|
              M.get_name (| "x" |),
              Some (Value.Integer 0)
            |) Value.Integer 1 Value.Integer 2
 Value.Integer 1 Value.Integer 2
 Value.Integer 1 
 Value.Integer 3 
,
            Some (Value.Integer 0)
          |)
        |) in
      let _ :=
        M.define (|
          [ "b" ],
          M.index_access (|
            IndexRangeAccess IndexRangeAccess IndexRangeAccess IndexRangeAccess M.index_access (|
              M.get_name (| "x" |),
              Some (Value.Integer 1)
            |) Value.Integer 1 
 Value.Integer 3 Value.Integer 4
 Value.Integer 1 
 Value.Integer 2 Value.Integer 3
,
            Some (Value.Integer 0)
          |)
        |) in
      let _ :=
        M.get_name (| "a" |) in
      let _ :=
        M.get_name (| "b" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
