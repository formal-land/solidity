(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  Definition data : Value.t :=
    undefined.

  Definition set (α : list Value.t) : M :=
    match α with
    | [_data] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "data" |),
          M.get_name (| "_data" |)
        |) in
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "data" |),
            "length"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition get (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "data" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
