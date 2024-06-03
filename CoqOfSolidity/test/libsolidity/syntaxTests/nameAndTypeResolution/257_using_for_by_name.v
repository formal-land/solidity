(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module D.
  (* Struct s *)

  Definition mul (α : list Value.t) : M :=
    match α with
    | [self, x] =>
      let _ :=
        M.return_ (|
          M.assign (|
            "*=",
            M.member_access (|
              M.get_name (| "self" |),
              "a"
            |),
            M.get_name (| "x" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.


(* Contract *)
Module C.
  Axiom using : M.usingLibrary (|
      Some (Ty.path "D.s"),
      UsingKind.Local,
      "D"
    |).

  Definition x : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "x" |),
              "mul"
            |),
            [
              M.get_name (| "a" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
