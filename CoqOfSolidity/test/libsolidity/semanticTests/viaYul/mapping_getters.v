(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition m1 : Value.t :=
    undefined.

  Definition m2 : Value.t :=
    undefined.

  Definition set (α : list Value.t) : M :=
    match α with
    | [k, v] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "m1" |),
            Some (M.get_name (| "k" |))
          |),
          M.get_name (| "v" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition set (α : list Value.t) : M :=
    match α with
    | [k1, k2, v] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "m2" |),
              Some (M.get_name (| "k1" |))
            |),
            Some (M.get_name (| "k2" |))
          |),
          M.get_name (| "v" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
