(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Event E *)
End C.

(* Contract *)
Module D.
  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        EmitStatement M.call (|
          M.member_access (|
            M.get_name (| "C" |),
            "E"
          |),
          []
        |)
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
