(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

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
        M.bin_op (|
          ">",
          M.member_access (|
            M.member_access (|
              M.call (|
                M.get_name (| "type" |),
                [
                  M.get_name (| "C" |)
                ]
              |),
              "runtimeCode"
            |),
            "length"
          |),
          Value.Integer 20
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
