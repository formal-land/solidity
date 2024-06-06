(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        let _ :=
          M.assign (|
            "=",
            M.get_name (| "x" |),
            Value.Integer 0xffff
          |) in
        let _ :=
          M.assign (|
            "+=",
            M.get_name (| "x" |),
            Value.Integer 32
          |) in
        let _ :=
          M.assign (|
            "<<=",
            M.get_name (| "x" |),
            Value.Integer 8
          |) in
        let _ :=
          M.assign (|
            ">>=",
            M.get_name (| "x" |),
            Value.Integer 16
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
