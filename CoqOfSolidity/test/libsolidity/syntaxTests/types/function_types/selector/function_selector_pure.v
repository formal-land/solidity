(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Interface *)
Module A.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.
End A.

(* Contract *)
Module B.
  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B.

(* Contract *)
Module C.
  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition s1 : Value.t :=
    M.member_access (|
      M.member_access (|
        M.get_name (| "A" |),
        "f"
      |),
      "selector"
    |).

  Definition s2 : Value.t :=
    M.member_access (|
      M.member_access (|
        M.get_name (| "B" |),
        "g"
      |),
      "selector"
    |).

  Definition s3 : Value.t :=
    M.member_access (|
      M.member_access (|
        M.get_name (| "this" |),
        "h"
      |),
      "selector"
    |).

  Definition s4 : Value.t :=
    M.member_access (|
      M.member_access (|
        M.get_name (| "super" |),
        "g"
      |),
      "selector"
    |).
End C.
