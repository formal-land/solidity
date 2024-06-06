(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.

(* Contract *)
Module D.
  Definition h (α : list Value.t) : M :=
    match α with
    | [b] =>
      let _ :=
        Value.Tuple [
          Conditional M.get_name (| "b" |) M.member_access (|
            M.get_name (| "C" |),
            "f"
          |) M.member_access (|
            M.get_name (| "C" |),
            "g"
          |)

        ] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
