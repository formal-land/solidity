(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  (* Struct S *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [a, s1, b] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r1" |),
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r2" |),
          M.member_access (|
            M.index_access (|
              M.get_name (| "s1" |),
              Some (Value.Integer 0)
            |),
            "c"
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "r3" |),
          M.get_name (| "b" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
