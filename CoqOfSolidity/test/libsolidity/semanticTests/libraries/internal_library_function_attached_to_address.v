(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition equals (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.


(* Contract *)
Module C.
  Axiom using : M.usingLibrary (|
      Some (Ty.path "address"),
      UsingKind.Local,
      "L"
    |).

  Definition foo (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "a" |),
              "equals"
            |),
            [
              M.get_name (| "b" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
