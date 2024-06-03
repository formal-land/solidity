(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module A.
  (* Event e *)
End A.


(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        EmitStatement M.call (|
          M.member_access (|
            M.get_name (| "A" |),
            "e"
          |),
          [
            Value.Integer 2,
            Value.String "abc"
          ]
        |)
 in
      let _ :=
        EmitStatement M.call (|
          M.member_access (|
            M.get_name (| "A" |),
            "e"
          |),
          [
            Value.String "abc",
            Value.Integer 8
          ]
        |)
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
