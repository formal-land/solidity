(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module base.
  (* Event e *)
End base.

(* Contract *)
Module c.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        EmitStatement M.call (|
          M.get_name (| "e" |),
          [
            Value.Integer 2,
            Value.String "abc",
            Value.Bool true
          ]
        |)
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
