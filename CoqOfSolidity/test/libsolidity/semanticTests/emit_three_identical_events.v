(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Event Terminated *)

  Definition terminate (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "Terminated" |),
          []
        |)
 in
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "Terminated" |),
          []
        |)
 in
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "Terminated" |),
          []
        |)
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
