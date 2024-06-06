(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Integer 1
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Integer 2
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test (α : list Value.t) : M :=
    match α with
    | [b] =>
      let _ :=
        M.return_ (|
          M.call (|
            Value.Tuple [
              Conditional M.get_name (| "b" |) M.member_access (|
                M.get_name (| "L" |),
                "f"
              |) M.member_access (|
                M.get_name (| "C" |),
                "g"
              |)

            ],
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
