(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Interface *)
Module I.
  (* Enum Direction *)
End I.


(* Contract *)
Module D.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.member_access (|
              M.get_name (| "I" |),
              "Direction"
            |),
            "Left"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
