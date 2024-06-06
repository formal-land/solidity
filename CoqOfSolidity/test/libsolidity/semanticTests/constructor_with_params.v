(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition i : Value.t :=
    undefined.

  Definition k : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [newI, newK] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "i" |),
          M.get_name (| "newI" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "k" |),
          M.get_name (| "newK" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
