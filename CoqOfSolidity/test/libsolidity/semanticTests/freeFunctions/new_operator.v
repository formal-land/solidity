(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition x : Value.t :=
    Value.Integer 2.
End C.


Definition test (α : list Value.t) : M :=
  match α with
  | [] =>
    let _ :=
      M.return_ (|
        M.call (|
          M.member_access (|
            Value.Tuple [
              M.call (|
                NewExpression Ty.path "C"
,
                []
              |)
            ],
            "x"
          |),
          []
        |)
      |) in
    Value.Tuple []
  | _ => M.impossible "invalid number of parameters"
  end.

(* Contract *)
Module D.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.get_name (| "test" |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
