(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv1 *)

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [_b] =>
      let _ :=
        if M.get_name (| "_b" |) then
          M.return_ (|
            Value.Integer 1
          |)
        else
          M.return_ (|
            Value.Integer 0
          |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [_in] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "_out" |),
          M.get_name (| "_in" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
