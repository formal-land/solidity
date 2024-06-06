(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Struct S *)
(* Contract *)
Module A.
  Definition test (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "v" |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "s" |),
          Value.String "test"
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End A.

(* Contract *)
Module X.
  Definition test : Value.t :=
    undefined.

  Definition set (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.get_name (| "test" |),
              Some (Value.Integer 42)
            |),
            "v"
          |),
          Value.Integer 2
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.index_access (|
              M.get_name (| "test" |),
              Some (Value.Integer 42)
            |),
            "s"
          |),
          Value.String "statevar"
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End X.
