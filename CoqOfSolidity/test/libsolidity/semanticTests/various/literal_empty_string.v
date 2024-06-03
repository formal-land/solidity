(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition x : Value.t :=
    undefined.

  Definition a : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [_x, _a] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.get_name (| "_x" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.get_name (| "_a" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |),
          [
            Value.String "",
            Value.Integer 2
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
