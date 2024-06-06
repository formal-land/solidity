(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "now" ],
          M.member_access (|
            M.get_name (| "block" |),
            "timestamp"
          |)
        |) in
      let _ :=
        M.get_name (| "now" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
