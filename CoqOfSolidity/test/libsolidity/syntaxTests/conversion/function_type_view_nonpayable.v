(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition dummy : Value.t :=
    undefined.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.get_name (| "dummy" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "g" ],
          M.member_access (|
            M.get_name (| "this" |),
            "h"
          |)
        |) in
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "g" |),
            "selector"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
