(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module Arst.
  (* Enum Foo *)
End Arst.

(* Contract *)
Module Tsra.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.member_access (|
          M.get_name (| "Arst" |),
          "Foo"
        |) in
      let _ :=
        M.return_ (|
          Value.Integer 1
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Tsra.
