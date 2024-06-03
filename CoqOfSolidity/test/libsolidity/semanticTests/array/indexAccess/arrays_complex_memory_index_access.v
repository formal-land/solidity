(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  Definition set (α : list Value.t) : M :=
    match α with
    | [_data, a, b] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "l" |),
          M.member_access (|
            M.get_name (| "_data" |),
            "length"
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "e" |),
          M.index_access (|
            M.index_access (|
              M.get_name (| "_data" |),
              Some (M.get_name (| "a" |))
            |),
            Some (M.get_name (| "b" |))
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
