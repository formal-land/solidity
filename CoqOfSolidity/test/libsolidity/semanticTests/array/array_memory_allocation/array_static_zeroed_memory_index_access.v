(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition test1 : Value.t :=
    undefined.

  Definition test2 : Value.t :=
    undefined.

  Definition test3 : Value.t :=
    undefined.

  Definition test4 : Value.t :=
    undefined.

  Definition test5 : Value.t :=
    undefined.

  Definition test6 : Value.t :=
    undefined.

  Definition test7 : Value.t :=
    undefined.

  Definition map : Value.t :=
    undefined.

  Definition set (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "map" |),
            Some (M.get_name (| "s" |))
          |),
          Value.Integer 0
        |) in
      let _ :=
        M.define (|
          [ "x" ],
          Value.Default
        |) in
      let _ :=
        M.return_ (|
          M.index_access (|
            M.get_name (| "x" |),
            Some (Value.Integer 2)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
