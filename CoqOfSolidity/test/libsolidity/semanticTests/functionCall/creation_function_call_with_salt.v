(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition i : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [newI] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "i" |),
          M.get_name (| "newI" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.


(* Contract *)
Module D.
  Definition c : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [v] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.call (|
            FunctionCallOptions NewExpression Ty.path "C"
 [salt, ] Value.String "abc"
,
            [
              M.get_name (| "v" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "c" |),
              "i"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
