(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Struct S *)

(* Library *)
Module L.
  Definition reverse (α : list Value.t) : M :=
    match α with
    | [_s] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.member_access (|
              M.get_name (| "_s" |),
              "y"
            |),
            M.member_access (|
              M.get_name (| "_s" |),
              "x"
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.


(* Contract *)
Module C.
  Definition test (α : list Value.t) : M :=
    match α with
    | [_, _s, _] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "L" |),
              "reverse"
            |),
            [
              M.get_name (| "_s" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
