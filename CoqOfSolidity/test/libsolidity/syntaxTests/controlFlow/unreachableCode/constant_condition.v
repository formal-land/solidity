(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        if Value.Bool false then
          let _ :=
            M.return_ (|
              Value.Tuple []
            |) in
          Value.Tuple []
        else
          Value.Tuple [] in
      let _ :=
        M.return_ (|
          Value.Tuple []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
