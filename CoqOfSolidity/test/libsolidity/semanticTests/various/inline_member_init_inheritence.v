(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Base.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition m_base : Value.t :=
    Value.Integer 5.

  Definition getBMember (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "m_base" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Base.

(* Contract *)
Module Derived.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition m_derived : Value.t :=
    Value.Integer 6.

  Definition getDMember (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "m_derived" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Derived.
