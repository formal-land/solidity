(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma solidity>=0.6.0 *)

(* Contract *)
Module C.
  Definition h (α : list Value.t) : M :=
    match α with
    | [n] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.bin_op (|
              "+",
              M.bin_op (|
                "+",
                M.index_access (|
                  M.get_name (| "n" |),
                  Some (Value.Integer 0)
                |),
                M.index_access (|
                  M.get_name (| "n" |),
                  Some (Value.Integer 1)
                |)
              |),
              M.index_access (|
                M.get_name (| "n" |),
                Some (Value.Integer 2)
              |)
            |),
            M.index_access (|
              M.get_name (| "n" |),
              Some (Value.Integer 3)
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition i (α : list Value.t) : M :=
    match α with
    | [n] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "*",
            M.call (|
              M.member_access (|
                M.get_name (| "this" |),
                "h"
              |),
              [
                M.get_name (| "n" |)
              ]
            |),
            Value.Integer 2
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
