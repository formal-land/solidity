(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

Definition a : Value.t :=
  Value.String "".
Definition b : Value.t :=
  hexString.
Definition c : Value.t :=
  Value.String "hello".
Definition x : Value.t :=
  Value.Integer 56.
(* Enum ActionChoices *)
Definition choices : Value.t :=
  M.member_access (|
    M.get_name (| "ActionChoices" |),
    "GoRight"
  |).
Definition st : Value.t :=
  Value.String "abc �__".
(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "a" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "b" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            Ty.path "bytes",
            [
              M.get_name (| "c" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition i (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.get_name (| "x" |),
            M.get_name (| "choices" |),
            M.get_name (| "st" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
