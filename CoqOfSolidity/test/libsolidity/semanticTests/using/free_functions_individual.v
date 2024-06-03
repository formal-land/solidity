(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Axiom using : M.usingFunctions (|
    Some (Ty.path "uint"),
    UsingKind.Local,
    [
    UsingFunction.Function "zero",
  ]
  |).

(* Contract *)
Module C.
  Axiom using : M.usingFunctions (|
      Some (Ty.path "uint"),
      UsingKind.Local,
      [
      UsingFunction.Function "id",
    ]
    |).

  Definition f (α : list Value.t) : M :=
    match α with
    | [z] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "z" |),
              "id"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [z] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "z" |),
              "zero"
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.


Definition id (α : list Value.t) : M :=
  match α with
  | [x] =>
    let _ :=
      M.return_ (|
        M.get_name (| "x" |)
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.

Definition zero (α : list Value.t) : M :=
  match α with
  | [_] =>
    let _ :=
      M.return_ (|
        Value.Integer 0
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.