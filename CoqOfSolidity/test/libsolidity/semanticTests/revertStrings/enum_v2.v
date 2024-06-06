(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  (* Enum E *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [arr] =>
      let _ :=
        M.index_access (|
          M.get_name (| "arr" |),
          Some (Value.Integer 1)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
